---
title: Home
description: Jekyll Bauhaus preview.
---

<section class="hero">
  <div>
    <h1>Aritra Bandyopadhyay</h1>
    <span class="lede">ML Researcher</span>
    <p>
      I work across mechanistic interpretability, computer vision, and information retrieval. This Jekyll version is intentionally bold, utilizing geometric shapes and primary colors.
    </p>
    <div class="route-row">
      <a class="button primary" href="{{ '/publication/' | relative_url }}">Publications</a>
      <a class="button" href="{{ '/blog/' | relative_url }}">Notes</a>
    </div>
    <div class="socials">
      <a class="pill" href="https://github.com/Techie5879">GitHub</a>
      <a class="pill" href="https://www.linkedin.com/in/aritraban/">LinkedIn</a>
      <a class="pill" href="https://scholar.google.com/citations?user=OVO39asAAAAJ&hl=en">Scholar</a>
    </div>
  </div>
  <img src="/media/avatar.jpg" alt="Portrait" />
</section>

<section class="columns">
  <article class="panel">
    <h2 style="background: var(--accent);">Focus</h2>
    <div class="entry">
      <p>
        The site comparison is practical: keep the same route shape and content inventory while letting each framework show its natural defaults. In Jekyll, that means collection-driven pages and a bold aesthetic.
      </p>
    </div>
  </article>
  
  <article class="panel">
    <h2>Highlight</h2>
    {% assign paper = site.publications | first %}
    <div class="entry">
      <span class="meta">{{ paper.venue }} — {{ paper.pubDate | date: "%Y" }}</span>
      <h3>{{ paper.title }}</h3>
      <p>{{ paper.description }}</p>
      <p style="margin-top: 24px;"><a class="button" href="{{ paper.url | relative_url }}">View Pub</a></p>
    </div>
  </article>
</section>

<section class="panel">
  <h2 style="background: var(--accent-blue); color: #fff;">Projects</h2>
  <div class="grid">
    <article class="entry">
      <h3>Pandas</h3>
      <p>Flexible and powerful data analysis and manipulation library for Python.</p>
      <p style="margin-top: 24px;"><a class="button" href="https://github.com/pandas-dev/pandas">Repo</a></p>
    </article>
    <article class="entry">
      <h3>PyTorch</h3>
      <p>Deep learning framework for research code and production prototypes.</p>
      <p style="margin-top: 24px;"><a class="button" href="https://github.com/pytorch/pytorch">Repo</a></p>
    </article>
  </div>
</section>

<section class="panel">
  <h2>Updates</h2>
  {% assign note = site.blog_posts | first %}
  <div class="entry">
    <span class="meta" style="background: var(--accent);">{{ note.pubDate | date: "%B %d, %Y" }}</span>
    <h3>{{ note.title }}</h3>
    <p>{{ note.description }}</p>
    <p style="margin-top: 24px;"><a class="button primary" href="{{ note.url | relative_url }}">Read Entry</a></p>
  </div>
</section>