I looked at what you’re running now, and your site is very “academic landing page + sections (Bio / Papers / Experience / Blog)” — it’s clearly the **Hugo Blox / Academic CV** stack. ([Aritra][1]) You even already have the blog machinery working (there are posts under `/post/`), but the ecosystem around **Hugo Blox** is *very* “sponsor / Pro / premium templates/blocks” in-your-face. ([GitHub][2])

Below is the straight-up comparison + what I’d pick for you.

---

## Hugo (the generator) vs Hugo Blox (your current theme ecosystem)

First: **Hugo itself isn’t the paid part**. Hugo is open source (Apache 2.0), and it’s legitimately popular + fast. ([gohugo.io][3])
What you’re reacting to is mostly **Hugo Blox/Wowchemy’s freemium layer**: the theme README and site explicitly market Pro features/templates. ([GitHub][4])

So you have two Hugo paths:

* **Stay on Hugo, ditch Hugo Blox** (use a truly OSS theme)
* **Leave Hugo entirely** (Jekyll / Quarto / Astro / 11ty, etc.)

---

## Feature comparison: Hugo vs Jekyll (for an academic CV + blog)

### 1) “Academic website” primitives (publications, CV, sections)

**Hugo (plain Hugo):**

* Not academic-specific by default; you get “content + templates,” and you pick a theme.
* Hugo Blox gives academic features (BibTeX import, sections/widgets, etc.) but that’s exactly where the Pro upsell lives. ([GitHub][2])

**Jekyll:**

* Also not academic-specific by default, but the **academic theme ecosystem is very mature** and mostly fully OSS.
* Example: **al-folio** is a widely-used Jekyll theme explicitly for academics and includes a bibliography/publications structure. ([GitHub][5])
* If you want citations/BibTeX in posts, **jekyll-scholar** exists specifically for academic blogging/citations. ([GitHub][6])

**Verdict:** If “academic CV + publications + blog” is the core, **Jekyll has a cleaner OSS-first path** via themes like **al-folio**.

---

### 2) Blogging experience (writing, organizing, RSS, etc.)

**Hugo:**

* Blogging is great (Markdown-first, fast builds). Your current stack already supports technical blogging (math, diagrams, etc.). ([Aritra][7])
* But theme complexity can make basic changes feel harder than they should.

**Jekyll:**

* Jekyll is literally positioned as a “simple, blog-aware” generator. ([jekyllrb.com][8])
* Lots of blogging-oriented themes + conventions.

**Verdict:** Both are good at blogging. Jekyll usually feels “less framework-y” for a straightforward blog.

---

### 3) Deployment + “it just works” on GitHub Pages

**Jekyll wins on simplicity** *if you want GitHub Pages*:

* GitHub Pages has built-in Jekyll support and is powered by Jekyll behind the scenes. ([GitHub Docs][9])

**Caveat:** GitHub Pages won’t build with unsupported Jekyll plugins on GitHub’s servers. If you need non-whitelisted plugins, you build elsewhere (locally or Actions) and deploy the generated site. ([GitHub Docs][9])

**Hugo on GitHub Pages:**

* Totally doable, but you’ll almost always use GitHub Actions (more moving pieces than “push and done”). ([GitHub][10])

**Verdict:** If you like GitHub Pages and want low-friction, **Jekyll is the smoothest**.

---

### 4) Customization model (how “clunky” it feels)

**Hugo:**

* Hugo itself is flexible, but themes can be tightly coupled to Hugo version changes; upgrading can be painful depending on theme/customization choices. ([gohugo.io][3])
* This isn’t just you: theme choice and upgrade burden is a known pain point in Hugo land. ([gohugo.io][3])
  (If you want a calmer Hugo life, pick a simpler theme and keep customizations minimal.)

**Jekyll:**

* Generally “less magic,” but Liquid can be annoying if you’re doing heavy logic.
* Themes like al-folio are pretty structured, so you mostly edit content/data files.

**Verdict:** For your “I want this simpler and less upsell-y” goal, Jekyll tends to *feel* simpler day-to-day.

