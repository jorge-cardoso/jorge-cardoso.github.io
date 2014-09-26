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
    <a href="{{ post.url }}">{{ post.title }}</a> {{ date | date_to_long_string }}
  </li>
  {% endfor %}
</ul>


