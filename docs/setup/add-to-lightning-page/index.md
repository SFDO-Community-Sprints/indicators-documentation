---
layout: default
title: Add the Bundle to the Lightning Page
parent: Set Up Salesforce Indicators
nav_order: 5
has_children: true
---

{% include step-progress.html parent="Set Up Salesforce Indicators" max_steps=5 %}

The [Indicator Bundle](../indicator-bundle) is added to the Lightning Record Page. You can have as many **Indicator Bundles** on Lightning Record Pages as needed. 

{: .new-title}
>🆕 Indicator Style
>
>Choose how the whole Bundle displays with the new **Indicator Style** property - **Avatar** (the original icon style), **Badges**, or **Pills**. See [Indicator Bundle Layout Options](badges-and-pills) for the details of each style.

## Add the Bundle to your Lightning Page

### Basic Setup

* Edit your Lightning Record Page (eg Account), and add the **Indicator Bundle** Component by dragging it to the desired location.
    * We recommend starting with the top right hand corner of a regular Lightning Page Layout.
* Choose the **Indicator Bundle** to show on the Page (eg Account Company Details). Ensure it is the correct Bundle to display for that Object.
* Choose the **Indicator Style** - `Avatar`, `Badges`, or `Pills`. See [Indicator Bundle Layout Options](badges-and-pills) for more on each style.
* Optionally choose to **Display Title** 
* Optionally choose to **Display Description**
* Choose the **Indicator Size** - `large` or `medium` (💎SLDS1 Only)
* Choose the **Indicator Shape** - `base` or `circle` (💎SLDS1 Only). This only applies to the Avatar style - see [Indicator Bundle Layout Options](badges-and-pills) for how it affects Badges and Pills.

### Optional Setup Items
* Choose the **Title Style** either to look like regular Lightning Pages (similar to Related Record Component), or to look like Dynamic Forms pages. 
* Optionally choose to show the **Refresh Button**. This is useful whilst you are setting up your Bundles. The Refresh Button will only display to those with the *Indicators Setup Access* Permission Set.  

### Mapped Id Field
* Optionally use the **Mapped Id Field** to choose to base the Indicator Bundle on a record that is a Lookup from the displayed record. Eg enter 'AccountId' to display your Account Company Details Bundle on the Contact page. 
* When the Bundle is displayed from a Related Record (Mapped Id Field), you can show a footer on the Bundle that notes which record the Bundle is based on. 
* Example: 
    * To show the Parent Account's `Account Company Info` Bundle on the Account, enter `ParentId` as the Mapped Id Field and check Show Footer.💡Hide the Bundle using *Conditional Visibility* if there is no Parent Account.
    * To show the Parent Account's Parent Account (the Grandparent Account) `Account Company Info` Bundle on the Account, enter `Parent.ParentId` as the Mapped Id Field and check Show Footer. 💡Hide the Bundle if there is no Parent Account, as there will be no Grandparent Account either. 

{: .info-title}
>In Progress
>
>Add some screen shots and explanations of where you would use the Mapped ID Field.

## Next Steps

* See [Build Glanceable Indicators](../../best-practices/index.md) for more tips and tricks for placing the Indicator Bundles on the Page
* Use the New button to add a new [Indicator Item](../indicator-item), and continue to add more Items
* Use the New button to add a new [Indicator Bundle Item](../indicator-bundle-item) to link the Bundle to the Item
* Check [The Key](../the-key)


