---
title: Home
nav_order: 1
description: "Salesforce Indicators helps users improve productivity and efficiency by providing at-a-glance visuals for your Salesforce records."
permalink: /
has_toc: false
---

## What is Salesforce Indicators?

Salesforce Indicators transforms your data with vibrant icons and colors, turning key field values into at-a-glance information. You decide what shows, when it shows and how it looks, so every Indicator fits the way your users work and the facts they need are the first thing they see on the record.

See Salesforce Indicators in action:

<iframe width="560" height="315" src="https://www.youtube.com/embed/cuvWvl_l3Do?si=EP4aoRPsryDfQf-v&rel=0" title="Salesforce Indicators Promo Video" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

## Why Salesforce Indicators?

Nobody reads the whole record. Salesforce Indicators is built on that admission: **stop asking your users to read the record - let them see it.** Color and icons register almost instantly, long before anyone would read their way to the same fact in a field.

* **Information at a Glance**: Quickly identify critical information about the record. See what information you need right where you are already working.
* **Enhanced Decision-Making**: Help your users spot exceptions and patterns, see the next action needed to move a record along, or focus on the reason the record exists in your org.
* **Consistent Approach**: reuse indicators on different layouts across objects, so your users once where to look, and what each icon and color means.

Want to delve deeper into the thinking behind Indicators? Read our [Get to the Point](/docs/philosophy/index.md) page. 

## Technical Details

* Salesforce Indicators is a Custom Metadata driven Lightning Web Component (LWC). Add it to a Lightning Record Page and it shows key details about specific data on the record, using icons and colors.
* Indicators are built individually and have customizable color, icon, text, popover text, and even an action button **❗NEW**.
* Indicators are displayed on the Lighting Record Page using standard Salesforce base components such as Avatars, Badges, or Pills. 

Want to see what's under the hood? Dive into the [Architecture & Technical Documentation](/docs/technical-documentation/index.md). 


## Who will benefit from using Salesforce Indicators?

* Salesforce Indicators works for any Salesforce org already using Lightning Experience, and it works exceptionally well for Nonprofit orgs on NPSP or Nonprofit Cloud.
* Salesforce Administrators can configure Indicators to meet the needs of their organization and users.
* Users can see key details at-a-glance as they move through their records. Indicators appear, disappear, and change color as the field values change.

[Watch a video](https://youtu.be/ImWTAgwSOwE){:target="_blank"} covering the basics of Indicators.

## Get Started

Not sure where to start? See [Your Path to Success](docs/guided-pathway/index.md) for a guided walk-through to building your first working Bundle.

{: .info-title}
>In Progress
>
>This documentation is always in progress. 
>
>See the **Help Build Indicators** path on [Your Path to Success](/docs/guided-pathway/index.md) to find out how to help improve this documentation.

## Contributed
By This page has content contributed by Emma Keeling [salesforce_em](https://github.com/salesforce_em){:target="_blank"} and the team from Sprint 7, London 4-5 June 2024.

{% comment %}
This page could use more real screenshots showing the newer display styles (a Badge, a Pill, an Actions click-icon) - `TheKey.png` (just added) and `IndicatorsOnPage.png` are both Avatar-only; a live org screenshot of each newer style would make the pitch feel current rather than showing only the original look.
{% endcomment %}


