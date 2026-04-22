import { useState, useEffect } from "react";

// ── palette ──────────────────────────────────────────────────────────
const B = {
  50:  "#eff6ff",
  100: "#dbeafe",
  200: "#bfdbfe",
  300: "#93c5fd",
  400: "#60a5fa",
  500: "#3b82f6",
  600: "#2563eb",
  700: "#1d4ed8",
};

const EVENTS = [
  { id: 1,  title: "EduTalk Fair Competition 2026",       deadline: "2026-04-04", price: 30000,  category: "Essay",         image: "https://picsum.photos/seed/edutalk/400/560" },
  { id: 2,  title: "Hilirisasi Biomassa",                  deadline: "2026-04-10", price: 0,      category: "Seminar",       image: "https://picsum.photos/seed/biomassa/400/560" },
  { id: 3,  title: "Hackation Nitro 2026",                 deadline: "2026-04-11", price: 100000, category: "Workshop",      image: "https://picsum.photos/seed/hackation/400/560" },
  { id: 4,  title: "Lomba Infografis Nasional 2026",       deadline: "2026-04-11", price: 35000,  category: "Infografis",   image: "https://picsum.photos/seed/infografis2/400/560" },
  { id: 5,  title: "180DC Case Competition 2026",          deadline: "2026-04-11", price: 100000, category: "Business Plan", image: "https://picsum.photos/seed/180dc2/400/560" },
  { id: 6,  title: "Beyond Business Plan 2026",            deadline: "2026-04-12", price: 100000, category: "Business Plan", image: "https://picsum.photos/seed/beyond2/400/560" },
  { id: 7,  title: "ReEnergize Summit 2026",               deadline: "2026-04-14", price: 35000,  category: "Conference",   image: "https://picsum.photos/seed/reenergize2/400/560" },
  { id: 8,  title: "Scientific Webinar",                   deadline: "2026-04-15", price: 25000,  category: "Seminar",      image: "https://picsum.photos/seed/sciweb2/400/560" },
  { id: 9,  title: "Webinar ESG",                          deadline: "2026-04-15", price: 0,      category: "Seminar",      image: "https://picsum.photos/seed/esg2/400/560" },
  { id: 10, title: "Semar LKTIN Competition 2026",         deadline: "2026-04-27", price: 100000, category: "LKTIN",        image: "https://picsum.photos/seed/semar2/400/560" },
  { id: 11, title: "Semar Essay Competition 2026",         deadline: "2026-04-27", price: 85000,  category: "Essay",        image: "https://picsum.photos/seed/semares2/400/560" },
  { id: 12, title: "Semarinfographic Competition 2026",    deadline: "2026-04-27", price: 60000,  category: "Infografis",   image: "https://picsum.photos/seed/semarinfo2/400/560" },
];

const CATS = ["Semua","LKTIN","Essay","Seminar","Workshop","Business Plan","Infografis","Conference"];
const TODAY = new Date("2026-04-22");

const fmt      = p  => (!p || p === 0) ? "Gratis" : "Rp" + p.toLocaleString("id-ID");
const fmtDate  = d  => new Date(d).toLocaleDateString("id-ID", { day:"numeric", month:"short", year:"numeric" });
const daysLeft = d  => Math.ceil((new Date(d) - TODAY) / 86400000);

