import type { Metadata } from "next";
import { Inter } from "next/font/google";
import "./globals.css";
import { Footer } from "@/components/Footer";
import { Analytics } from "@vercel/analytics/next"
import { SpeedInsights } from "@vercel/speed-insights/next"
import { GoogleAnalytics } from "@next/third-parties/google"

const inter = Inter({ subsets: ["latin"], variable: "--font-sans" });

const BASE_URL = "https://barium.hmptk.info";

export const metadata: Metadata = {
  metadataBase: new URL(BASE_URL),
  title: {
    default: "Kalender Barium",
    template: "%s | Kalender Barium",
  },
  description:
    "Kalender Prestasi Mahasiswa H.M.P.T.K. UNNES — kumpulan kegiatan, kompetisi, dan pelatihan untuk mahasiswa. Jangan sampai ketinggalan deadline-nya!",
  keywords: [
    "kalender mahasiswa",
    "kompetisi mahasiswa",
    "lomba mahasiswa",
    "pelatihan mahasiswa",
    "LKTIN",
    "PKM",
    "HMPTK",
    "UNNES",
    "deadline kompetisi",
  ],
  authors: [{ name: "Himpunan Mahasiswa Profesi Teknik Kimia Universitas Negeri Semarang", url: "https://www.instagram.com/hmptkunnes/" }],
  openGraph: {
    type: "website",
    url: BASE_URL,
    siteName: "Kalender Barium",
    title: "Kalender Barium — Kalender Prestasi Mahasiswa",
    description:
      "Kumpulan kegiatan, kompetisi, dan pelatihan untuk mahasiswa. Jangan sampai ketinggalan deadline-nya!",
    images: [{ url: "/applogo.png", width: 512, height: 512, alt: "Kalender Barium" }],
    locale: "id_ID",
  },
  twitter: {
    card: "summary",
    title: "Kalender Barium — Kalender Prestasi Mahasiswa",
    description:
      "Kumpulan kegiatan, kompetisi, dan pelatihan untuk mahasiswa. Jangan sampai ketinggalan deadline-nya!",
    images: ["/applogo.png"],
  },
  robots: {
    index: true,
    follow: true,
    googleBot: { index: true, follow: true },
  },
  alternates: {
    canonical: BASE_URL,
  },
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="id" className={`antialiased font-sans ${inter.variable}`}>
      <head>
        <script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-1843115638296849" crossorigin="anonymous"></script>
      </head>
      <body className="min-h-screen flex flex-col">
        {children}
        <Footer />
        <Analytics />
        <SpeedInsights />
      </body>
      <GoogleAnalytics gaId={process.env.NEXT_PUBLIC_GA_ID!} />
    </html>
  );
}
