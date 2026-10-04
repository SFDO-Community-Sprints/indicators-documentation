---
layout: default
title: The Indicator Bundle Item
parent: Set Up Salesforce Indicators
nav_order: 3
has_children: true
---

{% include step-progress.html parent="Set Up Salesforce Indicators" %}

The Indicator Bundle Items link an [Indicator Item](../indicator-item) to an [Indicator Bundle](../indicator-bundle). This allows you to set up different bundles that will display at different times or for different sets of users, but re-use the same **Indicator Items** on multiple **Indicator Bundles**. 

{% include erd-diagram.html focus="bi" %}

## Indicator Bundle Item

An Indicator Bundle Item displays the Indicator Item on the Indicator Bundle. This allows for one Indicator Item to be created and displayed on multiple Indicator Bundles.

{: .new-title}
>🆕Click an Indicator to do something!
>
>Indicators can now have [Actions](../indicator-bundle-item/actions.md)!  
>Enter a URL or a Flow name and the Avatar, Badge, or Pill Indicator turns into a button shown.
>Users click the button to be taken to another record, an external website, a report, or the button can launch a Flow or Quick Action. See the [Actions](actions) page for all the details.

## Add a new Indicator Bundle Item
{% include open-indicator-setup.html new="Indicator Bundle Item" %}

## Edit an existing Indicator Bundle Item

* Go to the *Indicator Settings* Tab
  * Choose the Indicator Bundle from the drop down list. The existing bundle details will be displayed.
  * Click the *Edit Bundle* button
  * Click *Edit* next to the *Indicator Bundle Item* in the related list

OR, alternatively:

* Edit the Settings in CMDT:
  * Navigate to Salesforce *Setup* > *Custom Metadata Types*
  * Scroll to *Indicator Bundle Items*, and click *Manage Records*
  * Click *Edit* next to the Bundle Item you want to edit


## Indicator Bundle Item Fields

|Field|Example Value|Description|Tip|
|---------|----------|-------------------|--------------------------|
|**Detail Section**|
|Label|`Contact Default Mobile`|Give it a descriptive name|Include the Object Name
|Indicator Bundle Item Name|`Contact_Default_Mobile`|The API name
|Indicator Bundle|`Contact Default`|Choose the Indicator Bundle from the List|Type part of the name in the lookup fields and it will auto complete them on Save|
|Indicator Item|`Contact Mobile`|Choose the Indicator Item from the List|Type part of the name in the lookup fields and it will auto complete them on Save|
|Order|`10`|The Order this Indicator will appear in the Bundle|Use increments of 10 or more when setting up the Order, so you can add new Indicators in between without re-ordering the whole bundle. Eg 10, 20, 30, then add a new Indicator at 14 later|
|**Click Action Settings Section**|
|Action Type|`URL`|Choose **Flow (Modal)** or **URL** to make this Indicator clickable|See [Actions](../indicator-bundle-item/actions.md) for full details on all the Action fields
|Action Button Label|`Open Report`|The text shown to the user on the action button
|Action Target|`/lightning/r/Report/00OXX0000000001/view?fv0={!Id}`|The flow API name, or the URL to open|Supports merge fields eg {!Name}
|Action Help Text|`Show the latest report`|Explanatory text shown when the Indicator is hovered over
|Action Confirmation Required|`false`|Whether the user must hover and click the action button, or can click the Indicator directly
|Show Action When False or Blank|`false`|Whether the Action shows even when the underlying field is false or blank


## Next Steps
* 🆕 See more details on [Actions](../indicator-bundle-item/actions.md)
* Add Optional [Extensions](../item-extension)
* Add the Bundle to your [Lightning Page](../add-to-lightning-page) and check [The Key](../the-key)

