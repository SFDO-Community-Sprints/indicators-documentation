---
layout: default
title: Find Your Path
nav_order: 2
has_children: true
has_toc: false
---

## Find Your Path

Salesforce Indicators is a flexible, no-code tool — which also means there's no single "next page" that's right for everyone. Pick the description below that sounds most like you, and follow that path. Each path links out to the existing documentation in the order that actually makes sense for that goal, instead of expecting you to figure out the reading order yourself.

{: .info-title}
>Why this page exists
>
>The rest of this site is organized like a reference manual - grouped by *component* (Bundle, Item, Bundle Item, Extension). That's the right structure once you know what you're doing, but it's a hard place to start cold, and it doesn't tell a returning admin where the *new* stuff lives either. This page is the map that sits on top of the reference manual.

## Choose Your Path

| If you... | Start here |
|---|---|
| **Have never used Salesforce Indicators before** and want to understand what it does and get the basics set up | [Path 1: New to Indicators](new-to-indicators.md) |
| **Already have Indicators running** and want to add new capabilities (Actions, Badges/Pills, Date Ranges) to your org | [Path 2: Grow Your Org's Indicators](grow-your-org.md) |
| **Already use Indicators** and want to help improve the product itself - code, docs, or ideas | [Path 3: Help Build Indicators](contribute-to-indicators.md) |
| *(A fourth path - see below)* | [Path 4](path-four.md) |

{: .warning-title}
>Path 4 is a placeholder
>
>Jodie flagged a fourth avenue to add here during the review that produced this page, but hadn't written down what it covers yet. [Path 4](path-four.md) is a stub until that's filled in - see the note on that page.

## The Guided Path, Path by Path

Think of this like a "good / better / best" pricing grid, but for reading order instead of price tiers: do the row above before the row below.

<div class="gp-grid-wrap" markdown="0" style="overflow-x:auto;">
<table>
<thead>
<tr>
<th>Step</th>
<th>Path 1: New to Indicators</th>
<th>Path 2: Grow Your Org</th>
<th>Path 3: Help Build Indicators</th>
</tr>
</thead>
<tbody>
<tr>
<td><strong>First</strong></td>
<td><a href="../why/">Why Salesforce Indicators</a></td>
<td><a href="../why/">Why + Choosing a Display Style</a> (refresher)</td>
<td><a href="../about/">About Salesforce Indicators</a></td>
</tr>
<tr>
<td><strong>Then</strong></td>
<td><a href="../install-salesforce-indicators/">Install Salesforce Indicators</a></td>
<td><a href="../setup-salesforce-indicators/indicator-bundle-item/actions.html">Actions</a> - the one new feature people ask about most</td>
<td><a href="../about/getting-ready-to-contribute.html">Get Ready to Contribute</a></td>
</tr>
<tr>
<td><strong>Then</strong></td>
<td><a href="quick-start.html">Quick Start: your first Bundle</a></td>
<td><a href="../setup-salesforce-indicators/add-to-lightning-page/badges-and-pills.html">Badges and Pills</a></td>
<td><a href="https://github.com/SFDO-Community-Sprints/Salesforce-Indicators/issues" target="_blank">Pick an open Issue</a>, or a page on this site to improve</td>
</tr>
<tr>
<td><strong>Then</strong></td>
<td><a href="../setup-salesforce-indicators/">Set Up Salesforce Indicators</a> (the full reference walkthrough)</td>
<td><a href="../setup-salesforce-indicators/item-extension.html">Date Range Extensions</a></td>
<td><a href="../recipes/recipe-template.html">Contribute a Recipe</a></td>
</tr>
<tr>
<td><strong>Later</strong></td>
<td><a href="../recipes/">Recipes</a> for ideas once the basics feel comfortable</td>
<td><a href="../recipes/share.html">Preview and Share Recipes</a></td>
<td><a href="../about/sprints/">Join a Sprint</a></td>
</tr>
</tbody>
</table>
</div>

{: .tip-title}
>Reused, not duplicated
>
>This grid links to the single source of truth for each topic rather than re-explaining it here - see the note about Jekyll `{% raw %}{% include %}{% endraw %}` reuse in [Structural Improvements](../about/structural-improvements.md) for where duplicating whole sections of prose (rather than linking to them) is worth avoiding, and where a shared include is worth it instead.

## A Second Kind of Help Doc

Most of the pages linked above are **reference documentation** - here's the field, here's what it does. That's necessary, but it doesn't tell you *when* to use a Badge instead of a Pill, or *why* three "Next Up" actions on one page is usually one too many. The [Why Salesforce Indicators](../why/) page is the start of that more opinionated, "here's what actually works" voice - lean on it, especially for Path 2.

### Contributed By
This page was drafted by Claude, working from a review of the existing documentation, for Jodie Miners to edit and take ownership of.
