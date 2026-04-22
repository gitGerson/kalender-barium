"use client";

import { useState } from "react";
import type { Event } from "@/lib/types";
import { groupByDate, formatPrice, formatDeadline } from "@/lib/utils";
import { cn } from "@/lib/utils";

interface Props {
  events: Event[];
}

const WEEKDAYS = ["Min", "Sen", "Sel", "Rab", "Kam", "Jum", "Sab"];

const MONTH_NAMES = [
  "Januari", "Februari", "Maret", "April", "Mei", "Juni",
  "Juli", "Agustus", "September", "Oktober", "November", "Desember",
];

export function CalendarView({ events }: Props) {
  const today = new Date();
  const [year, setYear] = useState(today.getFullYear());
  const [month, setMonth] = useState(today.getMonth());
  const [hoveredDay, setHoveredDay] = useState<number | null>(null);
  const [selectedDay, setSelectedDay] = useState<number | null>(null);

  const firstDayOfWeek = new Date(year, month, 1).getDay();
  const daysInMonth = new Date(year, month + 1, 0).getDate();

  const byDate = groupByDate(
    events.filter((e) => {
      const d = e.deadline;
      return d.getFullYear() === year && d.getMonth() === month;
    })
  );

  const cells = [
    ...Array(firstDayOfWeek).fill(null),
    ...Array.from({ length: daysInMonth }, (_, i) => i + 1),
  ];

  function prevMonth() {
    setSelectedDay(null);
    if (month === 0) { setMonth(11); setYear(y => y - 1); }
    else setMonth(m => m - 1);
  }

  function nextMonth() {
    setSelectedDay(null);
    if (month === 11) { setMonth(0); setYear(y => y + 1); }
    else setMonth(m => m + 1);
  }

  const isToday = (day: number) =>
    day === today.getDate() &&
    month === today.getMonth() &&
    year === today.getFullYear();

  const selectedKey = selectedDay
    ? `${year}-${String(month + 1).padStart(2, "0")}-${String(selectedDay).padStart(2, "0")}`
    : null;
  const selectedEvents = selectedKey ? (byDate[selectedKey] ?? []) : [];

  return (
    <section className="py-10">
      <div className="mb-6 flex items-center justify-between">
        <h2 className="text-lg font-bold text-zinc-900">Kalender Kegiatan</h2>
        <div className="flex items-center gap-2">
          <button
            onClick={prevMonth}
            className="rounded-lg px-2 py-1 text-sm text-zinc-500 hover:bg-blue-50 hover:text-blue-600"
          >
            ‹
          </button>
          <span className="min-w-[120px] text-center text-sm font-semibold text-zinc-700">
            {MONTH_NAMES[month]} {year}
          </span>
          <button
            onClick={nextMonth}
            className="rounded-lg px-2 py-1 text-sm text-zinc-500 hover:bg-blue-50 hover:text-blue-600"
          >
            ›
          </button>
        </div>
      </div>

      <div className="flex flex-col gap-4 lg:flex-row lg:items-start">
        {/* calendar grid */}
        <div className="min-w-0 flex-1 rounded-xl border border-blue-50 bg-white p-4 shadow-sm">
          {/* weekday headers */}
          <div className="mb-1 grid grid-cols-7 gap-1">
            {WEEKDAYS.map((d) => (
              <div key={d} className="py-1 text-center text-[10px] font-semibold text-blue-300">
                {d}
              </div>
            ))}
          </div>

          {/* day cells */}
          <div className="grid grid-cols-7 gap-1">
            {cells.map((day, i) => {
              const dateKey = day
                ? `${year}-${String(month + 1).padStart(2, "0")}-${String(day).padStart(2, "0")}`
                : null;
              const eventsOnDay = dateKey ? byDate[dateKey] : null;
              const today_ = day ? isToday(day) : false;
              const hovered = hoveredDay === day && !!eventsOnDay;
              const selected = selectedDay === day && !!eventsOnDay;
              const first = eventsOnDay?.[0];
              const extra = eventsOnDay ? eventsOnDay.length - 1 : 0;

              return (
                <div
                  key={i}
                  onMouseEnter={() => eventsOnDay && setHoveredDay(day)}
                  onMouseLeave={() => setHoveredDay(null)}
                  onClick={() => {
                    if (!eventsOnDay) return;
                    setSelectedDay(selectedDay === day ? null : day);
                  }}
                  className={cn(
                    "flex flex-col rounded-lg border p-1 transition-all duration-150",
                    "aspect-square sm:aspect-auto sm:min-h-14",
                    eventsOnDay ? "cursor-pointer" : "",
                    selected
                      ? "border-blue-400 bg-blue-50 ring-1 ring-blue-300"
                      : today_
                      ? "border-transparent bg-blue-500"
                      : hovered
                      ? "border-blue-200 bg-blue-50"
                      : eventsOnDay
                      ? "border-blue-100 bg-[#fafcff]"
                      : "border-transparent"
                  )}
                >
                  <span
                    className={cn(
                      "text-[11px] leading-none",
                      today_ && !selected
                        ? "font-bold text-white"
                        : eventsOnDay
                        ? "font-bold text-blue-600"
                        : "text-zinc-300"
                    )}
                  >
                    {day ?? ""}
                  </span>

                  {/* mobile: dot only */}
                  {eventsOnDay && (
                    <span className={cn(
                      "mt-0.5 h-1 w-1 self-center rounded-full sm:hidden",
                      today_ && !selected ? "bg-blue-200" : "bg-blue-400"
                    )} />
                  )}

                  {/* desktop: text preview */}
                  {first && (
                    <div className="mt-1 hidden flex-col gap-0.5 sm:flex">
                      <p className={cn(
                        "line-clamp-2 text-[8px] font-medium leading-tight",
                        today_ && !selected ? "text-blue-100" : "text-blue-700"
                      )}>
                        {first.title}
                      </p>
                      {extra > 0 && (
                        <span className={cn(
                          "text-[8px] font-semibold",
                          today_ && !selected ? "text-blue-200" : "text-blue-400"
                        )}>
                          +{extra} lagi
                        </span>
                      )}
                    </div>
                  )}
                </div>
              );
            })}
          </div>
        </div>

        {/* event list panel — hidden on mobile until a date is selected */}
        <div className={cn(
          "w-full rounded-xl border border-blue-50 bg-white shadow-sm lg:block lg:w-72 xl:w-80",
          selectedDay ? "block" : "hidden lg:block"
        )}>
          <div className="border-b border-blue-50 px-4 py-3">
            <p className="text-sm font-semibold text-zinc-700">
              {selectedDay
                ? `${selectedDay} ${MONTH_NAMES[month]} ${year}`
                : "Pilih tanggal"}
            </p>
            {selectedDay && (
              <p className="text-xs text-zinc-400">{selectedEvents.length} kegiatan</p>
            )}
          </div>

          <div className="overflow-y-auto lg:max-h-[420px]">
            {!selectedDay ? (
              <div className="flex flex-col items-center justify-center gap-2 py-12 text-center">
                <span className="text-3xl">📅</span>
                <p className="text-xs text-zinc-400">
                  Klik tanggal yang memiliki<br />kegiatan untuk melihat detail
                </p>
              </div>
            ) : selectedEvents.length === 0 ? (
              <p className="py-8 text-center text-xs text-zinc-400">
                Tidak ada kegiatan
              </p>
            ) : (
              <ul className="divide-y divide-blue-50">
                {selectedEvents.map((e) => (
                  <li key={e.id} className="px-4 py-3">
                    <p className="mb-0.5 text-[10px] font-bold uppercase tracking-wide text-blue-400">
                      {e.category || "—"}
                    </p>
                    <p className="mb-2 text-xs font-semibold leading-snug text-zinc-800">
                      {e.title}
                    </p>
                    <div className="mb-2 flex justify-between text-[10px]">
                      <span className="text-zinc-400">Biaya</span>
                      <span className={cn("font-bold", e.price === 0 ? "text-green-600" : "text-zinc-700")}>
                        {formatPrice(e.price)}
                      </span>
                    </div>
                    <div className="mb-2 flex justify-between text-[10px]">
                      <span className="text-zinc-400">Deadline</span>
                      <span className="font-semibold text-zinc-600">{formatDeadline(e.deadline)}</span>
                    </div>
                    <div className="flex gap-1.5">
                      {e.linkInfo && (
                        <a
                          href={e.linkInfo}
                          target="_blank"
                          rel="noopener noreferrer"
                          className="flex-1 rounded-md bg-blue-50 py-1 text-center text-[10px] font-bold tracking-wider text-blue-500 hover:bg-blue-100"
                        >
                          INFO
                        </a>
                      )}
                      {e.linkReg && (
                        <a
                          href={e.linkReg}
                          target="_blank"
                          rel="noopener noreferrer"
                          className="flex-1 rounded-md bg-blue-500 py-1 text-center text-[10px] font-bold tracking-wider text-white hover:bg-blue-600"
                        >
                          DAFTAR
                        </a>
                      )}
                    </div>
                  </li>
                ))}
              </ul>
            )}
          </div>
        </div>
      </div>
    </section>
  );
}
