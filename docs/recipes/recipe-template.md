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
image: account-account-type.png        # optional; placeholder shown if omitted
---
```

| Key | Notes |
| --- | --- |
| `title` | Free text. Convention: `Object: Short Name`. |
| `category` | **Always a YAML list.** Each entry is a browse-page slug. Current slugs: `account`, `account-npsp`, `contact`, `contact-npsp` (the `-npsp` pages hold recipes that depend on the Nonprofit Success Pack). List more than one slug to show the same recipe on several browse pages. The list form is required &mdash; a bare string like `category: contact-npsp` would substring-match the `contact` page. |
| `display` | **Always a list.** One or more of: `Avatar`, `Badge`, `Pill`, `Action`. This is a searchable facet on Find a Recipe. |
| `function` | **Always a list.** One or more of: `Informational`, `Soft Exceptions`, `Next Actions`, `Quantitative`, `Qualitative`, `Multiple`. This is the second searchable facet. |
| `image` | The screenshot shown on the card and the search row. Give it the same way you'd write the target of a normal `![](...)` image: a full `https://` URL, **or** just a filename &mdash; a bare filename (e.g. `account-account-type.png`) is looked up in `docs/images/recipes/`, so drop the file there and name it here. A leading-slash path like `/docs/images/recipes/x.png` also works. Omit the key entirely for the neutral placeholder. |

To add a new browse page, create `docs/recipes/<Name>.md` with `parent: Salesforce Indicators Recipes` and `category: <slug>` in its front matter, and a body of `{% raw %}{% include recipe-list.html %}{% endraw %}`.

## Body structure

Use `###` headings for each section &mdash; they're restyled small and uppercase to match the card. The layout is flexible; a typical recipe has:

```markdown
### Description

> One or two sentences on what the indicator shows and when to use it.

### Fields

| Field | Value | Notes |
| --- | --- | --- |
| sObject | `Account` | |
| Field | `Account Type` | |

### Extensions

| Field | Value |
| --- | --- |
| Priority | `1` |
| Contains Text | `Customer` |

### Preparation

- Formula fields, rollups, or permissions needed first.

### Notes

- Tips, variations, naming caveats.

### In Bundle

- [Bundle name](/docs/recipes/account/bundle-file/)

**Contributed By** Your Name, [yourGitHub](https://github.com/yourGitHub){:target="_blank"}
{: .contributed-by }
```

Repeat a **Fields** / **Extensions** section as many times as you need (one per Indicator Item and per Extension). Cross-links to other pages must be **site-absolute** (`/docs/recipes/...`) &mdash; relative links inside a recipe resolve against `/_recipes/`, not the browse page.

### The contributor line

End the file with:

```markdown
**Contributed By** Your Name, [yourGitHub](https://github.com/yourGitHub){:target="_blank"}
{: .contributed-by }
```

The `{: .contributed-by }` on its own line **directly below** the text (no blank line between) is a kramdown attribute marker &mdash; it tags that paragraph so it renders as the grey credit band across the foot of the card. Keep it as a bold `**Contributed By**` paragraph, not a `###` heading.
