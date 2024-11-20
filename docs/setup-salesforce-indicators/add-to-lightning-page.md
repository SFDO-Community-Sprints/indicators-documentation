---
layout: default
title: Add the Bundle to the Lightning Page
parent: Set Up Salesforce Indicators
nav_order: 5
has_children: false
---

The [Indicator Bundle](../indicator-bundle) is added to the Lightning Record Page. You can have as many **Indicator Bundles** on Lightning Record Pages as needed. 

## Add the Bundle to your Lightning Page

### Basic Setup

* Edit your Lightning Record Page (eg Account), and add the **Indicator Bundle** Component by dragging it to the desired location.
* Choose the **Indicator Bundle** to show on the Page (eg Account Company Details). Ensure it is the correct Bundle to display for that Object.
* Optionally choose to *Display Title* 
* Optionally choose to *Display Description*
* Choose the *Indicator Size* - large or medium
* Choose the *Indicator Shape* - base or circle

### Option Setup Items
* Choose the *Title Style* either to look like regular Lightning Pages (similar to Related Record Component), or to look like Dynamic Forms pages. 
* Optionally choose to show the *Refresh Button*. This is useful whilst you are setting up your Bundles.
* Optionally use the *Mapped Id Field** to choose to base the Indicator Bundle on a record that is a Lookup from the displayed record. Eg enter 'AccountId' to display your Account Company Details Bundle on the Contact page. 
* When the Bundle is displayed from a Related Record (Mapped Id Field), you can show a footer on the Bundle that notes which record the Bundle is based on. 

## Tips

**💡Setup Tips**
* You can add the **Indicator Bundle** to the Lightning Record Page before any **Indicator Items** have been added, and then refresh the Bundle as you add your Items. 
* ❗Remember to Save and [Activate](https://help.salesforce.com/s/articleView?id=sf.lightning_app_builder_customize_lex_pages_activate.htm&type=5) the Lightning Record Page❗
* The **Indicator Bundle** can be hidden using [Component Visibility](https://help.salesforce.com/s/articleView?id=sf.lightning_page_components_visibility.htm&type=5), just like any other Component.

**💡Design Tips**
* For one or two Bundles on the Page it is nice to show an Icon, Title, and Description for each Bundle. 
* For Bundles with medium icons it may be OK to not show the Title and Description. 
* Using Dynamic Forms Title Style, you can add Indicator Bundles between field sections so that your Indicators are related to the fields nearby

**⚠️ Things to Note**

* If all **Indicator Item** are not visible, the empty **Indicator Bundle** will still be visible and will look strange. There is a feature request to make hiding the Bundle automatic if there are no Items visible, but in the meantime, either set Component Visibility on the Bundle, or ensure at least one Item will always be visible.

## Next Steps

* Use the New button to add a new [Indicator Item](../indicator-item), and continue to add more Items
* Use the New button to add a new [Indicator Bundle Item](../indicator-bundle-item) to link the Bundle to the Item
* Check [The Key](../the-key)
