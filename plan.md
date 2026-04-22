# Kalender Barium — Next.js Rebuild Architecture

> **Project:** Kalender Barium (Kalender Prestasi Mahasiswa)
> **Original site:** https://barium.dfxx.fun/
> **Stack:** Next.js 14+ (App Router) · TypeScript · Tailwind CSS
> **Data source:** Google Sheets (public CSV export)
> **Database:** None — Google Sheets is the single source of truth

---

## 1. Overview

The existing site is powered by a MariaDB database (via Laravel/phpMyAdmin) with ~260 event records. The goal of this rebuild is to:

1. Migrate all event data into a Google Sheets spreadsheet
2. Replace the database with a public Google Sheets CSV feed
3. Rebuild the frontend in Next.js with the same look and sections
4. Allow non-technical admins to add/edit/hide events by editing the sheet only — no database, no admin panel needed

---

## 2. Existing Database Analysis

**Table:** `events` — Database: `u221654202_barium`
**Engine:** InnoDB · MariaDB 11.8.6 · ~260 rows (IDs 7–267)

### Column Map

| Column | Type | Nullable | Notes |
|---|---|---|---|
| `id` | bigint UNSIGNED | NO | Auto-increment primary key |
| `pamflet` | varchar(255) | NO | Image filename only, e.g. `01KNB9VGSFZRNEGSH86G9A2MGS.jpeg` |
| `title` | varchar(255) | NO | Event name |
| `date` | date | NO | **This is the deadline date**, not an event date |
| `price` | decimal(8,2) | YES | `NULL` = Free, `0.00` = Free, number = paid in IDR |
| `link_info` | varchar(255) | YES | Instagram or info URL — almost always present |
| `link_reg` | varchar(255) | YES | Separate registration URL — almost always `NULL` |
| `keterangan` | text | YES | Description/notes — almost always `NULL` |
| `created_at` | timestamp | YES | Row insertion time |
| `updated_at` | timestamp | YES | Last edit time |

### Key Observations

- Images are bare filenames served from `https://barium.dfxx.fun/storage/{pamflet}`
- No `category` column — was never tracked in the original DB
- `price NULL` and `price 0.00` both mean Free — must be normalized
- `link_reg` and `keterangan` are nearly always NULL — low priority fields
- The `date` column is the submission/registration **deadline**, not a start date

---

## 3. Google Sheets Schema

One row = one event. The sheet replaces the database entirely.

### Column Layout

| Col | Header | Source | Example | Notes |
|---|---|---|---|---|
| A | `id` | `id` | `267` | Keep for reference and deduplication |
| B | `title` | `title` | `ReEnergize Summit 2026` | Required |
| C | `deadline` | `date` | `2026-04-14` | ISO format YYYY-MM-DD |
| D | `price` | `price` | `35000` | Number only. 0 or blank = Free |
| E | `image_url` | `pamflet` (constructed) | `https://barium.dfxx.fun/storage/01KNB9...jpeg` | Full URL |
| F | `link_info` | `link_info` | `https://instagram.com/p/...` | Info / Instagram link |
| G | `link_reg` | `link_reg` | `https://linktr.ee/...` | Optional registration URL |
| H | `category` | *(new — fill manually)* | `Essay` | See category list below |
| I | `keterangan` | `keterangan` | Short description | Optional |
| J | `is_active` | *(new)* | `TRUE` | Set `FALSE` to hide without deleting |

### Category Values (Column H)

```
LKTIN · Essay · Poster · Conference · Call for Paper
Seminar · Workshop · Pelatihan K3 · ISO · Business Plan · Infografis
```

Leave blank initially — can be filled in gradually. The app should handle an empty category gracefully.

### Image URL Formula (Column E)

If migrating from the existing storage, use this formula in E2 and drag down:

```
=IF(B2<>"", "https://barium.dfxx.fun/storage/"&A2_pamflet_value, "")
```

Or pre-fill the full URLs during migration using the SQL export query below.

### Publishing the Sheet as CSV

1. Open the sheet → **File → Share → Publish to web**
2. Choose **Sheet1**, format **CSV** → click **Publish**
3. Copy the URL — it looks like:
   ```
   https://docs.google.com/spreadsheets/d/SHEET_ID/export?format=csv&gid=0
   ```
4. Paste into `.env.local` as `SHEET_CSV_URL`

---

## 4. Data Migration

### SQL Export Query

Run this against the existing MariaDB database to produce a CSV-ready result:

```sql
SELECT
  id,
  title,
  DATE_FORMAT(date, '%Y-%m-%d')                          AS deadline,
  COALESCE(price, 0)                                     AS price,
  CONCAT('https://barium.dfxx.fun/storage/', pamflet)   AS image_url,
  link_info,
  IFNULL(link_reg, '')                                   AS link_reg,
  ''                                                     AS category,
  IFNULL(keterangan, '')                                 AS keterangan,
  'TRUE'                                                 AS is_active
FROM events
ORDER BY date ASC;
```

