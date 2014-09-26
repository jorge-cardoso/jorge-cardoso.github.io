---
layout: article
title: "Blog"
date: 
modified:
excerpt: Thoughts on research ... 
tags: []
image:
  feature:
  teaser:
  thumb:
ads: false
toc: true
search_omit: true
---

  
<ul>
  {% for post in site.posts %}
  <li>
    <a href="{{ post.url }}">{{ post.title }}</a>
  </li>
  {% endfor %}
</ul>


<!-- jQuery - required but can be moved to the <head> -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>

<!-- Search script - Must appear after template -->
<script src="/js/search.js"></script>
