---
title: Home
description: Jekyll preview inspired by the academic al-folio ecosystem.
---

<section class="hero">
  <img src="/media/avatar.jpg" alt="Portrait of Aritra Bandyopadhyay" />
  <div>
    <p class="lede">Academic profile + clean publication-first navigation</p>
    <h1>Aritra Bandyopadhyay</h1>
    <p>ML Researcher | Undergrad · IIEST Shibpur</p>
    <p>
      I work across mechanistic interpretability, computer vision, and information retrieval. This Jekyll version is intentionally closer to the academic portfolio ecosystem: publication-first, tidy, and readable.
    </p>
    <div class="route-row">
      <a class="button primary" href="{{ '/publication/' | relative_url }}">Browse publications</a>
      <a class="button" href="{{ '/blog/' | relative_url }}">Read notes</a>
      <a class="button" href="/media/resume.pdf">Resume</a>
    </div>
    <div class="socials">
      <a class="pill" href="https://github.com/Techie5879">GitHub</a>
      <a class="pill" href="https://www.linkedin.com/in/aritraban/">LinkedIn</a>
      <a class="pill" href="https://scholar.google.com/citations?user=OVO39asAAAAJ&hl=en">Scholar</a>
      <a class="pill" href="mailto:aritraxban@gmail.com">Email</a>
    </div>
  </div>
</section>

<section class="columns">
  <article class="panel">
    <h2>Research at a glance</h2>
    <p>
      The site comparison is practical: keep the same route shape and content inventory while letting each framework show its natural defaults. In Jekyll, that means collection-driven pages, a clean reading layout, and a strong bias toward publication and CV workflows.
    </p>
  </article>
  <article class="panel">
    <h2>Featured publication</h2>
    {% assign paper = site.publications | first %}
    <div class="entry">
      <img src="/media/publication-conference-paper.png" alt="Publication preview" />
      <h3>{{ paper.title }}</h3>
      <p class="meta">{{ paper.venue }} · {{ paper.pubDate | date: "%Y" }}</p>
      <p>{{ paper.description }}</p>
      <p><a class="button" href="{{ paper.url | relative_url }}">View publication</a></p>
    </div>
  </article>
</section>

<section class="panel">
  <h2>Projects</h2>
  <div class="grid">
    <article class="entry">
      <h3>Pandas</h3>
      <p>Flexible and powerful data analysis and manipulation library for Python.</p>
      <p><a class="button" href="https://github.com/pandas-dev/pandas">Repository</a></p>
    </article>
    <article class="entry">
      <h3>PyTorch</h3>
      <p>Deep learning framework for research code and production prototypes.</p>
      <p><a class="button" href="https://github.com/pytorch/pytorch">Repository</a></p>
    </article>
    <article class="entry">
      <h3>Scikit-learn</h3>
      <p>Reliable baseline toolkit for classical ML and reproducible experiments.</p>
      <p><a class="button" href="https://github.com/scikit-learn/scikit-learn">Repository</a></p>
    </article>
  </div>
</section>

<section class="panel">
  <h2>Recent writing</h2>
  {% assign note = site.blog_posts | first %}
  <div class="entry">
    <h3>{{ note.title }}</h3>
    <p class="meta">{{ note.pubDate | date: "%Y-%m-%d" }}</p>
    <p>{{ note.description }}</p>
    <p><a class="button primary" href="{{ note.url | relative_url }}">Read post</a></p>
  </div>
</section>
