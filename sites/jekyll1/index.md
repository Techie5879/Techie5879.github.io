---
title: Abstract
description: Jekyll preview inspired by the academic paper.
---

<section class="hero">
  <img src="/media/avatar.jpg" alt="Portrait of Aritra Bandyopadhyay" />
  <div>
    <h1>Aritra Bandyopadhyay</h1>
    <p class="lede">ML Researcher, IIEST Shibpur</p>
    <p>
      I work across mechanistic interpretability, computer vision, and information retrieval. This Jekyll version is intentionally designed to evoke the reading experience of a classical academic paper: serene, readable, and deeply focused on content.
    </p>
    <div class="route-row">
      <a class="button primary" href="{{ '/publication/' | relative_url }}">Browse Publications</a>
      <a class="button" href="{{ '/blog/' | relative_url }}">Read Notes</a>
      <a class="button" href="/media/resume.pdf">Curriculum Vitae</a>
    </div>
    <div class="socials">
      <a class="pill" href="https://github.com/Techie5879">GitHub</a>
      <a class="pill" href="https://www.linkedin.com/in/aritraban/">LinkedIn</a>
      <a class="pill" href="https://scholar.google.com/citations?user=OVO39asAAAAJ&hl=en">Google Scholar</a>
    </div>
  </div>
</section>

<section class="columns">
  <article class="panel">
    <h2>Research Focus</h2>
    <p>
      The site comparison is practical: keep the same route shape and content inventory while letting each framework show its natural defaults. In Jekyll, that means collection-driven pages, a clean reading layout, and a strong bias toward publication and CV workflows.
    </p>
  </article>
  
  <article class="panel">
    <h2>Featured Publication</h2>
    {% assign paper = site.publications | first %}
    <div class="entry">
      <h3>{{ paper.title }}</h3>
      <span class="meta">{{ paper.venue }} — {{ paper.pubDate | date: "%Y" }}</span>
      <p>{{ paper.description }}</p>
      <p><a class="button" href="{{ paper.url | relative_url }}">Read Paper</a></p>
    </div>
  </article>
</section>

<section class="panel">
  <h2>Selected Open Source</h2>
  <div class="grid">
    <article class="entry">
      <h3>Pandas</h3>
      <p>Flexible and powerful data analysis and manipulation library for Python.</p>
      <p><a class="button" href="https://github.com/pandas-dev/pandas">Source Code</a></p>
    </article>
    <article class="entry">
      <h3>PyTorch</h3>
      <p>Deep learning framework for research code and production prototypes.</p>
      <p><a class="button" href="https://github.com/pytorch/pytorch">Source Code</a></p>
    </article>
  </div>
</section>

<section class="panel">
  <h2>Recent Notes</h2>
  {% assign note = site.blog_posts | first %}
  <div class="entry">
    <h3>{{ note.title }}</h3>
    <span class="meta">{{ note.pubDate | date: "%B %d, %Y" }}</span>
    <p>{{ note.description }}</p>
    <p><a class="button primary" href="{{ note.url | relative_url }}">Read Entry</a></p>
  </div>
</section>