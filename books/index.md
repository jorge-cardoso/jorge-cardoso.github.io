---
layout: books
title: "Books Published"
date: 
modified:
excerpt: 
tags: [books, semantic web, BPM]
image:
  feature:
  teaser: 120x120.jpg
  thumb:
ads: false
---

<div class="tiles">
{% for post in site.categories.books %}
	{% include post-grid-books.html %}
{% endfor %}
</div><!-- /.tiles -->