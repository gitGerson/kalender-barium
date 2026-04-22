import type { NextRequest } from "next/server";
import { fetchEvents } from "@/lib/fetchEvents";

export async function GET(request: NextRequest) {
  const { searchParams } = request.nextUrl;
  const month = searchParams.get("month");
  const category = searchParams.get("category");
  const freeOnly = searchParams.get("free") === "true";

  let events = await fetchEvents();

  if (month) {
    events = events.filter((e) =>
      e.deadline.toISOString().startsWith(month)
    );
  }

  if (category) {
    events = events.filter(
      (e) => e.category.toLowerCase() === category.toLowerCase()
    );
  }

  if (freeOnly) {
    events = events.filter((e) => e.price === 0);
  }

  events.sort((a, b) => a.deadline.getTime() - b.deadline.getTime());

  return Response.json(events);
}
