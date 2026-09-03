---
layout: default
title: Contribute a Recipe
parent: Salesforce Indicators Recipes
nav_order: 90
---

# Contribute a Recipe

Recipes are single files in the [`/_recipes/`](https://github.com/SFDO-Community-Sprints/indicators-documentation/tree/main/_recipes) folder &mdash; **one file per recipe**. A recipe doesn't get its own page: it shows as a collapsible card on its browse page (Account, Contact, &hellip;) and as a filterable row on [Find a Recipe](find-a-recipe.md).

## File name

The file name becomes the recipe's link, e.g. `account-account-type.md` opens as `.../recipes/account/#account-account-type`. Use lowercase words separated by hyphens, starting with the object. **Don't rename a recipe file once it's published** &mdash; links to it will break.

## Front matter

The block at the very top of the file, between the `---` lines:

```
---
title: "Account: Account Type"
category: [account]
display: [Avatar]
function: [Qualitative, Multiple]
image: "![Account Type](/docs/images/recipes/account-account-type.png)"
---
```

| Key | What to put |
| --- | --- |
| `title` | Free text. Convention: `Object: Short Name`. |
| `category` | Which browse page(s) the recipe appears on, in square brackets. Choose from `account`, `account-npsp`, `contact`, `contact-npsp` (the `-npsp` pages are for recipes that need the Nonprofit Success Pack). You can list more than one, e.g. `[account, contact]`. Keep the square brackets. |
| `display` | How the indicator looks, in square brackets. One or more of `Avatar`, `Badge`, `Pill`, `Action`. This is a filter on Find a Recipe. |
| `function` | What the indicator is for, in square brackets. One or more of `Informational`, `Soft Exceptions`, `Next Actions`, `Quantitative`, `Qualitative`, `Multiple`. The other filter on Find a Recipe. |
| `image` | The picture shown on the card and the Find a Recipe row, written as a normal Markdown image **in quotes**: `"![short description](/docs/images/recipes/your-file.png)"`. The description part is just for your reference &mdash; only the path is used. Put your file in `docs/images/recipes/` and point at it with a `/docs/images/...` path, or use a full `https://` web address. Leave the line out for a plain placeholder. A square image works best. |

To add a new browse page, create `docs/recipes/<Name>.md` with `parent: Salesforce Indicators Recipes` and `category: <slug>` in its front matter, and `{% raw %}{% include recipe-list.html %}{% endraw %}` as the body.

## Body structure

Use `###` headings for each section. The layout is flexible; a typical recipe looks like this:

```markdown
### Description

> One or two sentences on what the indicator shows and when to use it.

{: .tip-title }
> Bundle
>
> Suggest which other indicators to group this one with, and link a picture of the bundle in action.

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

**Contributed By** Your Name, [yourGitHub](https://github.com/yourGitHub){:target="_blank"}
{: .contributed-by }
```

Repeat a **Fields** / **Extensions** section as many times as you need (one per Indicator Item and per Extension). When you link to another page, use a full `/docs/recipes/...` path.

### The contributor line

End the file with:

```markdown
**Contributed By** Your Name, [yourGitHub](https://github.com/yourGitHub){:target="_blank"}
{: .contributed-by }
```

Keep `{: .contributed-by }` on its own line **directly below** the text, with no blank line between &mdash; that's what turns it into the grey credit strip at the foot of the card. Keep it as a bold **Contributed By** line, not a `###` heading.
