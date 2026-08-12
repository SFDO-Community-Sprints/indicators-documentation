---
layout: default
title: Components
parent: Getting Started with Salesforce Indicators
nav_order: 40
has_children: true
---

## Components

### Indicator Bundle
The main Component of Salesforce Indicators right now is the [Indicator Bundle](../setup-salesforce-indicators/indicator-bundle.md).

The Indicator Bundle can be set up to display as:

#### Avatar
The default component style with squareish (Default for SLDS1) or round (Default for SLDS2) icons. Other options are small or large icons, showing a bundle for a related record, and different header options. 

#### Badges
Salesforce standard [Badges](https://developer.salesforce.com/docs/platform/lightning-component-reference/guide/lightning-badge.html?type=Example){:target="_blank"} component, which shows as text, with or without icons. 

#### Pills 
Salesforce standard [Pills](https://developer.salesforce.com/docs/platform/lightning-component-reference/guide/lightning-pill.html?type=Example){:target="_blank"} component where an Icon and text can be shown together. 

{: .tip-title}
>Dynamic Forms
>
>The Indicator Bundle can be configured to display as a regular card layout, or as a layout that looks great when added between Dynamic Forms field sections.   

### Flow Components
These components have the same configuration as the *Indicator Bundle* component, with the added benefit of passing in Flow Variables as needed, and using all the other Flow styling options. See [Add Indicator Bundle to Lightning Page](../setup-salesforce-indicators/add-to-lightning-page.md) for setup options and [Indicator Bundle Item](..\setup-salesforce-indicators\indicator-bundle-item.md) for the field values to use in Single Indicator Flow Components. 

#### Indicator Bundle for Flow
Drop an Indicator Bundle into your Flow and it displays exactly as it would on a record page, using the Avatar style. You can even create a Bundle with different Indicator Items that is used specifically for a Flow.

#### Indicator Item
A completely configurable single Indicator in the Avatar style - can be used in a Flow section with multiple Indicators to function like a Bundle.

#### Indicator Badge
A completely configurable single Indicator in the Badge style. 

#### Indicator Pill
A completely configurable single Indicator in the Pill style.  

### Experience Cloud Components
The Indicator Bundle has been added to be used in Experience Cloud. This component is in _Beta_ so please add any comments or thoughts on our [Trailblazer Community Group](https://trailhead.salesforce.com/trailblazer-community/groups/0F94S000000HEDASA4){:target="_blank"}

## New Components
However, we are not stopping there. We have exciting new Components coming soon...

How about a Component that allows you to help users see at a glance what data is missing from the record, or not filled in correctly. This is super helpful for example when you have a Document Generation document (like Conga or Drawloop) that relies on fields from the record to be filled in correctly, or you have an integration that will fail if fields are not filled in correctly.

How about a component that you build the LWC's HTML yourself and can display it on the page in a completly customisable way to suit your org.

See [How to Volunteer](../about/how-to-volunteer.md) if you would like to help us build out these exiting new features.

## Original Component
The original Component [Indicator List](indicator-list) has been deprecated (but it still works if it is in your org). We highly recommend installing the app from the Appexchange and using all the new features.

## Other Components and Apps
One of the tenents of The Commons is that we need to also show you what else is out there, and what other apps could do similar things to our app. We invite you to submit a review for any app that helps you enhance your Lihgtning Pages. See the Table Of Contents below for the apps we have reviewed. 
