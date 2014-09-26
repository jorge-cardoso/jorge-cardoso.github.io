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
--- 

  
<ul>
  {% for post in site.categories.blog  %} 
  <li>
    <a href="{{ post.url }}">{{ post.title }}</a> {{ page.date | date: "%-d %B %Y" }}
  </li>
  {% endfor %}
</ul>


