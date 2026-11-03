const base = import.meta.env.BASE_URL.replace(/\/$/, "");

export const withBase = (path) => `${base}${path}`;

/** ISO date, e.g. 2025-04-05 */
export function fmtDate(d) {
  const mm = String(d.getMonth() + 1).padStart(2, "0");
  const dd = String(d.getDate()).padStart(2, "0");
  return `${d.getFullYear()}-${mm}-${dd}`;
}

export const byDateDesc = (a, b) => b.data.pubDate.valueOf() - a.data.pubDate.valueOf();
