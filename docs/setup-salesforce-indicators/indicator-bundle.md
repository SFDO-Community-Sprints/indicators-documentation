---
layout: default
title: The Indicator Bundle
parent: Set Up Salesforce Indicators
grand_parent: Getting Started with Salesforce Indicators
nav_order: 1
has_children: false
---

See [Install Salesforce Indicators](../../install-salesforce-indicators/) if you have not already installed Salesforce Indicators.

![Indicator Bundle](../images/technical/Bundle-Highlight.png){: width="590"}

## Indicator Bundle

An Indicator Bundle is a Collection of Indicator Items for display on the Lightning Record Page. Multiple Bundles can be created for each Object, and conditionally displayed on the Lightning Record Page using Visibility Rules.  
<br>
## Add a new Indicator Bundle
{% include open-indicator-setup.html new="Indicator Bundle" %}

## Edit an existing Indicator Bundle

* Go to the Tab *Indicators Setup* Tab: 
  * Choose the Indicator Bundle from the drop down list. The existing bundle details will be displayed.
  * Click the *Edit Bundle* button

OR, alternatively

* Edit the Settings in CMDT:
  * Navigate to Salesforce *Setup* > *Custom Metadata Types*
  * Scroll to *Indicator Bundles* and click *Manage Records*
  * Click *Edit* next to the Bundle you want to edit

## Indicator Bundle Fields

|Field|Example Value|Description|Tip|
|---------|----------|-------------------|--------------------------|
|Label|`Account Bundle`||Include the Object Name in the Label
|Indicator Bundle Name|`Account_Bundle`|The API name|Make the API Name the same as the Label, but include underscores instead of spaces
|Card Title|`Account Indicators`|Shows at top of card|
|sObject|`Account`|Choose the Object that this Bundle will be for|
|Card Icon|`standard:account`|The Icon name from [SLDS Icons](https://www.lightningdesignsystem.com/icons/){:target="_blank"}|Use default icons such as `standard:account`, `standard:opportunity`
|Card Text|`Key Indicators for Account`|The text to display below the Card Title
|Active|`true`||Uncheck Active if you need to quickly remove the Bundle from being visible on the page
|Description|`Shown on the Account page for standard Business Accounts`||Be an angel and write something useful here, _especially_ if you have more than one bundle for the same Object. Your future self will thank you.

## Indicator Bundle Tips

**💡Setup Tips**

* When adding the Indicator Bundle to the Lightning Record Page, check the *Show Refresh Button* Checkbox. That way, as you are building your Indicators, you can quickly refresh the Bundle to see how the changes to the settings will appear on your page. 

**💡Design Tips**

* Titles and Icons are not required on Bundles, but they look best when the Large Icons are shown. a Bundle of small Icons used in a strip (see Examples) can look good with no Title and Icon. 
* If in doubt, just use the standard icon matching that record (eg `standard:account`)
* Don't use too many colors or icon styles. Try to stick with the [SLDS color pallette](https://www.lightningdesignsystem.com/design-tokens/){:target="_blank"}
* See [Additional Complementary Apps and Components to Enhance Your Org](/indicators-documentation/docs/components/other-solutions/)

## Next Steps

* Use the New button to add a new [Indicator Item](../indicator-item), and continue to add more Items
* Use the New button to add a new [Indicator Bundle Item](../indicator-bundle-item) to link the Bundle to the Item
* Add the Bundle to your [Lightning Page](../add-to-lightning-page) and check [The Key](../components/the-key)
* Optionally use the *New* button to add a new [Indicator Item Extension](../item-extension) to an existing Item
* Watch the 🎥 [Setup Video](https://www.youtube.com/watch?v=f76BGw0H2kg){:target="_blank"} for more details on how to setup Salesforce Indicators.

{: .note-title}
>Claude Notes
>
>- "Setup Tips" and "Design Tips" here are both bolded inline headers rather than callout boxes (compare indicator-item/index.md, which uses tip-title boxes for the same two categories) - worth making this consistent site-wide, since the visual distinction is part of what makes Setup vs Design tips scannable.
>- The Design Tip "If in doubt, just use the standard icon matching that record" is good, quotable advice that would fit well in a future Philosophy/guardrails page alongside the "don't use too many colors" guidance repeated across several pages.
>- This page duplicated the "Go to Indicators Setup Tab" screenshots that are now a shared include (see _includes/open-indicator-setup.html, applied here) - the Bundle-Fields table further down could similarly be checked against indicator-item/index.md's field table for any format/column drift, since Bundle and Item field tables both use the same four-column shape but were clearly written independently.


