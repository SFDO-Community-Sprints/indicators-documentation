---
layout: default
title: Getting Started with Salesforce Indicators
nav_order: 30
has_children: true
---

# Getting Started with Salesforce Indicators

See [Install Salesforce Indicators](../install-salesforce-indicators/index.md) if you have not already installed Salesforce Indicators.

{: .tip-title}
>More to Come!
>
>The main Salesforce Indicators component is the Indicator Bundle. The Indicator Bundle is highly configurable and can be styled in at least 6 different ways on a record page.  
>Other [Components](../components) are the Flow Components and the Experience Cloud Component. 
>We are currently working on a new UI which will make setup of the Indicators much easier, but it is still a while away. 
>We also have some new [Components](../components) planned - to show Indicators in different ways. 
>See [How to Volunteer](../about/how-to-volunteer.md) if you would like to help us build out these exiting new features.

## Structure of Salesforce Indicators

This is how the 4 Salesforce Indicators Custom Metadata Objects work together set up the Indicators.

![Salesforce Indicators Data Model](../images/setup/DataStructure.png){: width="590"}

* **Indicator Item** defines what value or icon to display. The basic setup allows for an icon to be displayed if the selected field is entered, or blank.
* **Indicator Item Extension** defines conditional display of icons based on specific field values, such as a different icon for Hot, Warm, or Cold. Can include text comparisons, date ranges, and value ranges. 
* **Indicator Bundle Item** places an Item in a Bundle and controls the order of the Item in the Bundle. This allows one Indicator Item to be displayed in multiple Bundles. 
* **Indicator Bundle** groups Indicator Items specifically for one object and your desired use case. The Indicator Bundle is added to the Lightning Record Page and can be configured further for different display options. Multiple Bundles can be created for each Object, and conditionally displayed on the Lightning Record Page using [Component Visibility](https://help.salesforce.com/s/articleView?id=sf.lightning_page_components_visibility.htm&type=5){:target="_blank"}.

## Sample Use Cases for Salesforce Indicators

See [Recipes](../recipes/index.md) for ideas of different Indicators to use in your Org. 

## Use the Samples

{: .info-title}
>In Progress
>
>This page needs to be extended describing the [Sample Indicators] and [Training Indicators] and including screen shots and videos.

### Contributed By
This page has content contributed by Gautam Kolan [gkolan](https://github.com/gkolan){:target="_blank"}