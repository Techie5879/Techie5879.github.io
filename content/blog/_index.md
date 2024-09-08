---
title: Technical Blog
summary: My Technical Blogs
type: landing

cascade:
  - _target:
      kind: page
    params:
      show_breadcrumb: true

sections:
  - block: collection
    id: blog
    content:
      title: Technical Blog
      filters:
        folders:
          - blog
    design:
      view: article-grid
      columns: 2
---
