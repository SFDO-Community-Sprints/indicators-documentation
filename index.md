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

## Why Salesforce Indicators

* **Information at a Glance**: Quickly identify critical information about the record at-a-glance. See what you need, where you need it.
 
* **Enhanced Decision-Making**: streamline the visualisation & identify trends and patterns.
 
* **Consistent Approach**: Consistency: reuse indicators on different layouts across objects. This uniform setup ensures users become familiar with where and how key information is presented.

[How I Solved It Demo](https://admin.salesforce.com/blog/2024/visualize-key-data-and-next-actions-with-salesforce-indicators-how-i-solved-it){:target="_blank"}

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
>- The "Why Salesforce Indicators" section here (3 bullets) duplicates the name of docs/why/index.md, which is a much deeper page with a different job (a reasons/reference table, not a pitch). Consider renaming one of the two so "Why" isn't shared by a 3-bullet pitch and a full opinionated-guidance page - see docs/about/structural-improvements.md #4.
>- This is the natural home for Tim's path split ("never used Indicators," "used it, want to enhance," "used it, want to help build," plus a 4th TBD avenue) - see the new docs/guided-pathway/index.md hub, which could be linked prominently from here (or this page's "Get Started" list folded into it).
>- "In Progress" callout has been true for a while (per TODO.md) - once the Guided Pathway pages land, this note could be replaced with a link to them instead of a generic disclaimer.
 
