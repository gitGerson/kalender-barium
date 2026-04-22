"use client";

import { useState, useMemo } from "react";
import type { Event } from "@/lib/types";
import { FilterBar, type Filters } from "./FilterBar";
import { EventGrid } from "./EventGrid";

interface Props {
  events: Event[];
}

function formatMonthKey(key: string): string {
  const [year, month] = key.split("-");
  return new Date(Number(year), Number(month) - 1, 1).toLocaleDateString(
    "id-ID",
    { month: "long", year: "numeric" }
  );
}

const DEFAULT_FILTERS: Filters = { category: "Semua", freeOnly: false, search: "" };

function isFilterActive(f: Filters) {
  return f.category !== "Semua" || f.freeOnly || f.search !== "";
}

export function MonthEventSection({ events }: Props) {
  const months = useMemo(() => {
    const seen = new Set<string>();
    events.forEach((e) => seen.add(e.deadline.toISOString().slice(0, 7)));
    return Array.from(seen).sort();
  }, [events]);

  const currentKey = new Date().toISOString().slice(0, 7);
  const defaultKey = months.includes(currentKey)
    ? currentKey
    : (months[months.length - 1] ?? "");

  const [selected, setSelected] = useState(defaultKey);
  const [filters, setFilters] = useState<Filters>(DEFAULT_FILTERS);

  const visible = useMemo(() => {
    // when any filter is active, search across all events ignoring the month
    const base = isFilterActive(filters)
      ? events
      : events.filter((e) => e.deadline.toISOString().startsWith(selected));

    return base.filter((e) => {
      if (filters.category !== "Semua" && e.category !== filters.category) return false;
      if (filters.freeOnly && e.price !== 0) return false;
      if (filters.search && !e.title.toLowerCase().includes(filters.search.toLowerCase())) return false;
      return true;
    });
  }, [events, selected, filters]);

  const filterActive = isFilterActive(filters);

  return (
    <section className="py-10">
      <div className="mb-4 flex flex-wrap items-center justify-between gap-2">
        <h2 className="text-lg font-bold text-zinc-900">
          {filterActive ? (
            <>Hasil pencarian <span className="text-blue-500">semua bulan</span></>
          ) : (
            <>Kegiatan Bulan <span className="text-blue-500">{selected ? formatMonthKey(selected) : "—"}</span></>
          )}
        </h2>

        <select
          value={selected}
          onChange={(e) => setSelected(e.target.value)}
          disabled={filterActive}
          className="rounded-lg border border-blue-100 bg-white px-3 py-1.5 text-sm font-medium text-zinc-700 shadow-sm focus:border-blue-400 focus:outline-none focus:ring-2 focus:ring-blue-200 disabled:opacity-40"
        >
          {months.map((m) => (
            <option key={m} value={m}>
              {formatMonthKey(m)}
            </option>
          ))}
        </select>
      </div>

      <div className="mb-6">
        <FilterBar onChange={setFilters} />
      </div>

      <div className="mb-2 flex justify-end">
        <span className="text-sm text-zinc-400">{visible.length} kegiatan</span>
      </div>

      <EventGrid events={visible} title="" />
    </section>
  );
}
