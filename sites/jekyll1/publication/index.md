---
title: Publications
description: Publication index in the Jekyll preview.
---

<section class="panel">
  <h1>Publications</h1>
  <p class="lede">A publication list is the center of gravity in many Jekyll academic sites, so this preview keeps that emphasis.</p>
</section>

<section class="entries">
  {% assign papers = site.publications | sort: 'pubDate' | reverse %}
  {% for paper in papers %}
    <article class="entry">
      <img src="/media/publication-conference-paper.png" alt="Publication preview image" />
      <h2>{{ paper.title }}</h2>
      <p class="meta">{{ paper.venue }} · {{ paper.pubDate | date: "%Y" }}</p>
      <p>{{ paper.description }}</p>
      <p><a class="button primary" href="{{ paper.url | relative_url }}">View publication</a></p>
    </article>
  {% endfor %}
</section>
