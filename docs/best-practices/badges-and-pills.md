---
layout: default
title: Badges and Pills Tips and Colors
summary: "Choosing a display style, Badge colors, and icon tips for Badges and Pills."
parent: Build Glanceable Indicators
nav_order: 30
has_children: false
---

{% include reading-time.html %}

## Badges and Pills Tips and Colors
{: .no_toc }

The same Bundle can be displayed three ways using the **Indicator Style** option on the [Indicator Bundle component](../setup/add-to-lightning-page.md#indicator-style): **Avatar** (the original icons), **Badges**, or **Pills**.

{% include toc.html %}

## Choosing a Display Style: Avatar, Badge, or Pill

Avatar is the default display component. Use Badge or Pill when it makes sense for that bundle.

| Component | Best for | Why |
|---|---|---|
| **Avatar** (default) | Icons and colors that mean something to your users | A simple, compact way to show an icon or value without implying a status |
| **Badge** | Soft validation states — success, info, warning | Badge is built to carry a validation-style message at a glance |
| **Pill** | Anywhere you need the icon *and* the text together | Useful when the icon alone isn't enough to identify what's being shown |

{: .tip-title}
>Indicator Colors
>
>When you want to display one Indicator as a Badge or Pill in one Bundle and an Avatar in another Bundle, please consider your color and icon choices wisely, as what looks right in an Avatar may not look right in a Badge or Pill. 

{: .tip-title}
>Badges and Pills, how to tell them apart
>
>In SLDS2, pills sort of have a pill shape. However, in SLDS1 it's opposite as Badges have a more rounded shape.

### Pills

#### When to Use Pills
{: .no_toc }

* Pills are great when users need to see the text more than the icon — the icon just gives a splash of color rather than being the main visual indicator.
* Pills work well when the Indicator doesn't have **Hover Text** set, and just displays the field value directly.

#### Things to Note
{: .no_toc }

* Avatars shown on a Pill only display as a circle in SLDS2 themes on desktop. **Avatar Indicator Shape** works on Mobile and in SLDS1 themes, on both desktop and Mobile, and can show as base (square) or circle.
* Take care with the length of **Hover Text** on Pills — it can look odd on smaller screens. Aim for 3 words max, or just let the field value show.
* Apart from the icon, Pills themselves have no color.
* Pills display with some white space after the text — this is because Pills aren't removable here (unlike when they're used for tags elsewhere in Salesforce).

{: .issue-title}
>Known Issues
>
>Pill icons are not vertically centered on Mobile when an [Action](actions.md) is added to the Pill, and are not centered vertically on desktop either. 
>
>See [Known Issues](../technical-documentation/known-issues.md) for the full list.

#### Pill Design Tips
{: .no_toc }

* Use brief, clear labels that are immediately understandable.
* Use sentence case on Pill labels, and avoid verbs.
* Avoid overusing Pills in a crowded layout — too many Pills creates visual clutter.
* Use Pills consistently across your org so users become familiar with what each one means.

### Badges

#### When to Use Badges
{: .no_toc }

* Sometimes words are better than icons — Badges provide at-a-glance information that doesn't need any extra interaction, since there's no need to hover to read them.
* Badges are great for Info, Warning, Success, and Error messages — soft alerts, like missing data, rather than static facts about the record.
* Switch things up across a page: use Icons (Avatar) for static data about the record, and Badges for the things that need attention.
* Badges look great set up with the Dynamic Forms Title Style and placed right below the section of fields they relate to.

#### Things to Note
{: .no_toc }

* Changing **Avatar Indicator Shape** and **Avatar Indicator Size** has no effect on Badges.
* Badges have square corners on desktop in SLDS2, and rounded corners on Mobile and in SLDS1 themes.
* Icons only show on a Badge if there's a Utility Icon matching a standard icon. If you need an icon on a Badge, it's best to create a separate Indicator Item just for use on Badge Bundles.
* Static Text on the Indicator displays as a cog icon on Badges, rather than the text itself.
* Badges in the SLDS spec shouldn't be used for [Actions](actions.md) — there's nothing stopping you setting one up, but it's not a great user experience.
* Keep Badge text to around 1-3 words.

