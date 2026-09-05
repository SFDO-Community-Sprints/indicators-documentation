---
layout: default
title: Indicator Bundle Layout Options
parent: Add the Bundle to the Lightning Page
grand_parent: Set Up Salesforce Indicators
nav_order: 1
has_children: false
---

{: .new-title}
>NEW! Three Ways to Display a Bundle
>
>The Indicator Bundle now has an **Indicator Style** option on the component, so the same Bundle can be displayed as **Avatar** (the original icon style), **Badges**, or **Pills**. Choose the style when you [add the Bundle to your Lightning Page](../add-to-lightning-page).

## Indicator Style

Set the **Indicator Style** property on the Indicator Bundle component to choose how the Bundle displays:

| Style | What it looks like | Salesforce Base Component |
|---|---|---|
| Avatar | The original squareish (SLDS1) or round (SLDS2) icons | [Avatar](https://developer.salesforce.com/docs/platform/lightning-component-reference/guide/lightning-avatar.html){:target="_blank"} |
| Badges | Rectangles with color and an optional utility icon, showing text | [Badge](https://developer.salesforce.com/docs/platform/lightning-component-reference/guide/lightning-badge.html?type=Example){:target="_blank"} |
| Pills | Rounded rectangles with an icon and text | [Pill](https://developer.salesforce.com/docs/platform/lightning-component-reference/guide/lightning-pill.html?type=Example){:target="_blank"} |

💡 It's not recommended to have different views of the same Bundle on the same page — this is just handy for comparing styles while you're testing.

## Badges

### When to Use Badges

* Sometimes words are better than icons — Badges provide at-a-glance information that doesn't need any extra interaction, since there's no need to hover to read them.
* Badges are great for Info, Warning, Success, and Error messages — soft alerts, like missing data, rather than static facts about the record.
* Switch things up across a page: use Icons (Avatar) for static data about the record, and Badges for the things that need attention.
* Badges look great set up with the Dynamic Forms Title Style and placed right below the section of fields they relate to.

### Suggested Color Scheme

Set the dark color on **Icon Foreground** and **Badge Text Color**, and the light color on **Icon Background** (these fields are set on the [Indicator Item](../indicator-item) or [Indicator Item Extension](../item-extension)).

| Type | Icon Background (light) | Icon Foreground / Badge Text Color (dark) |
|---|---|---|
| Success | `#cdefc4` | `#194e31` |
| Warning | `#fedfd0` | `#5f3e02` |
| Error | `#feded8` | `#8e030f` |
| Info | `#d8e6fe` | `#014486` |

### Things to Note

* Changing **Avatar Indicator Shape** and **Avatar Indicator Size** has no effect on Badges.
* Badges have square corners on desktop in SLDS2, and rounded corners on Mobile and in SLDS1 themes.
* Icons only show on a Badge if there's a Utility Icon matching a standard icon. If you need an icon on a Badge, it's best to create a separate Indicator Item just for use on Badge Bundles.
* Static Text on the Indicator displays as a cog icon on Badges, rather than the text itself.
* Badges in the SLDS spec shouldn't be used for [Actions](../indicator-bundle-item/actions) — there's nothing stopping you setting one up, but it's not a great user experience.
* Keep Badge text to around 1-3 words.

{: .warning-title}
>Known Issues
>
>* The hover of the field name only appears if you hover directly over the icon — if there's no icon on the Badge, the field name won't be shown on hover at all, which may be an issue for screen readers.
>* Badge icons aren't centered vertically within the Badge, and a Badge with an icon is taller than a Badge without one.

### Badge Design Tips

* Make sure Badges have clear, understandable text and good color contrast for accessibility.
* Use Badges consistently across your org so users become familiar with what each one means.
* Don't use too many Badges in one Bundle.

## Pills

### When to Use Pills

* Pills are great when users need to see the text more than the icon — the icon just gives a splash of color rather than being the main visual indicator.
* Pills work well when the Indicator doesn't have **Hover Text** set, and just displays the field value directly.

### Things to Note

* Avatars shown on a Pill only display as a circle in SLDS2 themes on desktop. **Avatar Indicator Shape** works on Mobile and in SLDS1 themes, on both desktop and Mobile, and can show as base (square) or circle.
* Take care with the length of **Hover Text** on Pills — it can look odd on smaller screens. Aim for 3 words max, or just let the field value show.
* Apart from the icon, Pills themselves have no color.
* Pills display with some white space after the text — this is because Pills aren't removable here (unlike when they're used for tags elsewhere in Salesforce).

{: .warning-title}
>Known Issue
>
>Pill icons are not vertically centered on Mobile when a [Click Action](../indicator-bundle-item/actions) is added to the Pill.

### Pill Design Tips

* Use brief, clear labels that are immediately understandable.
* Use sentence case on Pill labels, and avoid verbs.
* Avoid overusing Pills in a crowded layout — too many Pills creates visual clutter.
* Use Pills consistently across your org so users become familiar with what each one means.

## Choosing Between Avatar, Badges, and Pills

* **Avatar** — best for at-a-glance icons where hover text gives the detail, and for a compact strip of Indicators.
* **Badges** — best when the text itself is the message (eg a status word), and users shouldn't need to hover to understand it.
* **Pills** — best when you want both an icon and visible text together, without needing a hard color association like a Badge.

You don't have to pick just one — different Bundles for the same object can use different styles depending on what they're showing.

## Next Steps

* See [Add the Bundle to the Lightning Page](../add-to-lightning-page) for the **Indicator Style** setup property.
* See [SLDS1 and SLDS2](slds2) for how Badges and Pills differ between themes.
* See [Actions](../indicator-bundle-item/actions) for making a Badge or Pill clickable.

{: .note-title}
>Claude Notes
>
>- The "Suggested Color Scheme" table (Success/Warning/Error/Info, light background + dark foreground) is exactly the kind of opinionated, reusable guidance that belongs in a shared Philosophy/design-guardrails page, cross-linked from here rather than living only on this one page - other pages (eg item-extension.md's Icon Background/Foreground fields) would benefit from pointing at the same table instead of admins inventing their own colors per Extension.
>- This page already models the Reference-vs-Opinionated split well (a plain fields/behavior section, then a separate "Design Tips" list) - good template for other setup pages that currently mix the two.
>- Consider a worked "same Bundle, three ways" screenshot (Avatar vs Badge vs Pill side by side) - the page describes the differences in words but a reader can't yet see them compared directly.