// ── Card ─────────────────────────────────────────────────────────────
function Card({ event, delay = 0 }) {
  const [hover,   setHover]   = useState(false);
  const [loaded,  setLoaded]  = useState(false);
  const [visible, setVisible] = useState(false);
  const days = daysLeft(event.deadline);

  useEffect(() => {
    const t = setTimeout(() => setVisible(true), delay);
    return () => clearTimeout(t);
  }, [delay]);

  return (
    <div
      onMouseEnter={() => setHover(true)}
      onMouseLeave={() => setHover(false)}
      style={{
        background: "#fff",
        borderRadius: 12,
        overflow: "hidden",
        border: `1px solid ${hover ? B[200] : "#f0f0f0"}`,
        boxShadow: hover
          ? `0 8px 28px rgba(59,130,246,0.13)`
          : "0 1px 4px rgba(0,0,0,0.05)",
        transform: visible
          ? (hover ? "translateY(-5px)" : "translateY(0)")
          : "translateY(14px)",
        opacity: visible ? 1 : 0,
        transition: "opacity 0.4s ease, transform 0.3s ease, box-shadow 0.25s ease, border-color 0.2s ease",
        cursor: "pointer",
      }}
    >
      {/* poster */}
      <div style={{ position:"relative", paddingBottom:"128%", background:"#f0f5ff", overflow:"hidden" }}>
        {!loaded && (
          <div style={{
            position:"absolute", inset:0,
            background:"linear-gradient(90deg,#e8f0fe 25%,#dbeafe 50%,#e8f0fe 75%)",
            backgroundSize:"200% 100%",
            animation:"shimmer 1.4s infinite linear",
          }} />
        )}
        <img
          src={event.image} alt={event.title}
          onLoad={() => setLoaded(true)}
          style={{
            position:"absolute", inset:0, width:"100%", height:"100%",
            objectFit:"cover",
            opacity: loaded ? 1 : 0,
            transform: hover ? "scale(1.04)" : "scale(1)",
            transition:"transform 0.35s ease, opacity 0.3s ease",
          }}
        />
        {/* urgent badge */}
        {days >= 0 && days <= 5 && (
          <span style={{
            position:"absolute", top:8, right:8,
            background: days <= 2 ? "#ef4444" : "#f97316",
            color:"#fff", fontSize:10, fontWeight:700,
            padding:"2px 8px", borderRadius:6,
          }}>
            {days === 0 ? "Hari ini" : `${days}h lagi`}
          </span>
        )}
      </div>

      {/* body */}
      <div style={{ padding:"12px 13px 14px" }}>
        <p style={{ fontSize:10, fontWeight:700, color: B[400], letterSpacing:0.6, marginBottom:4, textTransform:"uppercase" }}>
          {event.category}
        </p>
        <p style={{ fontSize:12, fontWeight:700, color:"#111", lineHeight:1.45, marginBottom:10, minHeight:34 }}>
          {event.title}
        </p>
        <div style={{ borderTop:`1px solid ${B[50]}`, paddingTop:9, display:"flex", flexDirection:"column", gap:4 }}>
          <div style={{ display:"flex", justifyContent:"space-between" }}>
            <span style={{ fontSize:10, color:"#bbb" }}>Deadline</span>
            <span style={{ fontSize:10, fontWeight:600, color:"#444" }}>{fmtDate(event.deadline)}</span>
          </div>
          <div style={{ display:"flex", justifyContent:"space-between" }}>
            <span style={{ fontSize:10, color:"#bbb" }}>Biaya</span>
            <span style={{ fontSize:10, fontWeight:700, color: event.price===0 ? "#16a34a" : "#222" }}>
              {fmt(event.price)}
            </span>
          </div>
        </div>
        {/* CTA */}
        <div style={{
          marginTop:10, padding:"7px 0", textAlign:"center",
          fontSize:10, fontWeight:700, letterSpacing:1,
          color:   hover ? "#fff"  : B[500],
          background: hover ? B[500] : B[50],
          borderRadius:7,
          transition:"all 0.2s ease",
        }}>
          LIHAT INFO
        </div>
      </div>
    </div>
  );
}