{: .issue-title}
>Known Issues
>
>The hover of the field name only appears if you hover directly over the icon — if there's no icon on the Badge, the field name won't be shown on hover at all, which may be an issue for screen readers. Badge icons also aren't centered vertically within the Badge, and a Badge with an icon is taller than a Badge without one. 
>
?See [Known Issues](../technical-documentation/known-issues.md#badges-and-pills) for the full list.

#### Badge Design Tips
{: .no_toc }

* Make sure Badges have clear, understandable text and good color contrast for accessibility.
* Use Badges consistently across your org so users become familiar with what each one means.
* Don't use too many Badges in one Bundle.

### Choosing Between Avatar, Badges, and Pills

* **Avatar** — best for at-a-glance icons where hover text gives the detail, and for a compact strip of Indicators.
* **Badges** — best when the text itself is the message (eg a status word), and users shouldn't need to hover to understand it.
* **Pills** — best when you want both an icon and visible text together, without needing a hard color association like a Badge.

You don't have to pick just one — different Bundles for the same object can use different styles depending on what they're showing.

## Badge Color Tips

Using Success, Warning and Info colors is a great way to use Badges. A simple trick is rather than typing in fixed color values for the colors, you can use SLDS2 Global Styling Hooks. Just enter the full text shown below into the CMDT fields when building your Indicator Item or Indicator Item Extension. [SLDS2 Styling Hooks](https://www.lightningdesignsystem.com/2e1ef8501/p/98b493-styling-hook-index){:target="_blank"} will convert to the correct colors for when users change to Dark Theme, whereas entering a hex color value or html color name stays that exact value when in a Dark or Light Theme.  

**Styling Hooks Values (💎 SLDS2 only)** 

| State | Icon/Badge Background | Icon Foreground | Badge/Pill Text Color |
|---|---|---|---|
| Success | `var(--slds-g-color-success-container-1)` | `var(--slds-g-color-on-success-1)` | `var(--slds-g-color-on-success-1)` |
| Warning | `var(--slds-g-color-warning-container-1)` | `var(--slds-g-color-on-warning-1)` | `var(--slds-g-color-on-warning-1)` |
| Error | `var(--slds-g-color-error-container-1)` | `var(--slds-g-color-on-error-1)` | `var(--slds-g-color-on-error-1)` |
| Info | `var(--slds-g-color-info-container-1)` | `var(--slds-g-color-on-info-1)` | `var(--slds-g-color-on-info-1)` |

**Hex Values Light** 

| State | Icon/Badge Background | Icon Foreground | Badge/Pill Text Color |
|---|---|---|---|
| Success| `#ACF3E4` | `#056764` | `#056764` |
| Warning| `#F9E3B6` | `#8C4B02` | `#8C4B02` |
| Error| `#FDDDE3` | `#B60554` | `#B60554` |
| Info| `#D8E6FE` | `#0B5CAB` | `#0B5CAB` |

**Hex Values Dark (💎 SLDS2 only)** 

| State | Icon/Badge Background | Icon Foreground | Badge/Pill Text Color |
|---|---|---|---|
| Success| `#ACF3E4` | `#024D4C` | `#024D4C` |
| Warning| `#F9E3B6` | `#6F3400` | `#6F3400` |
| Error| `#FDDDE3` | `#8A033E` | `#8A033E` |
| Info | `#D8E6FE` | `#014486` | `#014486` |

{: .info-title}
>In Progress
>
>We need a recipe that demonstrates Badges and Pills end to end - from the Indicator Items and Extensions through to the Bundle on the Lightning Page.

## Badge and Pill Icon Tips

As Badges and Pills display so very differently in SLDS1 vs SLDS2, it's important to check the Icons you are using for Badges and Pills. Here are some general observations: 

* Pills SLDS1 and SLDS2 generally show the standard and custom icons well. Utility icons may be too large for the circle background. 
* Badges SLDS1 and SLDS2 try to automatically find the closest utility icon to the selected icon. The icons can look vastly different in size eg an icon that is entered as a utility icon already `utility:location` will show as larger than standard or custom icons that are automatically displayed. Some icons will not have an equivalent utility icon and will not display. Care needs to be taken to decide which icons work well with Badges. 

## Related Content
{: .no_toc }

* [Indicator Style](../setup/add-to-lightning-page.md#indicator-style) for how to set the display style when adding the Bundle to the Lightning Page.
* [Icon Tips and Colors](icon-tips-and-colors.md) for picking colors that work well together and with the SLDS palette.
* [Indicator Actions](actions.md) for making a Badge, Pill, or Avatar clickable.
* [SLDS1 and SLDS2](slds2.md) for the broader differences between the Salesforce themes, and Dark Mode.
* [Known Issues](../technical-documentation/known-issues.md#badges-and-pills) for the full list of Badges and Pills known issues.
* [Build Glanceable Indicators](index.md#gallery-of-indicator-styles-and-themes) for a gallery of what each style looks like across SLDS1, SLDS2, and Dark Mode, plus more tips and tricks for Indicator Items, Icons, and Colors.