Export as CSV from phpMyAdmin, paste into Google Sheets row 2 onward (row 1 = headers). The only manual work after that is filling in column H (`category`) for each row.

---

## 5. Project Structure

```
kalender-barium/
│
├── app/
│   ├── layout.tsx                  # Root layout — navbar, footer, metadata
│   ├── page.tsx                    # Homepage — hero + all sections
│   ├── globals.css
│   │
│   └── api/
│       └── events/
│           └── route.ts            # GET /api/events — fetch + parse CSV
│
├── components/
│   ├── HeroSection.tsx             # Logo, tagline, CTA buttons
│   ├── EventCard.tsx               # Single event card (image, title, deadline, price)
│   ├── EventGrid.tsx               # Responsive grid of EventCards with section heading
│   ├── CalendarView.tsx            # Monthly calendar with deadline highlights
│   └── FilterBar.tsx               # Filter by category / free-only / month
│
├── lib/
│   ├── fetchEvents.ts              # Core fetch + CSV parse + cache logic
│   ├── types.ts                    # Event TypeScript interface
│   └── utils.ts                    # Date helpers, Rp price formatter, category list
│
├── public/
│   ├── logo.png
│   └── logo3.png
│
├── .env.local
│   └── SHEET_CSV_URL=https://docs.google.com/spreadsheets/d/.../export?format=csv
│
└── next.config.ts                  # Image domain whitelist
```

---

## 6. Data Flow

```
Google Sheets (public CSV)
        │
        │  fetch() with revalidate: 3600
        ▼
  /api/events  (Next.js Route Handler)
        │
        │  parse CSV → Event[]
        │  sort by deadline ASC
        │  filter isActive === true
        ▼
  React Server Components
        │
        ├──▶ HeroSection
        ├──▶ EventGrid ("Kegiatan Bulan Ini")   ← filter: deadline month == current month
        ├──▶ EventGrid ("Kegiatan Terbaru")      ← sort: created_at DESC, last 20
        └──▶ CalendarView                         ← group deadlines by day in current month
```

**Caching strategy:** Next.js `fetch()` with `{ next: { revalidate: 3600 } }` — data refreshes automatically every hour. No database, no cache invalidation needed.

---

## 7. TypeScript Types

```ts
// lib/types.ts

export interface Event {
  id: number;
  title: string;
  deadline: Date;
  price: number;         // 0 = Free (normalized from NULL or 0.00)
  imageUrl: string;      // Full URL
  linkInfo: string;      // Instagram / info link
  linkReg?: string;      // Optional registration URL
  category: string;      // May be empty initially
  keterangan?: string;   // Optional description
  isActive: boolean;     // FALSE = hidden
}

export type Category =
  | 'LKTIN'
  | 'Essay'
  | 'Poster'
  | 'Conference'
  | 'Call for Paper'
  | 'Seminar'
  | 'Workshop'
  | 'Pelatihan K3'
  | 'ISO'
  | 'Business Plan'
  | 'Infografis'
  | '';
```

---

## 8. Core Implementation

### Fetch + Parse (`lib/fetchEvents.ts`)

```ts
import { Event } from './types';

function parseCSVRow(row: string): string[] {
  const result: string[] = [];
  let current = '';
  let inQuotes = false;

  for (const char of row) {
    if (char === '"') {
      inQuotes = !inQuotes;
    } else if (char === ',' && !inQuotes) {
      result.push(current);
      current = '';
    } else {
      current += char;
    }
  }
  result.push(current);
  return result;
}

export async function fetchEvents(): Promise<Event[]> {
  const url = process.env.SHEET_CSV_URL!;

  const res = await fetch(url, {
    next: { revalidate: 3600 },
  });

  if (!res.ok) throw new Error('Failed to fetch events sheet');

  const csv = await res.text();
  const rows = csv.split('\n').slice(1); // skip header row

  return rows
    .map((row): Event | null => {
      if (!row.trim()) return null;

      const [
        id, title, deadline, price, imageUrl,
        linkInfo, linkReg, category, keterangan, isActive,
      ] = parseCSVRow(row);

      if (!title || !deadline) return null;

      return {
        id: Number(id) || 0,
        title: title.trim(),
        deadline: new Date(deadline.trim()),
        price: !price || price.trim() === '' ? 0 : Number(price),
        imageUrl: imageUrl?.trim() || '',
        linkInfo: linkInfo?.trim() || '',
        linkReg: linkReg?.trim() || undefined,
        category: category?.trim() || '',
        keterangan: keterangan?.trim() || undefined,
        isActive: isActive?.trim().toUpperCase() === 'TRUE',
      };
    })
    .filter((e): e is Event => e !== null && e.isActive);
}
```

### API Route (`app/api/events/route.ts`)