// ── CalendarGrid ──────────────────────────────────────────────────────
function CalendarGrid({ events }) {
  const year = 2026, month = 3;
  const firstDay   = new Date(year, month, 1).getDay();
  const total      = new Date(year, month+1, 0).getDate();
  const [hDay, setHDay] = useState(null);

  const byDay = {};
  events.forEach(e => {
    const d = new Date(e.deadline);
    if (d.getMonth() === month) {
      const day = d.getDate();
      if (!byDay[day]) byDay[day] = [];
      byDay[day].push(e);
    }
  });

  const cells   = [...Array(firstDay).fill(null), ...Array.from({length:total},(_,i)=>i+1)];
  const wkdays  = ["Min","Sen","Sel","Rab","Kam","Jum","Sab"];

  return (
    <div>
      <div style={{ display:"grid", gridTemplateColumns:"repeat(7,1fr)", gap:3, marginBottom:5 }}>
        {wkdays.map(d => (
          <div key={d} style={{ textAlign:"center", fontSize:10, color: B[300], fontWeight:600, padding:"3px 0" }}>{d}</div>
        ))}
      </div>
      <div style={{ display:"grid", gridTemplateColumns:"repeat(7,1fr)", gap:3 }}>
        {cells.map((day, i) => {
          const isToday = day === 22;
          const has     = day && byDay[day];
          const isHov   = hDay === day && has;
          return (
            <div
              key={i}
              onMouseEnter={() => has && setHDay(day)}
              onMouseLeave={() => setHDay(null)}
              style={{
                aspectRatio:"1", borderRadius:7,
                display:"flex", flexDirection:"column", alignItems:"center", justifyContent:"center",
                background: isToday ? B[500] : isHov ? B[50] : has ? "#fafcff" : "transparent",
                border: has && !isToday
                  ? `1px solid ${isHov ? B[200] : B[100]}`
                  : "1px solid transparent",
                cursor: has ? "pointer" : "default",
                transition:"all 0.15s ease",
              }}
            >
              <span style={{
                fontSize:11,
                fontWeight: isToday || has ? 700 : 400,
                color: isToday ? "#fff" : has ? B[600] : "#ccc",
              }}>
                {day || ""}
              </span>
              {has && !isToday && (
                <div style={{ width:4, height:4, borderRadius:"50%", background: B[400], marginTop:1 }} />
              )}
            </div>
          );
        })}
      </div>
    </div>
  );
}

