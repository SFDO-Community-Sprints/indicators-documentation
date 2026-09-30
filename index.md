---
title: Home
nav_order: 1
description: "Salesforce Indicators helps users improve productivity and efficiency by providing at-a-glance visuals for your Salesforce records."
permalink: /
has_toc: false
---

## What is Salesforce Indicators?

Salesforce Indicators transforms your data with vibrant icons and colors, turning key field values into at-a-glance information. You decide what shows and when, so the facts your users need are the first thing they see.

See Salesforce Indicators in action:

{% include youtube.html id="cuvWvl_l3Do" title="Salesforce Indicators Promo Video" %}

## Get Started

Not sure where to start? See [Your Path to Success](docs/guided-pathway/index.md) for a guided walk-through to building your first working Indicator Bundle.

## Why Salesforce Indicators?

Nobody reads the whole record. Salesforce Indicators is built on that admission: **stop asking users to read the record - let them see it.** Color and icons register almost instantly, long before anyone would read their way to the same fact in a field.

* **Information at-a-glance**: Quickly identify critical information about the record. See what information you need right where you are already working.
* **Enhanced decision-making**: Help your users spot exceptions and patterns, see what's needed next to move a record along, or focus on the reason the record exists in your org.
* **Consistent approach**: Reuse the same indicators across different layouts and objects, so users learn once where to look, and what each icon and color means.

Want to delve deeper into the thinking behind Indicators? Read our [Why Salesforce Indicators](/docs/philosophy/index.md) page. 

## Technical Details

* Salesforce Indicators is a Lightning Web Component (LWC) driven by Custom Metadata. Add it to a Lightning Record Page it shows key details from the record as icons and colors, using standard Salesforce components: Avatars, Badges or Pills.
* Indicators are built individually and have customizable color, icon, text, popover text, and even an action button 🆕.
* Indicators are displayed on the Lighting Record Page using standard Salesforce base components such as Avatars, Badges, or Pills.

### The Custom Metadata Types

* **Indicator Item** defines what value or icon to display. The basic setup allows for an icon to be displayed if the selected field is entered, or blank.
* **Indicator Item Extension** defines conditional display of icons based on specific field values, such as a different icon for Hot, Warm, or Cold. Can include text comparisons, date ranges, and value ranges. 
* **Indicator Bundle Item** places an Item in a Bundle and controls the order of the Item in the Bundle. This allows one Indicator Item to be displayed in multiple Bundles. 
* **Indicator Bundle** groups Indicator Items specifically for one object and your desired use case. The Indicator Bundle is added to the Lightning Record Page and can be configured further for different display options. Multiple Bundles can be created for each Object, and conditionally displayed on the Lightning Record Page using Component Visibility.

Want to see what's under the hood? Dive into the [Architecture & Technical Documentation](/docs/technical-documentation/index.md). 

## Who will benefit from using Salesforce Indicators?

* Salesforce Indicators works for any Salesforce org already using Lightning Experience, and it works exceptionally well for Nonprofit orgs on NPSP or Nonprofit Cloud.
* Salesforce Administrators configure Indicators to meet the needs of their organization and users.
* Users see key details at-a-glance as they move through their records. Indicators appear, disappear, and change color as field values change.

[Watch a video](https://youtu.be/ImWTAgwSOwE){:target="_blank"} covering the basics of Indicators.


{: .info-title}
>In Progress
>
>This documentation is always in progress. 
>
>Want to help? See **Help Build Indicators** on [Your Path to Success](/docs/guided-pathway/index.md) to find out how to help improve this documentation.

## Contributed By
This page has content contributed by:
* Emma Keeling [salesforce_em](https://github.com/salesforce_em){:target="_blank"} and the team from Sprint 7, London 4-5 June 2024 
* Gautam Kolan [gkolan](https://github.com/gkolan){:target="_blank"}

{% comment %}
This page could use more real screenshots showing the newer display styles (a Badge, a Pill, an Actions click-icon) - `TheKey.png` (just added) and `IndicatorsOnPage.png` are both Avatar-only; a live org screenshot of each newer style would make the pitch feel current rather than showing only the original look.
{% endcomment %}


