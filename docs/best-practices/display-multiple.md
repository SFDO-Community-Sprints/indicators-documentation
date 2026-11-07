---
layout: default
title: Display Multiple Tips
summary: "Showing several icons at once from a single field."
parent: Build Glanceable Indicators
nav_order: 70
has_children: false
---

{% include reading-time.html %}

## Display Multiple
{: .no_toc }

This is an excellent feature for use with Multi Select Picklists or [DLRS](https://sfdo-community-sprints.github.io/DLRS-Documentation/) rollups using *Concatenate Distinct*

{% include toc.html %}

## Set Up Display Multiple
* Check **Display Multiple** on the [Indicator Item](../setup/indicator-item.md) setup for this Indicator.. 
* For Example, you have a field on Contact named **Product Categories** that is a DLRS rollup of all the Product Families the Contact currently owns. Configure multiple Extensions with different Icons = eg **Product Categories** Contains `PHON`, **Product Categories** Contains `LPTP`, and **Product Categories** Contains `WTCH`. then if the Contact owns all three you will see 3 icons on the Contact Page. 

{% include dlrs-tip.html %}

## Tips for Display Multiple

* We recommend including this Indicator in a Bundle on it's own, depending on how many icons are in your Extensions.
* We don't recommend using **Display Multiple** with Date fields. 
* See [Find a Recipe](../recipes/find-a-recipe.md) and click `Multiple` in the Function group.
* See [Indicator Examples](../recipes/examples.md) for some excellent examples we have previously built. 


## Related Content
{: .no_toc }

* [Build Glanceable Indicators](index.md) for more tips and tricks.
