---
layout: default
title: Set Up Salesforce Indicators
summary: "An overview of every feature of Indicators and where to find the help docs."
nav_order: 40
has_children: true
---
{% include reading-time.html %}

{% include toc.html %}

# How Indicators Works

Salesforce Indicators is at it's core, a Lightning Web Component (LWC) driven by Custom Metadata:

{% include erd-diagram.html %}

🆕Control any actions the user can take by clicking on an Indicator, by setting up the **Indicator Bundle Items**.

When placed on a page, an **Indicator Bundle** can show Indicators as Avatars, 🆕Badges or Pills, giving the options of showing colorful icons, text, or both icon and text. 

# Indicators Feature Navigator

Every feature of Salesforce Indicators, and where to find it in our Help Docs. There are **New Features** that you may not have discovered yet, so this page may help. Eg if you want to know where Date Ranges are covered, see Extensions below.

## Indicators Setup
{: .no_toc }

* **New** Create new [Indicator Bundle](indicator-bundle.md), [Indicator Item](indicator-item.md), [Indicator Bundle Item](indicator-bundle-item.md) or [Indicator Item Extension](item-extension.md). 
* **[Indicator Settings](indicator-item.md#edit-an-existing-indicator-item)** - Indicator Items that are already linked to a Bundle through an Indicator Bundle Item.
* **[Unbundled Items](indicator-item.md#edit-an-existing-indicator-item)** - Items not yet linked to any Bundle - listed separately on the Indicator Settings Component.
* 🆕**[Export and Share](../recipes/share.md)** - Export your Bundles and Items as a JSON Recipe file to share with other Admins.
* 🆕**[Preview and Import](../recipes/share.md)** - Preview a Recipe shared by someone else, and import the Metadata straight into your org.

## Lightning Page
{: .no_toc }

* **[SLDS1 and SLDS2](../best-practices/slds2.md)** - the visual differences between the two Salesforce themes, and what to plan for.
* **[Dynamic Forms](add-to-lightning-page.md#optional-setup-items)** - the Title Style that matches a Dynamic Forms field section.
* **[Dark Mode](../best-practices/slds2.md#dark-mode)** - turning on Dark Mode, and designing Indicators that work in it.

## Bundles
{: .no_toc }

* 🆕**[Indicator Style](add-to-lightning-page.md#indicator-style)** - choose how the whole Bundle displays.
    * [Avatar](../best-practices/badges-and-pills.md#choosing-a-display-style-avatar-badge-or-pill) - the original icon style.
    * 🆕[Badges](../best-practices/badges-and-pills.md#badges) - a soft validation-style message, text with an optional icon.
    * 🆕[Pills](../best-practices/badges-and-pills.md#pills) - an icon and text shown together.
* **[Layout Style](add-to-lightning-page.md#optional-setup-items)** - choose how the Bundle's title area looks.
    * [Dynamic Forms](add-to-lightning-page.md#optional-setup-items) - matches the look of a Dynamic Forms field section.
    * [Card](add-to-lightning-page.md#optional-setup-items) - looks like a regular Lightning Page component.
* **[Parent / Grandparent](add-to-lightning-page.md#mapped-id-field)** - show a Bundle based on a related record, using the Mapped Id Field.
* 🆕**[Field Values in Popover](add-to-lightning-page.md#popovers-for-every-indicator)** - show the field's value in the Popover when Hover Text is blank.
* **[The Key](the-key.md)** - a legend explaining every Indicator on the page, and a shortcut to its setup.
* 🆕**[Refresh](add-to-lightning-page.md#optional-setup-items)** - the Refresh Button for Admins making changes while setting up a Bundle.

## Items
{: .no_toc }

* **[Configuration](indicator-item.md#indicator-item-fields)** - how an Indicator Item displays when its field has a value.
* **[Inverse Configuration](indicator-item.md#indicator-item-fields)** - **Show when False or Blank** and the Inverse settings for when it doesn't.
* **[Display Multiple](../best-practices/display-multiple.md)** - show every matching Extension icon at once, instead of just one.

## Extensions
{: .no_toc }

* **[Text Comparisons](item-extension.md#text-or-date-value)** - Contains, Does Not Equal, Equals, and Starts With.
* **[Numeric Ranges](item-extension.md#indicator-item-extension-fields)** - Minimum and Maximum values for Number, Currency, or Percent fields.
* 🆕**[Date Ranges](item-extension.md#text-or-date-value)** - Date Literals and relative date comparisons, like `NEXT 30 DAYS`.

## Bundle Items
{: .no_toc }

* **[Reusing Items in Bundles](indicator-bundle-item.md)** - show the same Indicator Item on more than one Bundle.
* 🆕**[Actions](../best-practices/actions.md)** - turn an Indicator into something users can click.

## Flows
{: .no_toc }

* **[Indicators](../components/flows.md#single-indicator-item-in-flow)** - a single, configurable Indicator on a Flow Screen.
* 🆕**[Bundles](../components/flows.md#indicator-bundle-in-flow)** - the full Indicator Bundle on a Flow Screen.

## Experience Cloud
{: .no_toc }

* 🆕**[Bundles](../components/experience-cloud.md)** - using the Indicator Bundle on an Experience Cloud Record Page.

## Related Content
{: .no_toc }

* [Build Glanceable Indicators](../best-practices/index.md) for tips, tricks, and design guidance.
* [Known Issues](../technical-documentation/known-issues.md) for known bugs and limitations.
