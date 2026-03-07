---
title: Catalogue
description: Jekyll Archival Index preview.
---

<section class="hero">
  <img src="/media/avatar.jpg" alt="Aritra" />
  <h1>Aritra Bandyopadhyay</h1>
  <span class="lede">Machine Learning Researcher</span>
  <p>
    I work across mechanistic interpretability, computer vision, and information retrieval. This Jekyll version is structured like a library catalogue card: calm, organized, and academic.
  </p>
  <div class="route-row">
    <a class="button primary" href="{{ '/publication/' | relative_url }}">View Records</a>
    <a class="button" href="/media/resume.pdf">Dossier</a>
  </div>
  <div class="socials">
    <a href="https://github.com/Techie5879">GitHub</a>
    <a href="https://www.linkedin.com/in/aritraban/">LinkedIn</a>
    <a href="https://scholar.google.com/citations?user=OVO39asAAAAJ&hl=en">Google Scholar</a>
  </div>
</section>

<section class="panel">
  <h2>Subject Focus</h2>
  <div class="entry">
    <p style="text-align: center;">
      The site comparison is practical: keep the same route shape and content inventory while letting each framework show its natural defaults. In Jekyll, that means collection-driven pages, a clean reading layout, and a strong bias toward publication and CV workflows.
    </p>
  </div>
</section>

<section class="panel">
  <h2>Prominent Record</h2>
  {% assign paper = site.publications | first %}
  <div class="entry">
    <span class="meta">ID: PUB-{{ paper.pubDate | date: "%Y" }} | {{ paper.venue }}</span>
    <h3>{{ paper.title }}</h3>
    <p>{{ paper.description }}</p>
    <a class="button" style="margin-top: 16px;" href="{{ paper.url | relative_url }}">Retrieve Document</a>
  </div>
</section>

<section class="panel">
  <h2>Open Source Artefacts</h2>
  <div class="grid">
    <article class="entry">
      <span class="meta">ID: OSS-001</span>
      <h3>Pandas</h3>
      <p>Flexible and powerful data analysis and manipulation library for Python.</p>
    </article>
    <article class="entry">
      <span class="meta">ID: OSS-002</span>
      <h3>PyTorch</h3>
      <p>Deep learning framework for research code and production prototypes.</p>
    </article>
  </div>
</section>