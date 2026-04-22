import { clsx, type ClassValue } from "clsx";
import { twMerge } from "tailwind-merge";
import type { Event } from "./types";

export function cn(...inputs: ClassValue[]) {
  return twMerge(clsx(inputs));
}

export function formatPrice(price: number): string {
  if (price === 0) return "Gratis";
  return new Intl.NumberFormat("id-ID", {
    style: "currency",
    currency: "IDR",
    minimumFractionDigits: 0,
  }).format(price);
}

export function formatDeadline(date: Date): string {
  return date.toLocaleDateString("id-ID", {
    day: "numeric",
    month: "short",
    year: "numeric",
  });
}

export function daysLeft(date: Date): number {
  const now = new Date();
  now.setHours(0, 0, 0, 0);
  const d = new Date(date);
  d.setHours(0, 0, 0, 0);
  return Math.ceil((d.getTime() - now.getTime()) / 86400000);
}

export function currentMonth(): string {
  return new Date().toISOString().slice(0, 7);
}

export function filterThisMonth(events: Event[]): Event[] {
  const month = currentMonth();
  return events.filter((e) => e.deadline.toISOString().startsWith(month));
}

export function groupByDate(events: Event[]): Record<string, Event[]> {
  return events.reduce(
    (acc, event) => {
      const key = event.deadline.toISOString().slice(0, 10);
      if (!acc[key]) acc[key] = [];
      acc[key].push(event);
      return acc;
    },
    {} as Record<string, Event[]>
  );
}
