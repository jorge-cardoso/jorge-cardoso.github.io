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

  
<!-- Search form -->
<form method="get" action="/search" data-search-form>
<!--    <label for="q">Search term</label> -->
    <input type="search" name="q" id="q" placeholder="Enter search term" data-search-input />
    <input type="submit" value="Search" />
</form>

<!-- Search results placeholder -->
<p data-search-found>
  <span data-search-found-count></span> result(s) found for &ldquo;<span data-search-found-term></span>&rdquo;.
</p>
<div data-search-results></div>

<!-- Search result template -->
<script type="text/x-template" id="search-result">
    <div>
      <p><a href="##Url##">##Title##</a> (##Date##)</p>
      
    </div>
</script>

<h3>Posts</h3>
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
