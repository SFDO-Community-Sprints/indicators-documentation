---
layout: default
title: Find a Recipe
parent: Salesforce Indicators Recipes
nav_order: 0
---

# Find a Recipe

Filter the cookbook's recipes by how the indicator **displays** and what it's **for**, then jump straight to the one you need. Each link opens the recipe's browse page with its card expanded.

<div class="recipe-search" id="recipe-search">

<div class="recipe-search-filters">
<div class="recipe-search-facet" data-facet="display">
<span class="recipe-search-facet-label">Display</span>
<button type="button" class="recipe-chip is-active" data-value="" aria-pressed="true">All</button>
<button type="button" class="recipe-chip chip-display" data-value="avatar" aria-pressed="false">Avatar</button>
<button type="button" class="recipe-chip chip-display" data-value="badge" aria-pressed="false">Badge</button>
<button type="button" class="recipe-chip chip-display" data-value="pill" aria-pressed="false">Pill</button>
<button type="button" class="recipe-chip chip-display" data-value="action" aria-pressed="false">Action</button>
</div>
<div class="recipe-search-facet" data-facet="function">
<span class="recipe-search-facet-label">Function</span>
<button type="button" class="recipe-chip is-active" data-value="" aria-pressed="true">All</button>
<button type="button" class="recipe-chip chip-function" data-value="informational" aria-pressed="false">Informational</button>
<button type="button" class="recipe-chip chip-function" data-value="soft-exceptions" aria-pressed="false">Soft Exceptions</button>
<button type="button" class="recipe-chip chip-function" data-value="next-actions" aria-pressed="false">Next Actions</button>
<button type="button" class="recipe-chip chip-function" data-value="quantitative" aria-pressed="false">Quantitative</button>
<button type="button" class="recipe-chip chip-function" data-value="qualitative" aria-pressed="false">Qualitative</button>
<button type="button" class="recipe-chip chip-function" data-value="multiple" aria-pressed="false">Multiple</button>
</div>
</div>

<p class="recipe-search-count" id="recipe-search-count" role="status" aria-live="polite" data-total="{{ site.recipes | size }}">{{ site.recipes | size }} of {{ site.recipes | size }} recipes</p>

<!-- role="list" restates the semantics list-style:none strips in Safari/VoiceOver -->
<ul class="recipe-search-results" id="recipe-search-results" role="list">
{% assign all = site.recipes | sort: "title" %}
{% comment %} A recipe whose `category:` list matches no browse page has
nowhere to link to, so its row is skipped (it won't appear on any browse
page either). The count above still counts it, so an "11 of 12" mismatch is
the visible signal that a recipe file has a typo'd category slug. {% endcomment %}
{% for r in all %}{% assign primary_cat = r.category | first %}{% assign cat_page = site.pages | where: "category", primary_cat | first %}{% if cat_page %}{% capture r_img %}{% include recipe-image.html image=r.image %}{% endcapture %}{% capture dkeys %}{% for d in r.display %}{% include recipe-key.html value=d %} {% endfor %}{% endcapture %}{% capture fkeys %}{% for f in r.function %}{% include recipe-key.html value=f %} {% endfor %}{% endcapture %}{% capture r_dtags %}{% include recipe-tags.html values=r.display class="rtag-d" %}{% endcapture %}{% capture r_ftags %}{% include recipe-tags.html values=r.function class="rtag-f" %}{% endcapture %}<li class="recipe-search-item" data-display="{{ dkeys | strip }}" data-function="{{ fkeys | strip }}">
<a class="recipe-search-row" href="{{ cat_page.url | relative_url }}#{{ r.slug }}">
<span class="recipe-search-row-main">
<span class="recipe-search-row-title">{{ r.title }}</span>
<span class="recipe-search-row-category">{{ cat_page.title }}</span>
</span>
<span class="recipe-search-row-media"><img src="{{ r_img | strip }}" alt="" aria-hidden="true" loading="lazy"></span>
<span class="recipe-tags">{{ r_dtags }}{{ r_ftags }}</span>
</a>
</li>
{% endif %}{% endfor %}</ul>

<p class="recipe-search-empty" id="recipe-search-empty" hidden>No recipes match the selected filters.</p>

</div>

<script>
(function () {
  var root = document.getElementById('recipe-search');
  if (!root) return; /* no-op anywhere this markup isn't present */

  /* filter the <li> items, not the links inside them, so assistive
     tech's "item N of M" counts stay in step with what's visible */
  var rows = Array.prototype.slice.call(
    root.querySelectorAll('.recipe-search-item')
  );
  var countEl = document.getElementById('recipe-search-count');
  var emptyEl = document.getElementById('recipe-search-empty');
  var total = parseInt(countEl.getAttribute('data-total'), 10) || rows.length;

  /* Single selection per facet; an empty string means "All". A recipe can
     carry several display / function values (space-separated in data-*), so
     a row matches a facet when its list contains the selected value. */
  var active = { display: '', function: '' };

  function has(row, facet, value) {
    if (value === '') return true;
    var list = (row.getAttribute('data-' + facet) || '').split(/\s+/);
    return list.indexOf(value) !== -1;
  }

  function applyFilters() {
    var visible = 0;
    rows.forEach(function (row) {
      var show = has(row, 'display', active.display) &&
                 has(row, 'function', active.function); /* facets AND together */
      row.hidden = !show;
      if (show) visible++;
    });
    countEl.textContent = visible + ' of ' + total + ' recipes';
    emptyEl.hidden = visible !== 0;
  }

  root.querySelectorAll('.recipe-search-facet').forEach(function (facet) {
    var name = facet.getAttribute('data-facet');
    var chips = Array.prototype.slice.call(
      facet.querySelectorAll('.recipe-chip')
    );

    chips.forEach(function (chip) {
      chip.addEventListener('click', function () {
        var value = chip.getAttribute('data-value');
        /* re-clicking the selected chip deselects back to "All" */
        active[name] = active[name] === value ? '' : value;
        chips.forEach(function (c) {
          var on = c.getAttribute('data-value') === active[name];
          c.classList.toggle('is-active', on);
          c.setAttribute('aria-pressed', on ? 'true' : 'false');
        });
        applyFilters();
      });
    });
  });

  applyFilters();
})();
</script>
