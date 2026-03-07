---
title: Overview
description: Jekyll Laboratory Bench preview.
---

<section class="hero">
  <span class="lede">Machine Learning Researcher</span>
  <h1>Aritra Bandyopadhyay</h1>
  <p>
    I work across mechanistic interpretability, computer vision, and information retrieval. This Jekyll version is technical and clinical, focusing on clarity and structured information display.
  </p>
  <div class="route-row">
    <a class="button primary" href="{{ '/publication/' | relative_url }}">Research Output</a>
    <a class="button" href="{{ '/blog/' | relative_url }}">Lab Notes</a>
  </div>
  <div class="socials">
    <a class="pill" href="https://github.com/Techie5879">GitHub</a>
    <a class="pill" href="https://www.linkedin.com/in/aritraban/">LinkedIn</a>
    <a class="pill" href="https://scholar.google.com/citations?user=OVO39asAAAAJ&hl=en">Google Scholar</a>
  </div>
</section>

<section class="panel">
  <h2>Abstract</h2>
  <p style="font-size: 1.1rem; color: var(--text-muted); line-height: 1.6;">
    The site comparison is practical: keep the same route shape and content inventory while letting each framework show its natural defaults. In Jekyll, that means collection-driven pages, a clean reading layout, and a strong bias toward publication and CV workflows.
  </p>
</section>

<section class="panel">
  <h2>Selected Publication</h2>
  {% assign paper = site.publications | first %}
  <div class="entry">
    <span class="meta">[{{ paper.venue }}] — {{ paper.pubDate | date: "%Y" }}</span>
    <h3>{{ paper.title }}</h3>
    <p>{{ paper.description }}</p>
    <a class="button" style="padding: 6px 12px; font-size: 0.8rem;" href="{{ paper.url | relative_url }}">Access PDF</a>
  </div>
</section>

<section class="panel">
  <h2>Open Source Libraries</h2>
  <div class="grid">
    <article class="entry">
      <h3>Pandas</h3>
      <p>Flexible and powerful data analysis and manipulation library for Python.</p>
      <a class="button" style="padding: 6px 12px; font-size: 0.8rem;" href="https://github.com/pandas-dev/pandas">GitHub Repo</a>
    </article>
    <article class="entry">
      <h3>PyTorch</h3>
      <p>Deep learning framework for research code and production prototypes.</p>
      <a class="button" style="padding: 6px 12px; font-size: 0.8rem;" href="https://github.com/pytorch/pytorch">GitHub Repo</a>
    </article>
  </div>
</section>

<section class="panel">
  <h2>Latest Entry</h2>
  {% assign note = site.blog_posts | first %}
  <div class="entry">
    <span class="meta">LOG DATE: {{ note.pubDate | date: "%Y-%m-%d" }}</span>
    <h3>{{ note.title }}</h3>
    <p>{{ note.description }}</p>
    <a class="button primary" style="padding: 6px 12px; font-size: 0.8rem;" href="{{ note.url | relative_url }}">Read Log</a>
  </div>
</section>