```ts
import { NextResponse } from 'next/server';
import { fetchEvents } from '@/lib/fetchEvents';

export async function GET(request: Request) {
  const { searchParams } = new URL(request.url);
  const month = searchParams.get('month');     // e.g. "2026-04"
  const category = searchParams.get('category');
  const freeOnly = searchParams.get('free') === 'true';

  let events = await fetchEvents();

  if (month) {
    events = events.filter(e =>
      e.deadline.toISOString().startsWith(month)
    );
  }

  if (category) {
    events = events.filter(e =>
      e.category.toLowerCase() === category.toLowerCase()
    );
  }

  if (freeOnly) {
    events = events.filter(e => e.price === 0);
  }

  events.sort((a, b) => a.deadline.getTime() - b.deadline.getTime());

  return NextResponse.json(events);
}
```

### Utility Helpers (`lib/utils.ts`)

```ts
// Format price as Rupiah
export function formatPrice(price: number): string {
  if (price === 0) return 'Free';
  return new Intl.NumberFormat('id-ID', {
    style: 'currency',
    currency: 'IDR',
    minimumFractionDigits: 0,
  }).format(price);
}

// Get current month string "YYYY-MM"
export function currentMonth(): string {
  return new Date().toISOString().slice(0, 7);
}

// Filter events to current month
export function filterThisMonth(events: Event[]): Event[] {
  const month = currentMonth();
  return events.filter(e =>
    e.deadline.toISOString().startsWith(month)
  );
}

// Group events by deadline date for calendar view
export function groupByDate(events: Event[]): Record<string, Event[]> {
  return events.reduce((acc, event) => {
    const key = event.deadline.toISOString().slice(0, 10);
    if (!acc[key]) acc[key] = [];
    acc[key].push(event);
    return acc;
  }, {} as Record<string, Event[]>);
}
```

---

## 9. Page Sections

| Section | Indonesian Label | Data Logic |
|---|---|---|
| Hero | — | Static — logo, tagline, CTA buttons |
| This Month's Events | **Kegiatan Bulan Ini** | Filter: `deadline` month == current month, sort by deadline ASC |
| Latest Events | **Kegiatan Terbaru** | All events, sort by `created_at` DESC (or row order), limit 20 |
| Calendar | **Kalender Kegiatan** | Group deadlines by day in current month, highlight days with events |

---

## 10. next.config.ts

Add the image domains that will be used for `next/image`:

```ts
import type { NextConfig } from 'next';

const nextConfig: NextConfig = {
  images: {
    remotePatterns: [
      {
        protocol: 'https',
        hostname: 'barium.dfxx.fun',   // existing storage
        pathname: '/storage/**',
      },
      {
        protocol: 'https',
        hostname: 'drive.google.com',  // if using Google Drive for new images
      },
      {
        protocol: 'https',
        hostname: 'i.imgur.com',       // fallback CDN option
      },
    ],
  },
};

export default nextConfig;
```

---

## 11. Environment Variables

```bash
# .env.local

# Google Sheets public CSV export URL
# File → Share → Publish to web → Sheet1 → CSV
SHEET_CSV_URL=https://docs.google.com/spreadsheets/d/YOUR_SHEET_ID/export?format=csv&gid=0
```

---

## 12. Admin Workflow (No Code Required)

Once deployed, the admin workflow is entirely spreadsheet-based:

| Task | Action in Google Sheets |
|---|---|
| Add new event | Append a new row with all columns filled |
| Hide an event | Set column J (`is_active`) to `FALSE` |
| Update deadline | Edit column C (`deadline`) |
| Update price | Edit column D (`price`) |
| Add new image | Paste the full image URL into column E |
| Add/change category | Edit column H (`category`) |

Changes reflect on the site within **1 hour** (revalidation interval). To force an immediate refresh, redeploy or manually call `revalidatePath('/')` via a webhook.

---

## 13. Differences from Original DB

| Topic | Original DB | New Google Sheets |
|---|---|---|
| Image field | `pamflet` — filename only | `image_url` — full URL |
| Image hosting | `barium.dfxx.fun/storage/` | Any public URL (existing storage, Google Drive, Imgur, CDN) |
| Category | Not tracked | New column H — fill manually |
| Price null handling | `NULL` or `0.00` both = Free | Normalize: blank or `0` = Free |
| Registration link | `link_reg` — almost always NULL | Column G — optional |
| Description | `keterangan` — almost always NULL | Column I — optional |
| Visibility toggle | No mechanism (delete to remove) | Column J `is_active` = FALSE to hide |
| Admin interface | phpMyAdmin / Laravel admin | Google Sheets directly |

---

## 14. Recommended Dependencies

```bash
# Core
npx create-next-app@latest kalender-barium --typescript --tailwind --app

# UI (optional but recommended)
npx shadcn@latest init

# No additional deps needed for CSV parsing — use native fetch + string parsing
```

---

*Document generated: April 2026*
*Based on database export: `u221654202_barium.events` (267 records)*