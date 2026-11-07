---
layout: default
title: Accessibility Tips
summary: "What Indicators gives you to work with, and what's up to you as the Admin."
parent: Build Glanceable Indicators
nav_order: 60
has_children: false
---

{% include reading-time.html %}

## Accessibility Tips

Accessibility is a shared responsibility. Salesforce Indicators is built on standard Salesforce Lightning base components, but it can't know what your colors, icons, and text mean to your users - only you can. We've improved accessibility with popovers for hover text, but we know there's more to do.

{% include toc.html %}

## Shared Responsibility

**What Indicators gives you to work with:**

* **Hover Text** on every Indicator Item, so the meaning of an Indicator doesn't rely on color alone.
* **Badges and Pills**, which show text on the page, not just an icon.

**What's up to you as the Admin:**

* **Don't rely on color alone:** Pair color with a distinct icon, or use Badges or Pills so there's text as well. Red and green on their own mean nothing to a color blind user.
* **Always set Hover Text:** Keep it short and meaningful (less than 50 characters is a good guide).
* **Check your contrast:** Use the tools on [Icon Tips and Colors](icon-tips-and-colors.md#color-accessibility) to check your colors work for all your users.
* ⚠️ **Badges without icons:** The field name hover only appears when hovering over a Badge's icon, so a Badge with no icon has no hover text, which may be an issue for screen readers.
* **Ask your users:** Test your Bundles with the people who use them every day, including anyone using assistive technology.

## Color Accessibility

As we know by the regular changes to the Salesforce colors, accessibility for different vision levels is really important, and colors are one of the big culprits of making things less accessible. So use the excellent website [whocanuse.com](https://www.whocanuse.com/){:target="_blank"} to find out if your favorite color is going to be OK for all your users. Set the font to at least 30px and bold to simulate what an icon would look like. Another option is to take a screen shot of your page, stick it in a public google doc, and run the whole page through [https://www.toptal.com/designers/colorfilter](https://www.toptal.com/designers/colorfilter){:target="_blank"}. Also see more on [Accessibility Tips](accessibility-tips.md).

{: .info-title}
>In Progress
>
>We don't have an accessibility specialist on the team yet. If that's you, we'd love your help to expand this section - see [Help Build Indicators](../guided-pathway/contribute-to-indicators.md).

## Related Content
{: .no_toc }

* [Icon Tips and Colors](icon-tips-and-colors.md) for more tips on working with colors.
* [Badges and Pills Tips and Colors](badges-and-pills.md#badge-color-tips) for colors we like for Badges and Pills. 
* [Build Glanceable Indicators](index.md) for more tips and tricks.
