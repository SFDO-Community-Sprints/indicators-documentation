---
layout: default
title: Contribute a Recipe
parent: Salesforce Indicators Recipes
nav_order: 90
---

# Contribute a Recipe

Recipes are single markdown files in the [`/_recipes/`](https://github.com/SFDO-Community-Sprints/indicators-documentation/tree/main/_recipes) folder at the repo root &mdash; **one file per recipe**. They don't produce their own page: each recipe is rendered as a collapsible card on its browse page (Account, Contact, &hellip;) and as a filterable row on [Find a Recipe](find-a-recipe.md).

## File name

The file name becomes the recipe's anchor and its deep-link URL, e.g. `account-account-type.md` links as `.../recipes/account/#account-account-type`. Use lowercase words separated by hyphens, prefixed with the object. **Never rename a published recipe file** &mdash; external links to it break.

## Front matter

```yaml
---
title: "Account: Account Type"          # shown on the card and in search
category: [account]                     # browse page(s) this appears on - a LIST
display: [Badge]                        # Avatar | Badge | Pill | Action - a LIST
function: [Qualitative, Multiple]       # see options below - a LIST
image: /docs/images/recipes/my-pic.png  # optional; a placeholder shows if omitted
---
```

| Key | Notes |
| --- | --- |
| `title` | Free text. Convention: `Object: Short Name`. |
| `category` | **Always a YAML list.** Each entry is a browse-page slug (`account`, `contact`, &hellip;). List more than one to show the same recipe on several browse pages. Slugs must stay flat &mdash; none a substring of another. |
| `display` | **Always a list.** One or more of: `Avatar`, `Badge`, `Pill`, `Action`. This is a searchable facet on Find a Recipe. |
| `function` | **Always a list.** One or more of: `Informational`, `Soft Exceptions`, `Next Actions`, `Quantitative`, `Qualitative`, `Multiple`. This is the second searchable facet. |
| `image` | Path (or full URL) to a screenshot. Local images go in `docs/images/recipes/`. Omit it and a neutral placeholder is used on the card and the search row. |

To add a new browse page, create `docs/recipes/<Name>.md` with `parent: Salesforce Indicators Recipes` and `category: <slug>` in its front matter, and a body of `{% raw %}{% include recipe-list.html %}{% endraw %}`.

## Body structure

Write the body with **bold pseudo-headings**, not `#` headings &mdash; the card is already inside a heading, so `#` headings there add noise to the page outline. The layout is flexible; a typical recipe has:

```markdown
**Description**

> One or two sentences on what the indicator shows and when to use it.

**In Bundle**

- [Bundle name](/docs/recipes/account/bundle-file/)   <!-- use a site-absolute path: relative links from a recipe resolve against /_recipes/, not the browse page -->


**Fields &mdash; Indicator Item**

| Field | Value | Notes |
| --- | --- | --- |
| sObject | `Account` | |
| Field | `Account Type` | |

**Fields &mdash; Extension: <name>**

| Field | Value |
| --- | --- |
| Priority | `1` |

**Preparation**

- Formula fields, rollups, or permissions needed first.

**Notes**

- Tips, variations, naming caveats.

**Contributed By** Your Name, [yourGitHub](https://github.com/yourGitHub){:target="_blank"}
```

Repeat the **Fields** block as many times as needed (one per Indicator Item and per Extension). End the file with the **Contributed By** line as its own paragraph &mdash; it renders as the grey credit band at the foot of the card.
