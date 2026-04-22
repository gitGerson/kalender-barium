import type { Event } from "./types";

function parseCSVRow(row: string): string[] {
  const result: string[] = [];
  let current = "";
  let inQuotes = false;

  for (const char of row) {
    if (char === '"') {
      inQuotes = !inQuotes;
    } else if (char === "," && !inQuotes) {
      result.push(current);
      current = "";
    } else {
      current += char;
    }
  }
  result.push(current);
  return result;
}

function normalizeImageUrl(raw: string | undefined): string {
  if (!raw) return "";
  const url = raw.trim();
  if (!url) return "";
  // Transform drive.google.com/file/d/FILE_ID/... → thumbnail URL
  const driveMatch = url.match(/drive\.google\.com\/file\/d\/([^/?]+)/);
  if (driveMatch) return `https://drive.google.com/thumbnail?id=${driveMatch[1]}&sz=w800`;
  // Reject anything that isn't a valid absolute URL
  try {
    new URL(url);
    return url;
  } catch {
    return "";
  }
}

function parsePrice(raw: string | undefined): number {
  if (!raw || raw.trim() === "") return 0;
  // strip currency symbol, spaces, and all thousand separators (both , and .)
  // IDR is always a whole number so no decimal handling needed
  const cleaned = raw.replace(/[Rp\s.,]/gi, "");
  const n = Number(cleaned);
  return isNaN(n) ? 0 : n;
}

export async function fetchEvents(): Promise<Event[]> {
  const url = process.env.SHEET_CSV_URL;
  if (!url) throw new Error("SHEET_CSV_URL is not set");

  const res = await fetch(url, { next: { revalidate: 3600 } });
  if (!res.ok) throw new Error(`Failed to fetch events sheet: ${res.status}`);

  const csv = await res.text();
  const rows = csv.split("\n").slice(1);

  return rows
    .map((row): Event | null => {
      if (!row.trim()) return null;

      const [
        id,
        title,
        deadline,
        price,
        imageUrl,
        linkInfo,
        linkReg,
        category,
        keterangan,
        isActive,
      ] = parseCSVRow(row);

      if (!title?.trim() || !deadline?.trim()) return null;

      const parsedDeadline = new Date(deadline.trim());
      if (isNaN(parsedDeadline.getTime())) return null;

      return {
        id: Number(id) || 0,
        title: title.trim(),
        deadline: parsedDeadline,
        price: parsePrice(price),
        imageUrl: normalizeImageUrl(imageUrl),
        linkInfo: linkInfo?.trim() || "",
        linkReg: linkReg?.trim() || undefined,
        category: category?.trim() || "",
        keterangan: keterangan?.trim() || undefined,
        isActive: isActive?.trim().toUpperCase() === "TRUE",
      };
    })
    .filter((e): e is Event => e !== null && e.isActive);
}