---

## My opinionated recommendation for you

### Best fit: **Jekyll + al-folio**

If your goal is:

* academic CV vibes
* publications/projects pages
* a real blog you’ll actually maintain
* minimal ecosystem “premium plugin” noise

…then **Jekyll + al-folio is the cleanest move**. It’s explicitly academic, very popular, and doesn’t funnel you into “Pro blocks.” ([GitHub][5])

**One warning:** if you want fancy plugins (e.g., advanced citations via `jekyll-scholar`) and insist on GitHub’s default Pages build, you’ll hit the “unsupported plugins” wall. But the fix is standard: build with GitHub Actions (or locally) and deploy. ([GitHub Docs][9])

---

## Modern alternatives (if you want something newer than both)

### 1) **Quarto** (my “academic technical blogging” pick)

Quarto is *designed* for technical/scientific publishing (websites + blogs + math + notebooks) and is open source. ([Quarto][11])
If you think you’ll write posts with code/results (Python notebooks, research notes, etc.), Quarto is extremely aligned.

### 2) **Astro** (modern dev experience)

Astro is a modern content-driven framework, and its “Content Collections” are great if you like a typed/content-structured workflow. ([Astro][12])
Downside: you’ll assemble “academic features” yourself (pubs list, citations, etc.) unless you find a template you love.

### 3) **Eleventy (11ty)** (minimal, modern-ish)

Eleventy positions itself as a “simpler static site generator” and has great blog starters. ([Eleventy][13])
Not as “academic out of the box,” but very pleasant if you want minimal tooling.

---

## If you tell me one preference, I’ll give you the exact path

Pick the statement that’s most true:

1. **“I want the easiest academic site + blog with minimal fuss.”** → Jekyll + al-folio
2. **“I want research-y technical blogging with code + results baked in.”** → Quarto
3. **“I want modern JS tooling + components and don’t mind building academic pieces.”** → Astro

If you answer with `1 / 2 / 3`, I’ll outline a concrete migration plan (folder structure, what content you can reuse from your current Hugo site, and a clean deployment setup that avoids paid stuff).

[1]: https://techie5879.github.io/?utm_source=chatgpt.com "techie5879.github.io - Aritra"
[2]: https://github.com/Techie5879/Techie5879.github.io "GitHub - Techie5879/Techie5879.github.io"
[3]: https://gohugo.io/?utm_source=chatgpt.com "Gohugo - The world's fastest framework for building websites"
[4]: https://github.com/HugoBlox/hugo-theme-academic-cv/blob/main/README.md?utm_source=chatgpt.com "hugo-theme-academic-cv/README.md at main - GitHub"
[5]: https://github.com/alshedivat/al-folio?utm_source=chatgpt.com "GitHub - alshedivat/al-folio: A beautiful, simple, clean, and ..."
[6]: https://github.com/inukshuk/jekyll-scholar?utm_source=chatgpt.com "GitHub - inukshuk/jekyll-scholar: jekyll extensions for the blogging ..."
[7]: https://techie5879.github.io/post/teach-courses/?utm_source=chatgpt.com "Teach academic courses | Aritra - techie5879.github.io"
[8]: https://jekyllrb.com/?utm_source=chatgpt.com "Jekyll • Simple, blog-aware, static sites | Transform your plain text ..."
[9]: https://docs.github.com/en/pages/setting-up-a-github-pages-site-with-jekyll/about-github-pages-and-jekyll?utm_source=chatgpt.com "About GitHub Pages and Jekyll"
[10]: https://github.com/marketplace/actions/hugo-deploy-github-pages?utm_source=chatgpt.com "Hugo Deploy GitHub Pages · Actions · GitHub Marketplace · GitHub"
[11]: https://quarto.org/?utm_source=chatgpt.com "Quarto"
[12]: https://astro.build/?utm_source=chatgpt.com "Astro - The web framework for content-driven websites"
[13]: https://www.11ty.dev/?utm_source=chatgpt.com "Eleventy is a simpler static site generator"
