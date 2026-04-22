import Image from "next/image";

export function HeroSection() {
  return (
    <div className="border-b border-blue-100 bg-white px-6 py-10 text-center">
      <div className="mx-auto flex max-w-xl flex-col items-center gap-4">
        {/* logos side by side */}
        <div className="flex items-center gap-3 sm:gap-5">
          <div className="relative h-14 w-36 sm:h-24 sm:w-64">
            <Image src="/orglogo.png" alt="Organisation logo" fill sizes="(max-width: 640px) 144px, 256px" className="object-contain" />
          </div>
          <div className="h-10 w-px bg-blue-100 sm:h-16" />
          <div className="relative h-14 w-14 sm:h-24 sm:w-24">
            <Image src="/applogo.png" alt="Kalender Barium" fill sizes="(max-width: 640px) 56px, 96px" className="object-contain" priority />
          </div>
        </div>

        <h1 className="text-3xl font-bold tracking-tight text-zinc-900">
          Kalender <span className="text-blue-500">Barium</span>
        </h1>
        <p className="max-w-sm text-sm leading-relaxed text-zinc-500">
          Kumpulan kegiatan, kompetisi, dan pelatihan untuk mahasiswa. Jangan
          sampai ketinggalan deadline-nya!
        </p>
      </div>
    </div>
  );
}
