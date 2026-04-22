import Image from "next/image";

export function Footer() {
  return (
    <footer className="bg-gradient-to-r from-cyan-300 to-teal-400 px-4 py-4">
      <div className="mx-auto max-w-3xl rounded-2xl bg-white px-6 py-4 shadow-sm">
        {/* logo + app name */}
        <div className="mb-3 flex items-center justify-center gap-2">
          <div className="relative h-8 w-8">
            <Image src="/applogo.png" alt="Kalender Barium" fill sizes="32px" className="object-contain" />
          </div>
          <span className="text-sm font-semibold text-zinc-800">Kalender Barium</span>
        </div>

        {/* copyright row */}
        <p className="text-center text-[11px] text-zinc-500 leading-relaxed">
          © {new Date().getFullYear()} Kalender Barium · Developed by{" "}
          <a
            href="https://instagram.com/gerson.m5"
            target="_blank"
            rel="noopener noreferrer"
            className="font-semibold text-blue-500 hover:underline"
          >
            @gerson.m5
          </a>{" "}
          ·{" "}
          <a
            href="https://wa.me/6285156106221"
            target="_blank"
            rel="noopener noreferrer"
            className="font-semibold text-teal-500 hover:underline"
          >
            Contact via WhatsApp
          </a>
        </p>
      </div>
    </footer>
  );
}
