# Kalender Barium

Kalender Prestasi Mahasiswa — kumpulan kegiatan, kompetisi, dan pelatihan untuk mahasiswa, dikelola oleh H.M.P.T.K. UNNES.

Live: [kalender-barium.dfxx.fun](https://kalender-barium.dfxx.fun)

## About

Kalender Barium is a student achievement calendar that aggregates competitions, trainings, and events with their registration deadlines. Admins manage event data directly through a Google Sheets spreadsheet — no database or backend required.

Key features:
- **Event list view** — browse events by month with search and category/free filters
- **Calendar view** — monthly grid with deadline markers; click a date to see that day's events
- **Urgency badges** — highlights deadlines within 5 days (orange) or 2 days (red)
- **Hourly data refresh** — events are fetched from Google Sheets CSV and cached for 1 hour via Next.js fetch cache

## Tech Stack

- **Next.js 16** (App Router) + **React 19**
- **TypeScript 5**
- **Tailwind CSS v4**
- **Google Sheets** as the data source (published CSV)
- **Vercel Analytics** + **Speed Insights** + **Google Analytics**

## Getting Started

Copy the environment file and fill in your Google Sheets CSV URL:

```bash
cp .env.local.example .env.local
```

`.env.local` variables:

| Variable | Description |
|---|---|
| `SHEET_CSV_URL` | Published CSV URL from Google Sheets (`File → Share → Publish to web → CSV`) |
| `NEXT_PUBLIC_GA_ID` | Google Analytics Measurement ID (`G-XXXXXXXXXX`) |

Then run the dev server:

```bash
npm install
npm run dev
```

Open [http://localhost:3000](http://localhost:3000).

## Google Sheets Data Format

The spreadsheet must have these columns (row 1 = header):

| Column | Field | Notes |
|---|---|---|
| A | `title` | Event name |
| B | `category` | e.g. LKTIN, Essay, PKM |
| C | `deadline` | Registration deadline (DD/MM/YYYY) |
| D | `price` | blank or `0` = Free; otherwise e.g. `Rp75.000` |
| E | `imageUrl` | Poster image URL |
| F | `linkInfo` | Info/detail page URL |
| G | `linkReg` | Registration URL |
| H | `isActive` | `TRUE` to show, `FALSE` to hide |

## Commands

```bash
npm run dev      # start dev server at http://localhost:3000
npm run build    # production build
npm run start    # run production build
npm run lint     # ESLint
```

## Deployment

Deploy to Vercel and set the environment variables (`SHEET_CSV_URL`, `NEXT_PUBLIC_GA_ID`) in the Vercel project settings.

## Developer

Built by [@gerson.m5](https://instagram.com/gerson.m5) · [Contact via WhatsApp](https://wa.me/6285156106221)
