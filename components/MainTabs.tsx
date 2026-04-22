"use client";

import { useState } from "react";
import type { Event } from "@/lib/types";
import { cn } from "@/lib/utils";
import { MonthEventSection } from "./MonthEventSection";
import { CalendarView } from "./CalendarView";
import { RefreshButton } from "./RefreshButton";

type Tab = "events" | "calendar";

interface Props {
  events: Event[];
}

export function MainTabs({ events }: Props) {
  const [tab, setTab] = useState<Tab>("events");

  return (
    <>
      {/* sticky tab bar */}
      <div className="sticky top-0 z-40 border-b border-blue-100 bg-white">
        <div className="mx-auto flex max-w-6xl items-center px-4 sm:px-6">
          <div className="flex flex-1 justify-center gap-1">
          {(
            [
              { key: "events", label: "Lihat Kegiatan" },
              { key: "calendar", label: "Kalender" },
            ] as { key: Tab; label: string }[]
          ).map(({ key, label }) => (
            <button
              key={key}
              onClick={() => setTab(key)}
              className={cn(
                "border-b-2 px-4 py-3 text-sm font-semibold transition-colors",
                tab === key
                  ? "border-blue-500 text-blue-600"
                  : "border-transparent text-zinc-400 hover:text-zinc-600"
              )}
            >
              {label}
            </button>
          ))}
          </div>
          <RefreshButton />
        </div>
      </div>

      {/* content */}
      <div className="mx-auto max-w-6xl px-4 sm:px-6">
        {tab === "events" ? (
          <MonthEventSection events={events} />
        ) : (
          <CalendarView events={events} />
        )}
      </div>
    </>
  );
}
