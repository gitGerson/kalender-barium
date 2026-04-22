"use client";

import { useState } from "react";
import { cn } from "@/lib/utils";
import { CATEGORIES } from "@/lib/types";

export interface Filters {
  category: string;
  freeOnly: boolean;
  search: string;
}

interface Props {
  onChange: (filters: Filters) => void;
}

export function FilterBar({ onChange }: Props) {
  const [category, setCategory] = useState("Semua");
  const [freeOnly, setFreeOnly] = useState(false);
  const [search, setSearch] = useState("");

  function update(next: Partial<Filters> & { category?: string }) {
    const merged = {
      category: next.category ?? category,
      freeOnly: next.freeOnly ?? freeOnly,
      search: next.search ?? search,
    };
    if (next.category !== undefined) setCategory(next.category);
    if (next.freeOnly !== undefined) setFreeOnly(next.freeOnly);
    if (next.search !== undefined) setSearch(next.search);
    onChange(merged);
  }

  const pills = ["Semua", ...CATEGORIES];

  return (
    <div className="flex flex-col gap-2.5">
      {/* search + free toggle on one row */}
      <div className="flex items-center gap-2">
        <input
          type="search"
          placeholder="Cari kegiatan..."
          value={search}
          onChange={(e) => update({ search: e.target.value })}
          className="min-w-0 flex-1 rounded-lg border border-blue-100 bg-white px-3 py-2 text-sm text-zinc-800 placeholder:text-zinc-400 focus:border-blue-400 focus:outline-none focus:ring-2 focus:ring-blue-200"
        />
        <label className="flex shrink-0 cursor-pointer items-center gap-1.5 text-xs font-medium text-zinc-500">
          <input
            type="checkbox"
            checked={freeOnly}
            onChange={(e) => update({ freeOnly: e.target.checked })}
            className="accent-blue-500"
          />
          Gratis
        </label>
      </div>

      {/* category pills — horizontal scroll on mobile, wrap on larger screens */}
      <div className="flex gap-1.5 overflow-x-auto pb-1 sm:flex-wrap sm:overflow-visible sm:pb-0 [scrollbar-width:none] [&::-webkit-scrollbar]:hidden">
        {pills.map((cat) => (
          <button
            key={cat}
            onClick={() => update({ category: cat })}
            className={cn(
              "shrink-0 rounded-full px-3 py-1 text-xs font-semibold transition-all duration-150",
              category === cat
                ? "bg-blue-500 text-white shadow-sm"
                : "bg-blue-50 text-blue-600 hover:bg-blue-100"
            )}
          >
            {cat}
          </button>
        ))}
      </div>
    </div>
  );
}
