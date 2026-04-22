"use client";

import { useState, useEffect, useTransition } from "react";
import { refreshEvents } from "@/app/actions";

const COOLDOWN = 60;

export function RefreshButton() {
  const [secondsLeft, setSecondsLeft] = useState(0);
  const [isPending, startTransition] = useTransition();

  useEffect(() => {
    if (secondsLeft <= 0) return;
    const t = setTimeout(() => setSecondsLeft((s) => s - 1), 1000);
    return () => clearTimeout(t);
  }, [secondsLeft]);

  function handleClick() {
    startTransition(() => refreshEvents());
    setSecondsLeft(COOLDOWN);
  }

  const disabled = isPending || secondsLeft > 0;

  return (
    <button
      onClick={handleClick}
      disabled={disabled}
      title={secondsLeft > 0 ? `Tunggu ${secondsLeft}d lagi` : "Refresh data"}
      className="flex items-center gap-1 rounded-lg px-2 py-1 text-xs text-zinc-400 transition-colors hover:bg-blue-50 hover:text-blue-500 disabled:cursor-not-allowed disabled:opacity-40"
    >
      <svg
        xmlns="http://www.w3.org/2000/svg"
        viewBox="0 0 20 20"
        fill="currentColor"
        className={`h-3.5 w-3.5 ${isPending ? "animate-spin" : ""}`}
      >
        <path
          fillRule="evenodd"
          d="M15.312 11.424a5.5 5.5 0 0 1-9.201 2.466l-.312-.311h2.433a.75.75 0 0 0 0-1.5H5.498a.75.75 0 0 0-.75.75v3.236a.75.75 0 0 0 1.5 0v-1.543l.31.31a7 7 0 0 0 11.712-3.138.75.75 0 0 0-1.449-.39Zm1.23-3.723a.75.75 0 0 0 .219-.53V3.936a.75.75 0 0 0-1.5 0v1.543l-.31-.31A7 7 0 0 0 3.239 8.188a.75.75 0 1 0 1.448.389A5.5 5.5 0 0 1 13.89 6.11l.311.31h-2.432a.75.75 0 0 0 0 1.5h3.234a.75.75 0 0 0 .53-.219Z"
          clipRule="evenodd"
        />
      </svg>
      {secondsLeft > 0 ? `${secondsLeft}d` : "Refresh"}
    </button>
  );
}
