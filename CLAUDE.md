# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

@AGENTS.md

## Commands

- `npm run dev` — start Next.js dev server (http://localhost:3000)
- `npm run build` — production build
- `npm run start` — run the production build
- `npm run lint` — ESLint (flat config, extends `eslint-config-next/core-web-vitals` + `/typescript`)

No test runner is configured.

## Stack & versions

- **Next.js 16.2.4** with the App Router, **React 19.2**, **TypeScript 5**
- **Tailwind v4** via `@tailwindcss/postcss` (no `tailwind.config.*` file — configured through `app/globals.css` and `postcss.config.mjs`)
- **shadcn/ui** scaffolding on top of **@base-ui/react** primitives (style `base-vega`, see [components.json](components.json)) — the `Button` in [components/ui/button.tsx](components/ui/button.tsx) wraps `@base-ui/react/button`, not Radix

**Important:** Per [AGENTS.md](AGENTS.md), Next.js 16 and React 19 have APIs and conventions that may differ from what's in your training data. Before writing code that touches framework APIs, check `node_modules/next/dist/docs/` for the version actually installed.

## Path aliases

`@/*` maps to the repo root (see [tsconfig.json](tsconfig.json)). shadcn aliases in [components.json](components.json):
- `@/components`, `@/components/ui`, `@/lib`, `@/lib/utils`, `@/hooks`

## Architecture

This is a rebuild of [barium.dfxx.fun](https://barium.dfxx.fun/) ("Kalender Prestasi Mahasiswa") — see [plan.md](plan.md) for the full design doc. Key decisions that shape the code:

- **No database.** The data source is a published Google Sheets CSV (`SHEET_CSV_URL` in `.env.local`). A ~260-row `events` table was migrated into the sheet; non-technical admins edit events by editing the sheet.
- **Fetch + cache pattern.** `lib/fetchEvents.ts` calls the CSV URL with `fetch(url, { next: { revalidate: 3600 } })`, parses rows, filters `isActive`, and returns `Event[]`. An hourly revalidation is the cache-invalidation story — there is no webhook.
- **Server Components consume the data directly.** The homepage renders sections (hero, "Kegiatan Bulan Ini", "Kegiatan Terbaru", calendar) from the fetched events. `app/api/events/route.ts` exposes the same data with `month`/`category`/`free` query filters for client-side or external callers.
- **`deadline` is the registration deadline, not an event start date.** Sorting and "this month" filters are deadline-based.
- **Price normalization:** blank or `0` in the sheet both mean Free; `lib/utils.ts::formatPrice` renders `"Free"` vs. IDR via `Intl.NumberFormat('id-ID')`.
- **Image hosts** must be whitelisted in `next.config.ts` `images.remotePatterns` before `next/image` can load them (existing storage at `barium.dfxx.fun/storage/**`, plus any new CDN used in column E).

As of now only scaffolding exists: [app/page.tsx](app/page.tsx) is still the default create-next-app placeholder, [lib/utils.ts](lib/utils.ts) has only `cn()`, and the `api/events` route, fetcher, types, and event components described in the plan have not been built yet.

## Design reference

[kalender-barium-mockup.jsx](kalender-barium-mockup.jsx) is a self-contained single-file React mockup of the target UI — nav, hero, filter bar, event `Card`, `CalendarGrid`, search, and the events/kalender tab switch. Treat it as the visual/UX spec when building the real components:

- **Don't copy it directly.** It uses inline `style={{...}}` with a hard-coded blue palette (`B[50]`..`B[700]`) and hard-coded event data. The production code should use Tailwind v4 classes (with `cn()`), pull events from `fetchEvents()`, and load data via Server Components per the architecture above.
- **Reuse the visuals, labels, and interactions**: Indonesian copy (`Kegiatan`, `Kalender`, `Gratis`, `Hari ini`, `Nh lagi`), the urgency badge rules (`days <= 2` red, `<= 5` orange), card aspect ratio, hover/scale behavior, calendar dot markers, "today" highlight (`TODAY = 2026-04-22`), and the `Semua / LKTIN / Essay / ...` category pills.
- The mockup's `fmt`, `fmtDate`, and `daysLeft` helpers correspond to the planned `lib/utils.ts` formatters — port them, but use `Intl.NumberFormat('id-ID')` for price (per plan) rather than the mockup's `"Rp" + toLocaleString`.

## Conventions

- Plan before editing: understand the problem, map the impact, then code.
- Keep solutions simple and direct. Avoid premature abstraction.
- Use TypeScript types for shared data shapes, especially event data parsed from CSV.
- Class merging: always compose Tailwind classes with `cn()` from [lib/utils.ts](lib/utils.ts) (uses `clsx` + `tailwind-merge`).
- Fonts are loaded in [app/layout.tsx](app/layout.tsx) via `next/font/google` (Geist, Geist Mono, Inter) and exposed as CSS variables — use the variables, don't re-import fonts.
- Separate reusable UI into `components/` only when there is clear reuse or page readability benefit.
- Treat manual assumptions about Next.js 16 and React 19 behavior as risky; verify against local docs first.