// ── App ───────────────────────────────────────────────────────────────
export default function App() {
  const [view,     setView]     = useState("events");
  const [cat,      setCat]      = useState("Semua");
  const [freeOnly, setFreeOnly] = useState(false);
  const [search,   setSearch]   = useState("");
  const [ready,    setReady]    = useState(false);
  const [focused,  setFocused]  = useState(false);

  useEffect(() => { setTimeout(() => setReady(true), 80); }, []);

  const thisMonth    = EVENTS.filter(e => e.deadline.startsWith("2026-04"));
  const applyFilters = list => list.filter(e => {
    if (cat !== "Semua" && e.category !== cat) return false;
    if (freeOnly && e.price !== 0)             return false;
    if (search && !e.title.toLowerCase().includes(search.toLowerCase())) return false;
    return true;
  });

  return (
    <div style={{ fontFamily:"'Segoe UI', system-ui, sans-serif", background:"#f8faff", minHeight:"100vh" }}>
      <style>{`
        * { box-sizing:border-box; margin:0; padding:0; }
        @keyframes shimmer  { 0%{background-position:-200% 0} 100%{background-position:200% 0} }
        @keyframes slideDown{ from{opacity:0;transform:translateY(-8px)} to{opacity:1;transform:translateY(0)} }
        input:focus { outline:none; }
        button { font-family:inherit; cursor:pointer; border:none; background:none; }
        ::-webkit-scrollbar { width:4px; }
        ::-webkit-scrollbar-thumb { background:${B[100]}; border-radius:99px; }
      `}</style>

      {/* ── NAV ── */}
      <nav style={{
        background:"#fff",
        borderBottom:`1px solid ${B[100]}`,
        height:52, padding:"0 24px",
        display:"flex", alignItems:"center", justifyContent:"space-between",
        position:"sticky", top:0, zIndex:50,
        opacity: ready ? 1 : 0, transition:"opacity 0.4s ease",
      }}>
        <div style={{ display:"flex", alignItems:"center", gap:8 }}>
          <div style={{
            width:28, height:28, background: B[500], borderRadius:8,
            display:"flex", alignItems:"center", justifyContent:"center", fontSize:14,
          }}>🧪</div>
          <span style={{ fontSize:14, fontWeight:700, color:"#111", letterSpacing:-0.2 }}>
            Kalender <span style={{ color: B[500] }}>Barium</span>
          </span>
        </div>

        {/* tab switcher */}
        <div style={{ display:"flex", background: B[50], borderRadius:8, padding:3, gap:2 }}>
          {[{k:"events",l:"Kegiatan"},{k:"calendar",l:"Kalender"}].map(({k,l}) => (
            <button
              key={k} onClick={() => setView(k)}
              style={{
                padding:"4px 16px", borderRadius:6,
                fontSize:11, fontWeight:600,
                background: view===k ? "#fff" : "transparent",
                color:      view===k ? B[600] : "#aaa",
                boxShadow:  view===k ? `0 1px 4px rgba(59,130,246,0.15)` : "none",
                transition:"all 0.2s ease",
              }}
            >{l}</button>
          ))}
        </div>
      </nav>

      {/* ── HERO ── */}
      <div style={{
        background:"#fff",
        borderBottom:`1px solid ${B[100]}`,
        padding:"56px 24px 48px", textAlign:"center",
        opacity: ready ? 1 : 0,
        transform: ready ? "translateY(0)" : "translateY(10px)",
        transition:"all 0.5s ease 0.1s",
      }}>
        {/* icon */}
        <div style={{
          width:52, height:52, borderRadius:14,
          background: B[50], border:`1.5px solid ${B[100]}`,
          display:"flex", alignItems:"center", justifyContent:"center",
          fontSize:24, margin:"0 auto 20px",
        }}>🧪</div>

        <p style={{ fontSize:10, fontWeight:700, letterSpacing:3.5, color: B[300], marginBottom:14, textTransform:"uppercase" }}>
          HMPTK · Himpunan Mahasiswa Profesi Teknik Kimia
        </p>
        <h1 style={{ fontSize:"clamp(28px,5vw,42px)", fontWeight:800, color:"#111", lineHeight:1.1, marginBottom:10, letterSpacing:-1 }}>
          Kalender <span style={{ color: B[500] }}>Barium</span>
        </h1>
        <p style={{ fontSize:13, color:"#999", maxWidth:380, margin:"0 auto 28px", lineHeight:1.7 }}>
          Info lomba LKTIN, Essay, Poster, Conference, Seminar Nasional, Workshop, dan Pelatihan K3 untuk mahasiswa.
        </p>

        <div style={{ display:"flex", gap:8, justifyContent:"center" }}>
          <button
            onClick={() => setView("events")}
            style={{
              padding:"9px 22px", borderRadius:8,
              fontSize:12, fontWeight:700,
              background: B[500], color:"#fff",
              boxShadow:`0 2px 12px rgba(59,130,246,0.3)`,
              transition:"all 0.15s ease",
            }}
            onMouseEnter={e => { e.target.style.background=B[600]; e.target.style.boxShadow=`0 4px 16px rgba(59,130,246,0.4)`; }}
            onMouseLeave={e => { e.target.style.background=B[500]; e.target.style.boxShadow=`0 2px 12px rgba(59,130,246,0.3)`; }}
          >Lihat Kegiatan</button>
          <button
            onClick={() => setView("calendar")}
            style={{
              padding:"9px 22px", borderRadius:8,
              fontSize:12, fontWeight:700,
              background:"transparent", color: B[500],
              border:`1.5px solid ${B[200]}`,
              transition:"all 0.15s ease",
            }}
            onMouseEnter={e => { e.target.style.background=B[50]; e.target.style.borderColor=B[300]; }}
            onMouseLeave={e => { e.target.style.background="transparent"; e.target.style.borderColor=B[200]; }}
          >Lihat Kalender</button>
        </div>
      </div>

      {/* ── MAIN ── */}
      <main style={{ maxWidth:1060, margin:"0 auto", padding:"0 22px 80px" }}>

        {/* ─── EVENTS VIEW ─── */}
        {view === "events" && (
          <div style={{ animation:"slideDown 0.3s ease both" }}>

            {/* filter bar */}
            <div style={{ padding:"24px 0 20px", display:"flex", flexDirection:"column", gap:12 }}>

              {/* search */}
              <div style={{ position:"relative" }}>
                <span style={{
                  position:"absolute", left:12, top:"50%", transform:"translateY(-50%)",
                  fontSize:14, color: focused ? B[400] : "#ccc",
                  transition:"color 0.2s ease", pointerEvents:"none",
                }}>⌕</span>
                <input
                  value={search}
                  onChange={e => setSearch(e.target.value)}
                  onFocus={() => setFocused(true)}
                  onBlur={()  => setFocused(false)}
                  placeholder="Cari kegiatan..."
                  style={{
                    width:"100%", padding:"9px 14px 9px 34px",
                    border:`1.5px solid ${focused ? B[300] : "#ebebeb"}`,
                    borderRadius:8, fontSize:13, color:"#111", background:"#fff",
                    boxShadow: focused ? `0 0 0 3px ${B[100]}` : "none",
                    transition:"border-color 0.2s ease, box-shadow 0.2s ease",
                  }}
                />
              </div>

              {/* pills */}
              <div style={{ display:"flex", gap:6, flexWrap:"wrap", alignItems:"center" }}>
                {CATS.map(c => (
                  <button
                    key={c} onClick={() => setCat(c)}
                    style={{
                      padding:"5px 13px", borderRadius:99,
                      fontSize:11, fontWeight:600,
                      background: cat===c ? B[500]  : "#fff",
                      color:      cat===c ? "#fff"   : "#777",
                      border:`1.5px solid ${cat===c ? B[500] : "#e8e8e8"}`,
                      boxShadow: cat===c ? `0 2px 8px rgba(59,130,246,0.25)` : "none",
                      transition:"all 0.15s ease",
                    }}
                  >{c}</button>
                ))}
                {/* divider */}
                <div style={{ width:1, height:18, background:"#e8e8e8", margin:"0 2px" }} />
                <button
                  onClick={() => setFreeOnly(f => !f)}
                  style={{
                    padding:"5px 13px", borderRadius:99,
                    fontSize:11, fontWeight:600,
                    background: freeOnly ? "#ecfdf5" : "#fff",
                    color:      freeOnly ? "#16a34a" : "#777",
                    border:`1.5px solid ${freeOnly ? "#a7f3d0" : "#e8e8e8"}`,
                    transition:"all 0.15s ease",
                  }}
                >Gratis saja</button>
              </div>
            </div>

            {/* this month */}
            <section style={{ marginBottom:44 }}>
              <div style={{ display:"flex", alignItems:"center", gap:10, marginBottom:18 }}>
                <h2 style={{ fontSize:18, fontWeight:800, color:"#111", letterSpacing:-0.4 }}>Bulan Ini</h2>
                <span style={{ fontSize:12, color:"#bbb", paddingTop:2 }}>April 2026 · {thisMonth.length} kegiatan</span>
              </div>
              {applyFilters(thisMonth).length === 0
                ? <p style={{ fontSize:13, color:"#bbb", padding:"20px 0" }}>Tidak ada kegiatan yang sesuai.</p>
                : (
                  <div style={{ display:"grid", gridTemplateColumns:"repeat(auto-fill, minmax(170px, 1fr))", gap:14 }}>
                    {applyFilters(thisMonth).map((e,i) => <Card key={e.id} event={e} delay={i*55} />)}
                  </div>
                )
              }
            </section>

            {/* divider */}
            <div style={{ display:"flex", alignItems:"center", gap:14, marginBottom:24 }}>
              <div style={{ flex:1, height:1, background: B[50] }} />
              <span style={{ fontSize:10, color: B[300], fontWeight:700, letterSpacing:2 }}>KEGIATAN TERBARU</span>
              <div style={{ flex:1, height:1, background: B[50] }} />
            </div>

            {/* all events */}
            {applyFilters(EVENTS).length === 0
              ? (
                <div style={{ textAlign:"center", padding:"60px 0" }}>
                  <p style={{ fontSize:28, marginBottom:10 }}>🔍</p>
                  <p style={{ fontSize:13, fontWeight:700, color:"#333", marginBottom:5 }}>Tidak ada kegiatan</p>
                  <p style={{ fontSize:12, color:"#bbb" }}>Coba ubah filter atau kata kunci</p>
                </div>
              )
              : (
                <div style={{ display:"grid", gridTemplateColumns:"repeat(auto-fill, minmax(170px, 1fr))", gap:14 }}>
                  {applyFilters(EVENTS).map((e,i) => <Card key={e.id+"r"} event={e} delay={i*40} />)}
                </div>
              )
            }
          </div>
        )}

        {/* ─── CALENDAR VIEW ─── */}
        {view === "calendar" && (
          <div style={{ animation:"slideDown 0.3s ease both", paddingTop:28 }}>
            <div style={{ display:"grid", gridTemplateColumns:"1fr 320px", gap:20, alignItems:"start" }}>

              {/* calendar box */}
              <div style={{
                background:"#fff", borderRadius:12,
                border:`1px solid ${B[100]}`, padding:24,
              }}>
                <div style={{ display:"flex", justifyContent:"space-between", alignItems:"baseline", marginBottom:22 }}>
                  <h2 style={{ fontSize:18, fontWeight:800, color:"#111", letterSpacing:-0.4 }}>April 2026</h2>
                  <span style={{ fontSize:12, color: B[400], fontWeight:600 }}>{thisMonth.length} kegiatan</span>
                </div>
                <CalendarGrid events={thisMonth} />
                {/* legend */}
                <div style={{ display:"flex", gap:16, marginTop:18, paddingTop:16, borderTop:`1px solid ${B[50]}` }}>
                  <div style={{ display:"flex", alignItems:"center", gap:6, fontSize:11, color:"#bbb" }}>
                    <div style={{ width:10, height:10, borderRadius:3, background: B[500] }} /> Hari ini
                  </div>
                  <div style={{ display:"flex", alignItems:"center", gap:6, fontSize:11, color:"#bbb" }}>
                    <div style={{ width:10, height:10, borderRadius:3, background: B[50], border:`1px solid ${B[200]}` }} /> Ada kegiatan
                  </div>
                </div>
              </div>

              {/* sidebar */}
              <div style={{ display:"flex", flexDirection:"column", gap:8 }}>
                <p style={{ fontSize:10, fontWeight:700, color: B[300], letterSpacing:2, textTransform:"uppercase", marginBottom:4 }}>
                  Daftar Kegiatan
                </p>
                {thisMonth.map((e, i) => {
                  const days = daysLeft(e.deadline);
                  return (
                    <div
                      key={e.id}
                      style={{
                        background:"#fff",
                        border:`1px solid ${B[100]}`,
                        borderRadius:10, padding:"11px 12px",
                        display:"flex", gap:10, alignItems:"center",
                        opacity:0, animation:`slideDown 0.3s ease ${i*45}ms forwards`,
                        cursor:"pointer",
                        transition:"border-color 0.15s, box-shadow 0.15s",
                      }}
                      onMouseEnter={el => {
                        el.currentTarget.style.borderColor = B[300];
                        el.currentTarget.style.boxShadow = `0 2px 12px rgba(59,130,246,0.1)`;
                      }}
                      onMouseLeave={el => {
                        el.currentTarget.style.borderColor = B[100];
                        el.currentTarget.style.boxShadow = "none";
                      }}
                    >
                      <div style={{ width:34, height:34, borderRadius:7, overflow:"hidden", flexShrink:0, background: B[50] }}>
                        <img src={e.image} alt="" style={{ width:"100%", height:"100%", objectFit:"cover" }} />
                      </div>
                      <div style={{ flex:1, minWidth:0 }}>
                        <p style={{ fontSize:11, fontWeight:700, color:"#111", whiteSpace:"nowrap", overflow:"hidden", textOverflow:"ellipsis" }}>
                          {e.title}
                        </p>
                        <p style={{ fontSize:10, color:"#bbb", marginTop:2 }}>{fmtDate(e.deadline)}</p>
                      </div>
                      <div style={{ flexShrink:0, textAlign:"right" }}>
                        <p style={{ fontSize:10, fontWeight:700, color: e.price===0 ? "#16a34a" : "#333" }}>
                          {fmt(e.price)}
                        </p>
                        {days >= 0 && days <= 7 && (
                          <p style={{ fontSize:10, color: days<=2 ? "#ef4444" : "#f97316", fontWeight:600, marginTop:2 }}>
                            {days===0 ? "Hari ini" : `${days}h`}
                          </p>
                        )}
                      </div>
                    </div>
                  );
                })}
              </div>
            </div>
          </div>
        )}
      </main>

      {/* ── FOOTER ── */}
      <footer style={{ borderTop:`1px solid ${B[100]}`, padding:"18px 24px", textAlign:"center" }}>
        <p style={{ fontSize:11, color: B[300] }}>© 2026 Kalender Barium · HMPTK · Diperbarui setiap jam</p>
      </footer>
    </div>
  );
}
