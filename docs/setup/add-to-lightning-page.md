---
layout: default
title: Add the Bundle to the Lightning Page
summary: "Place the Bundle on the page and choose Avatar, Badge, or Pill style."
parent: Set Up Salesforce Indicators
nav_order: 5
has_children: false
---

{% include reading-time.html %}

{% include step-progress.html parent="Set Up Salesforce Indicators" max_steps=6 %}

## Add the Bundle to the Lightning Page
{: .no_toc }

The [Indicator Bundle](indicator-bundle) is added to the Lightning Record Page. You can have as many **Indicator Bundles** on Lightning Record Pages as needed. 

{: .new-title}
>🆕 Indicator Style
>
>Choose how the whole Bundle displays with the new **Indicator Style** property - **Avatar** (the original icon style), **Badges**, or **Pills**. See [Indicator Style](#indicator-style) for the details of each style.

{% include toc.html %}

## Add the Bundle to your Lightning Page

### Basic Setup

* Edit your Lightning Record Page (eg Account), and add the **Indicator Bundle** Component by dragging it to the desired location.
    * We recommend starting with the top right hand corner of a regular Lightning Page Layout.
* Choose the **Indicator Bundle** to show on the Page (eg Account Company Details). Ensure it is the correct Bundle to display for that Object.
* Choose the **Indicator Style** - `Avatar`, `Badges`, or `Pills`. See [Indicator Style](#indicator-style) for more on each style.
* Optionally choose to **Display Title** 
* Optionally choose to **Display Description**
* Choose the **Indicator Size** - `large` or `medium` (💎Avatar only)
* Choose the **Indicator Shape** - `base` or `circle` (💎SLDS1 only, Avatar only). This only applies to the Avatar style - see [Indicator Style](#indicator-style) for how it affects Badges and Pills.

### Optional Setup Items
* Choose the **Title Style** either to look like regular Lightning Pages (similar to the Related Record Component), or to look like Dynamic Forms pages. 
* 💡 Optionally choose to show the **Refresh Button**. This is useful whilst you are setting up your Bundles. The Refresh Button will only display to those with the *Indicators Setup Access* Permission Set. 

### Mapped Id Field
* Optionally use the **Mapped Id Field** to choose to base the Indicator Bundle on a record that is a Lookup from the displayed record. Eg enter 'AccountId' to display your Account Company Details Bundle on the Contact page. 
* When the Bundle is displayed from a Related Record (Mapped Id Field), you can show a footer on the Bundle that notes which record the Bundle is based on. 
* Example: 
    * To show the Parent Account's `Account Company Info` Bundle on the Account, enter `ParentId` as the Mapped Id Field and check Show Footer.💡Hide the Bundle using *Conditional Visibility* if there is no Parent Account.
    * To show the Parent Account's Parent Account (the Grandparent Account) `Account Company Info` Bundle on the Account, enter `Parent.ParentId` as the Mapped Id Field and check Show Footer. 💡Hide the Bundle if there is no Parent Account, as there will be no Grandparent Account either. 

{: .info-title}
>In Progress
>
>Add some screen shots and explanations of where we would use the Mapped ID Field.

### Popovers for Every Indicator
* If an Indicator has no **Hover Text** and no [Action](../best-practices/actions.md), it has no Popover. Avatars still show the name of the Indicator Item as standard alt text, but not the field value.
* 🆕 To show the field value in a Popover when **Hover Text** is blank, check **Show field value in popover when Hover Text is blank**. The field value is shown formatted. Check the functionality on Mobile after enabling this to see if this setting is right for your users. 

## Indicator Style

Set the **Indicator Style** property on the Indicator Bundle component to choose how the Bundle displays:

| Style | What it looks like | Salesforce Base Component |
|---|---|---|
| Avatar | The original squareish (SLDS1) or round (SLDS2) icons | [Avatar](https://developer.salesforce.com/docs/platform/lightning-component-reference/guide/lightning-avatar.html){:target="_blank"} |
| Pills | Rounded rectangles with an icon and text. SLDS2 is more rounded, like a Pill shape. | [Pill](https://developer.salesforce.com/docs/platform/lightning-component-reference/guide/lightning-pill.html?type=Example){:target="_blank"} |
| Badges | Rounded end rectangles with color and an optional utility icon, showing text. In SLDS2 Badges are rectangle with rounded corners. | [Badge](https://developer.salesforce.com/docs/platform/lightning-component-reference/guide/lightning-badge.html?type=Example){:target="_blank"} |

See [Badges and Pills](../best-practices/badges-and-pills.md) for when to use each style, design tips for Badges and Pills, their known issues, a gallery of what each looks like across SLDS1, SLDS2 and Dark Mode, and how to choose between Avatar, Badges, and Pills.

## Next Steps

* 🧭 **[Path 2](../guided-pathway/enhance-your-indicators.md) >** [Beyond the Record Page](../components/flows.md)
* Use the New button to add a new [Indicator Item](indicator-item), and continue to add more Items
* Use the New button to add a new [Indicator Bundle Item](indicator-bundle-item) to link the Bundle to the Item and add 🆕Actions to the Indicator
* Check [The Key](the-key)
* See [Build Glanceable Indicators](../best-practices/index.md) for more tips and tricks for placing the Indicator Bundles on the Page

