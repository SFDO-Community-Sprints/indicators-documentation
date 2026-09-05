---
title: Home
nav_order: 1
description: "Salesforce Indicators helps users improve productivity and efficiency by providing at-a-glance visuals for your Salesforce records."
permalink: /
has_toc: false
---

## What is Salesforce Indicators?

Salesforce Indicators transforms your data with vibrant icons and colors, highlighting key details on your Salesforce records. Customize your Indicators to meet the unique needs of your users, ensuring important information stands out, making it easier to focus on what matters most.

See Salesforce Indicators in action:

[![Promo Video](/docs/images/setup/HomePageImage.png)](https://www.youtube.com/watch?v=cuvWvl_l3Do "Salesforce Indicators Promo Video"){:target="_blank"}

### Bring your data alive!

* Icons and colors to help your data stand out for example, you could use a $$$ icon to show that a contact is a high value donor. You can even use your own icons and branding to provide a familiar user experience.

* Highlight important at-a-glance information, for example flag contacts that have not opted into receiving communications

* Summarize related records, for example use icons on the Account record page to flag that it has open cases or overdue payments. 

* Highlight multi select picklist values with their own individual icon to get an overview, for example group together all the values from a product interest field to get a full picture of what an individual is interested in.

* Make exceptions visible, for example if there is a combination of field values making moving the record to the next stage impossible. 

![Indicators on a Lightning Page](/docs/images/setup/IndicatorsOnPage.png){: width="590"}

With drag and drop components onto page layouts. It’s easy to get your icons into place on the record. You also have the flexibility to use different groups of icons for different groups of users to ensure the user sees what is relevant to them.

Every icon comes with its own legend, so users are never left guessing what a colour means:

![The Indicator Key showing a bundle's icons and their meaning](/docs/images/setup/TheKey.png){: width="590"}

## Why Salesforce Indicators

Nobody reads the whole record. Salesforce Indicators is built on that admission: **stop asking your users to read the record - let them see it.** Colour and icon register almost instantly, long before anyone would read their way to the same fact in a field.

* **Information at a Glance**: Quickly identify critical information about the record at-a-glance. See what you need, where you need it.
* **Enhanced Decision-Making**: streamline the visualisation & identify trends and patterns.
* **Consistent Approach**: reuse indicators on different layouts across objects. This uniform setup ensures users become familiar with where and how key information is presented.

Want the fuller case for *why*, not just *what*? Read [Philosophy](docs/philosophy/index.md).

[How I Solved It Demo](https://admin.salesforce.com/blog/2024/visualize-key-data-and-next-actions-with-salesforce-indicators-how-i-solved-it){:target="_blank"}

## Where Should You Start?

Salesforce Indicators is useful whether you're brand new to it, already running it and looking to do more, or looking to help build it further. Pick the description that fits:

| If you... | Start here |
|---|---|
| Have never used Salesforce Indicators before | [Path 1: New to Indicators](docs/guided-pathway/new-to-indicators.md) |
| Already use it and want to add newer capabilities (Actions, Badges/Pills, Date Ranges) | [Path 2: Grow Your Org's Indicators](docs/guided-pathway/grow-your-org.md) |
| Want to help improve Indicators itself - code, docs, or ideas | [Path 3: Help Build Indicators](docs/guided-pathway/contribute-to-indicators.md) |
| *(a fourth path, not yet defined)* | [Path 4](docs/guided-pathway/path-four.md) |

See the full [Find Your Path](docs/guided-pathway/index.md) hub for a guided, step-by-step reading order down each path.

## Technical Details

Salesforce Indicators is a Custom Metadata driven Lightning Web Component (LWC) which is placed onto a Lightning Record Page to display key details about specific data on the record, using icons and colors, and displaying the information using standard Salesforce components such as Avatars, Badges, or Pills. 

* **Visualize your data**: Display different icons and colors based on the value of a field, or if the field is entered or blank. Options include value equals, value contains, date ranges using Salesforce Date Literals, and numeric value ranges. 
* **Make your data come alive**: Add a mix of Salesforce and custom colors to match your branding and create visually appealing indicators giving your users a more engaging experience. You can source icons from Salesforce SLDS, free or commercial sources, or even use Emojis.
* **Customize your Indicators**: The no-code setup involves creating Custom Metadata Type records. No complex formulas or coding required. Group Indicators into bundles for different use-cases and users. Deploy from Sandbox to production.

## Who will benefit from using Salesforce Indicators?

* Salesforce Indicators works for any Salesforce org already using Lightning Experience, and it works exceptionally well for Nonprofit orgs on NPSP or Nonprofit Cloud.
* Salesforce Administrators can easily configure Salesforce Indicators to meet the needs of their organization.
* Salesforce Users can see key details at-a-glance as they move through their records. The indicators appear, disappear, and change color as the field values change.

See a [YouTube Video](https://youtu.be/ImWTAgwSOwE){:target="_blank"} showing the basics of how the Indicators Component can be useful in your orgs.

## Get Started

* New here? Start with [Find Your Path](docs/guided-pathway/index.md) for a guided walk to your first working Bundle.
* Ready to dive in? Install via the [Salesforce Indicators Appexchange Listing](https://appexchange.salesforce.com/appxListingDetail?listingId=192aeb3a-1476-4028-a25c-954d48560eba){:target="_blank"} 
* Read more about Installation and [Getting Started with Salesforce Indicators](docs/getting-started/index.md) 
* Discover how to [Configure Salesforce Indicators](../indicators-documentation/docs/setup-salesforce-indicators/index.md)
* Get ideas and inspiration with our '[Cookbook](../indicators-documentation/docs/recipes/index.md)' which gives you instructions on how to set up some of the use cases our community has found useful! 

{: .info-title}
>In Progress
>
>This Documentation is currently under construction. 
>
>(Some old help notes may be in our old [Wiki](https://github.com/SFDO-Community/Salesforce-Indicators/wiki/)).

### Contributed By
This page has content contributed by Emma Keeling [salesforce_em](https://github.com/salesforce_em){:target="_blank"} and the team from Sprint 7: 2024  - June 4 and 5 - London.

{: .note-title}
>Claude Notes
>
>- Resolved: the "Why Salesforce Indicators" section is now a short teaser linking out to the new [Philosophy](docs/philosophy/index.md) page, and the 4-way path split now lives directly on this page under "Where Should You Start?" (Path 4 still links to a placeholder - see its own page for what's needed).
>- This page could use more real screenshots showing the newer display styles (a Badge, a Pill, an Actions click-icon) - `TheKey.png` (just added) and `IndicatorsOnPage.png` are both Avatar-only; a live org screenshot of each newer style would make the pitch feel current rather than showing only the original look.
>- "In Progress" callout has been true for a while (per TODO.md) - now that there's real Get Started, Philosophy, and Guided Pathway content, this disclaimer reads as more self-deprecating than accurate; worth removing or narrowing to name the specific pages still thin (eg Getting Started's "Use the Samples" section).
