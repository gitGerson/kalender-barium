import { fetchEvents } from "@/lib/fetchEvents";
import { HeroSection } from "@/components/HeroSection";
import { MainTabs } from "@/components/MainTabs";

export default async function Home() {
  let allEvents: Awaited<ReturnType<typeof fetchEvents>> = [];
  try {
    allEvents = await fetchEvents();
  } catch {
    // SHEET_CSV_URL not configured or sheet unavailable — render empty state
  }

  return (
    <main>
      <HeroSection />
      <MainTabs events={allEvents} />
    </main>
  );
}
