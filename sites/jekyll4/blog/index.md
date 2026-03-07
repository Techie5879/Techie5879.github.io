---
title: Technical Blog
description: Blog index in the Jekyll preview.
---

<section class="panel">
  <h1>Technical Blog</h1>
  <p class="lede">The route uses a custom Jekyll collection so the URL shape matches `/blog/<slug>/` exactly.</p>
</section>

<section class="entries">
  {% assign posts = site.blog_posts | sort: 'pubDate' | reverse %}
  {% for post in posts %}
    <article class="entry">
      <img src="/media/blog-llms.jpg" alt="Blog preview image" />
      <h2>{{ post.title }}</h2>
      <p class="meta">{{ post.pubDate | date: "%Y-%m-%d" }}</p>
      <p>{{ post.description }}</p>
      <div class="route-row">
        {% for category in post.categories %}
          <span class="pill">{{ category }}</span>
        {% endfor %}
      </div>
      <p><a class="button primary" href="{{ post.url | relative_url }}">Read post</a></p>
    </article>
  {% endfor %}
</section>
