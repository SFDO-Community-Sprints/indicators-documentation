---
layout: default
parent: Components
title: Flow Components
nav_order: 2
has_children: false
---

## Flow Components

Salesforce Indicators has two Flow componentsL

* **Indicator Bundle** - the full Bundle, displayed exactly as it would be on a Record Page.
* **Indicator Item** - a single, completely configurable Indicator for when you just need one Indicator on a Flow Screen.

{: .new-title}
>🆕 Indicator Bundle in Flow
>
>The full [Indicator Bundle](../components/bundle.md) is now available as a Flow component too. The single Indicator Item component is a quick setup option for when you just want one or two configurable Indicators on a Flow Screen.

## Indicator Bundle in Flow

Drop the **Indicator Bundle** component onto your Flow Screen and it displays exactly as it would on a Record Page, using the Avatar style.

* Choose the **Indicator Bundle** to display - you can use an existing Bundle, or create one specifically for this Flow.
* Enter the **Record Id** property - use a Flow variable holding the Id of the record the Bundle should display Indicators for (eg `{!recordId}` on a Record-Triggered Flow, or a variable you've populated earlier in the Flow).
* The other display properties (Title, Description, Size, Shape) work the same as [Add the Bundle to the Lightning Page](add-to-lightning-page).
* Badges ane Pills will come to Indicator Bundles in Flows at a later date.

{: .info-title}
>In Progress
>
>Add screen shots and an example of the Indicator Bundle component set up in a Flow.

## Single Indicator Item in Flow

For a completely configurable single Indicator (rather than a full Bundle), use the **Indicator Item** Flow component below.

## Setup

* Add the Indicator Item component to the Flow Screen
* Enter the fields similarly to how you would set up the [Indicator Item](../setup/indicator-item/index.md) in Custom Metadata Setup. 
* *API Name* - the Name for this component in the Flow
* *Indicator Shape* - enter `base` or `circle`
* *Indicator Size* - enter `medium` or `large`
* *Background Color* and *Foreground Color* - enter a value of a HTML Color (`blue`) or Hex Code (`#0000FF`). See [Icon Colors](../best-practices/icon-colors.md) for tips.
* *Hover Text* - enter the text that will be displayed on hover. 
* *Icon* - enter the name of an SLDS Icon to display as the Indicator (eg `standard:account`). See See [Icon Tips](../best-practices/icon-tips.md) for more details.
* *Image* - alternatively enter a full URL of an icon image to display. See notes on [Indicator Item](../setup/indicator-item/index.md) for images and icons.
* *Static Text* - enter static text to be displayed instead of the SLDS Icon. The text will be displayed on the SLDS Icon's colored background. Eg entering `{!recordId}` for a Flow on and Account record will display `001`

![Indicator Item Flow Setup](../images/setup/FlowSetupIndicatorItem.png){: width="590"}

## Example

This example is set up to show the Indicators that are displayed based on the values in the 'Areas of Interest' Multi Select Picklist field. 
![Example Indicator Items in Flow](../images/setup/FlowScreen.png){: width="590"}

## Things to Note

* You can use all the features of Flow, like Formulas, Text Templates, Variables etc to set the values in the Indicator Item component, so there are many cool things that you can do with this Component. 
* It's best to put the Indicator Item components in a Section, or the Indicator will display in-line with the text below - but for a single Indicator on the Screen Flow, that could look great. 
* Always set up conditional visibility to not display the Indicator Item Component if no Indicator will be displayed based on the record value. 
* Also set up the conditional visibility of the Section so the Section will not display if no Indicators will be visible based on the record value. 

{: .info-title}
>In Progress
>
>Add more screen shots and tips for using Indicators in Flow.

