# Repository Instructions

This is a Next.js application, not a Laravel/Flutter project. Use the project-specific rules below over generic framework assumptions.

<!-- BEGIN:nextjs-agent-rules -->
# This is NOT the Next.js you know

This version has breaking changes - APIs, conventions, and file structure may all differ from your training data. Read the relevant guide in `node_modules/next/dist/docs/` before writing any code. Heed deprecation notices.
<!-- END:nextjs-agent-rules -->

## Commands

- `npm run dev` - start the Next.js dev server at `http://localhost:3000`
- `npm run build` - production build
- `npm run start` - run the production build
- `npm run lint` - ESLint

No test runner is configured.

## Stack

- Next.js 16.2.4 with App Router
- React 19.2
- TypeScript 5
- Tailwind v4 through `@tailwindcss/postcss`
- shadcn/ui scaffolding with `@base-ui/react` primitives

Before changing framework APIs, read the matching installed docs under `node_modules/next/dist/docs/`.

## Project Architecture

- This rebuilds `barium.dfxx.fun` as "Kalender Prestasi Mahasiswa".
- Use `kalender-barium-mockup.jsx` as the visual and interaction reference for the homepage UI.
- There is no database. Events come from a published Google Sheets CSV configured by `SHEET_CSV_URL` in `.env.local`.
- Event fetching should use the Next.js fetch cache pattern with hourly revalidation.
- Server Components should consume event data directly where possible.
- `app/api/events/route.ts` should expose event data for clients or external callers when implemented.
- `deadline` means registration deadline, not event start date. Sorting and monthly filters are deadline-based.
- Blank price or `0` means free.
- `next/image` remote hosts must be listed in `next.config.ts` `images.remotePatterns`.

## Conventions

- Plan before editing: understand the problem, map the impact, then code.
- Keep solutions simple and direct. Avoid premature abstraction.
- Before implementing UI, review `kalender-barium-mockup.jsx` and translate its intent into idiomatic Next.js, TypeScript, Tailwind v4, and existing components.
- Do not copy the mockup directly as-is if it conflicts with project conventions; use it for layout, spacing, colors, states, labels, and interactions.
- Use TypeScript types for shared data shapes, especially event data parsed from CSV.
- Compose Tailwind classes with `cn()` from `lib/utils.ts`.
- Preserve existing font loading in `app/layout.tsx`; do not re-import fonts ad hoc.
- Separate reusable UI into `components/` only when there is clear reuse or page readability benefit.
- Treat manual assumptions about Next.js 16 and React 19 behavior as risky; verify against local docs first.

## UI Reference

- `kalender-barium-mockup.jsx` is a standalone React mockup, not production source.
- It defines the intended homepage direction: blue palette, event cards, poster aspect ratio, urgent deadline badge, category filters, search/filter interactions, Indonesian copy, and price formatting.
- Production code should replace inline styles and mock data with Tailwind classes, typed event data, server-side CSV fetching, and reusable components where useful.

## Current State

- `app/page.tsx` is still the create-next-app placeholder.
- `lib/utils.ts` currently only provides `cn()`.
- The CSV event fetcher, event types, API route, and event UI described in `plan.md` have not been built yet.
