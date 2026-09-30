---
layout: default
title: The Indicator Bundle
parent: Set Up Salesforce Indicators
nav_order: 1
has_children: false
---

{% include step-progress.html parent="Set Up Salesforce Indicators" %}

See [Install Salesforce Indicators](../install-salesforce-indicators/) if you have not already installed Salesforce Indicators.

{% include erd-diagram.html focus="b" %}

## Indicator Bundle

An Indicator Bundle is a Collection of Indicator Items for display on the Lightning Record Page. Multiple Bundles can be created for each Object, and conditionally displayed on the Lightning Record Page using Visibility Rules.  

## Add a new Indicator Bundle
{% include open-indicator-setup.html new="Indicator Bundle" %}

## Edit an existing Indicator Bundle

* Go to the Tab **Indicators Setup** Tab: 
  * Choose the Indicator Bundle from the drop down list. The existing bundle details will be displayed.
  * Click the **Edit Bundle** button

OR, alternatively

* Edit the Settings in CMDT:
  * Navigate to Salesforce **Setup** > **Custom Metadata Types**
  * Scroll to **Indicator Bundles** and click **Manage Records**
  * Click **Edit** next to the Bundle you want to edit

## Indicator Bundle Fields

|Field|Example Value|Description|Tip|
|---------|----------|-------------------|--------------------------|
|Label|`Account Bundle`||Include the Object Name in the Label
|Indicator Bundle Name|`Account_Bundle`|The API name|Make the API Name the same as the Label, but include underscores instead of spaces
|Card Title|`Account Indicators`|Shows at top of card|
|sObject|`Account`|Choose the Object that this Bundle will be for|
|Card Icon|`standard:account`|The Icon name from [SLDS Icons](https://www.lightningdesignsystem.com/icons/){:target="_blank"}|Use default icons such as `standard:account`, `standard:opportunity`
|Card Icon Background| |Override the color of the icon's background|💎SLDS1 Only
|Card Icon Background| |Override the color of the icon's foreground|💎SLDS1 Only
|Card Text|`Key Indicators for Account`|The text to display below the Card Title
|Active|`true`||Uncheck Active if you need to quickly remove the Bundle from being visible on the page
|Description|`Shown on the Account page for standard Business Accounts`||Be an angel and write something useful here, _especially_ if you have more than one bundle for the same Object. Your future self will thank you.

## Indicator Bundle Tips

* See [Building Glanceable Indicators](../best-practices/index.md) for lots of design tips and tricks. 

## Known Issues

* Color overrides on Bundle Icons do not work in SLDS2 at this stage. There is a feature in Developer Preview so we do hope to bring this back in the next few releases. For now, stick with an SLDS1 Theme if you rely on the excellent functionality of Color overrides. 

## Next Steps

* Use the New button to add a new [Indicator Item](indicator-item), and continue to add more Items
* Use the New button to add a new [Indicator Bundle Item](indicator-bundle-item) to link the Bundle to the Item
* Add the Bundle to your [Lightning Page](add-to-lightning-page) and check [The Key](the-key)
* Optionally use the **New** button to add a new [Indicator Item Extension](item-extension) to an existing Item
* Watch the 🎥 [Setup Video](https://www.youtube.com/watch?v=f76BGw0H2kg){:target="_blank"} for more details on how to setup Salesforce Indicators.


