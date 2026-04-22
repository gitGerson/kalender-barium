"use client";

import { useState, useMemo } from "react";
import type { Event } from "@/lib/types";
import { EventCard } from "./EventCard";
import { FilterBar, type Filters } from "./FilterBar";

interface Props {
  events: Event[];
  title: string;
  showFilters?: boolean;
}

export function EventGrid({ events, title, showFilters = false }: Props) {
  const [filters, setFilters] = useState<Filters>({
    category: "Semua",
    freeOnly: false,
    search: "",
  });

  const visible = useMemo(() => {
    return events.filter((e) => {
      if (filters.category !== "Semua" && e.category !== filters.category)
        return false;
      if (filters.freeOnly && e.price !== 0) return false;
      if (
        filters.search &&
        !e.title.toLowerCase().includes(filters.search.toLowerCase())
      )
        return false;
      return true;
    });
  }, [events, filters]);

  return (
    <section className="py-10">
      {title && (
        <div className="mb-6 flex items-center justify-between">
          <h2 className="text-lg font-bold text-zinc-900">{title}</h2>
          <span className="text-sm text-zinc-400">{visible.length} kegiatan</span>
        </div>
      )}

      {showFilters && (
        <div className="mb-6">
          <FilterBar onChange={setFilters} />
        </div>
      )}

      {visible.length === 0 ? (
        <p className="py-12 text-center text-sm text-zinc-400">
          Tidak ada kegiatan yang cocok.
        </p>
      ) : (
        <div className="grid grid-cols-2 gap-3 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-5">
          {visible.map((event, i) => (
            <div
              key={event.id}
              className="animate-in fade-in slide-in-from-bottom-3 fill-mode-both"
              style={{ animationDelay: `${i * 40}ms`, animationDuration: "350ms" }}
            >
              <EventCard event={event} priority={i === 0} />
            </div>
          ))}
        </div>
      )}
    </section>
  );
}
