"use client";

import Image from "next/image";
import { useState } from "react";
import type { Event } from "@/lib/types";
import { cn, formatPrice, formatDeadline, daysLeft } from "@/lib/utils";

interface Props {
  event: Event;
  priority?: boolean;
}

export function EventCard({ event, priority = false }: Props) {
  const [imgLoaded, setImgLoaded] = useState(false);
  const days = daysLeft(event.deadline);

  return (
    <div className="group flex flex-col rounded-xl border border-blue-50 bg-white shadow-sm transition-all duration-300 hover:-translate-y-1 hover:border-blue-200 hover:shadow-[0_8px_28px_rgba(59,130,246,0.13)] overflow-hidden">
      {/* poster */}
      <a
        href={event.linkInfo || "#"}
        target="_blank"
        rel="noopener noreferrer"
        className="relative block w-full overflow-hidden bg-blue-50"
        style={{ paddingBottom: "128%" }}
        tabIndex={-1}
      >
        {!imgLoaded && (
          <div className="absolute inset-0 animate-pulse bg-gradient-to-r from-blue-100 via-blue-50 to-blue-100" />
        )}
        {event.imageUrl ? (
          <Image
            src={event.imageUrl}
            alt={event.title}
            fill
            sizes="(max-width: 640px) 50vw, (max-width: 1024px) 33vw, 25vw"
            loading={priority ? "eager" : "lazy"}
            fetchPriority={priority ? "high" : "auto"}
            className={cn(
              "object-cover transition-all duration-300 group-hover:scale-[1.04]",
              imgLoaded ? "opacity-100" : "opacity-0"
            )}
            onLoad={() => setImgLoaded(true)}
          />
        ) : (
          <div className="absolute inset-0 flex items-center justify-center bg-blue-100">
            <span className="text-3xl">📋</span>
          </div>
        )}

        {/* urgency badge */}
        {days >= 0 && days <= 5 && (
          <span
            className={cn(
              "absolute right-2 top-2 rounded-md px-2 py-0.5 text-[10px] font-bold text-white",
              days <= 2 ? "bg-red-500" : "bg-orange-400"
            )}
          >
            {days === 0 ? "Hari ini" : `${days}h lagi`}
          </span>
        )}
      </a>

      {/* body */}
      <div className="flex flex-1 flex-col px-3 pb-3.5 pt-3">
        <p className="mb-1 text-[10px] font-bold uppercase tracking-wide text-blue-400">
          {event.category || "—"}
        </p>
        <p className="mb-2.5 min-h-[34px] text-xs font-bold leading-snug text-zinc-900">
          {event.title}
        </p>

        <div className="flex flex-col gap-1 border-t border-blue-50 pt-2">
          <div className="flex justify-between">
            <span className="text-[10px] text-zinc-400">Deadline</span>
            <span className="text-[10px] font-semibold text-zinc-600">
              {formatDeadline(event.deadline)}
            </span>
          </div>
          <div className="flex justify-between">
            <span className="text-[10px] text-zinc-400">Biaya</span>
            <span
              className={cn(
                "text-[10px] font-bold",
                event.price === 0 ? "text-green-600" : "text-zinc-800"
              )}
            >
              {formatPrice(event.price)}
            </span>
          </div>
        </div>

        {/* CTA buttons */}
        <div className={cn("mt-2.5 grid gap-1.5", event.linkReg ? "grid-cols-2" : "grid-cols-1")}>
          {event.linkInfo && (
            <a
              href={event.linkInfo}
              target="_blank"
              rel="noopener noreferrer"
              className="rounded-lg bg-blue-50 py-1.5 text-center text-[10px] font-bold tracking-widest text-blue-500 transition-all duration-200 hover:bg-blue-500 hover:text-white"
            >
              INFO
            </a>
          )}
          {event.linkReg && (
            <a
              href={event.linkReg}
              target="_blank"
              rel="noopener noreferrer"
              className="rounded-lg bg-blue-500 py-1.5 text-center text-[10px] font-bold tracking-widest text-white transition-all duration-200 hover:bg-blue-600"
            >
              DAFTAR
            </a>
          )}
        </div>
      </div>
    </div>
  );
}
