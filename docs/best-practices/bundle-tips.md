---
layout: default
title: Bundle Tips
summary: "Placement, design, and composition tips for your Indicator Bundles."
parent: Build Glanceable Indicators
nav_order: 40
has_children: false
---

{% include reading-time.html %}
## Bundle Tips
{: .no_toc }


Bundles collect Indicators together in one cohesive group. These tips will help choose which Bundles work best. 

{% include toc.html %}


### Bundle Placement Tips

* **Task tabs:** When you have a tab for a specific task, eg generating a contract document, it's a great location to have all the fields for that task, placed alongside the Indicators with **Soft Exceptions** showing what will prevent the document from being generated correctly. 
* **Between field sections:** Using Dynamic Forms **Title Style** when placing your Bundle on a Lightning Page, you can add Indicator Bundles between field sections so that your Indicators are related to the fields nearby.

### Bundle Design Tips

* **Titles and Icons:** Titles and Icons are not required on Bundles, but they look best when the Large Icons are shown. A Bundle of Medium Icons (💎 SLDS1 only) used in a strip (see Examples) can look good with no **Title** and **Icon**. If in doubt, just use the standard icon matching that record (eg `standard:account`)
* 🆕**Text as well as icons:** With the **Indicator Style** of Badges and Pills, Indicators have text in addition to icons.
* ⚠️ **Empty Bundles:** If all **Indicator Items** are not visible, the empty **Indicator Bundle** will still be visible and will look strange. There is a feature request to make hiding the Bundle automatic if there are no Items visible, but in the meantime, either set Component Visibility on the Bundle, or ensure at least one Item will always be visible.

### Bundle Composition Tips

* **Different Bundles for different users:** The **Indicator Bundle** can be hidden for different groups of Users to ensure the User sees what is relevant to them, eg Marketing Users and Fundraising Users. Use [Component Visibility](https://help.salesforce.com/s/articleView?id=sf.lightning_page_components_visibility.htm&type=5){:target="_blank"}, to show or hide the Indicator Bundle, just like any other Component. 
* **Grandparent records:** Whilst you can show an **Indicator Bundle** for the Grandparent record, there are not many scenarios we have found where it may be useful. One option could be for showing details about a corporate group on a Case record. _The Account record has a Group field on it, and being in that group means all their related corporate entities get extra care on Cases. There are a few key fields on the Group record that we would like to show on the Case_. What are your other ideas? 
* **Group by purpose:** Think about which Indicators belong together. Eg Informational Indicators like _Is Active_, _Is Donor_, _Is On Marketing List_, _Is Nonprofit_ or Quantitative Indicators like _Value of Donations_, _Value of Grants_, Soft Exception Indicators like _Needs Email_, _Needs Phone_, _Marketing Email Bounced_. What are some of the other groupings you would use in your org?

### Bundle Examples

* Filter to **Bundles** on [Find a Recipe](../recipes/find-a-recipe.md) for some examples.
* See our [Example Bundles](../recipes/examples.md) for images of Bundles we've built previously and other ideas for Bundles

## Related Content
{: .no_toc }

* [Build Glanceable Indicators](index.md) for more tips and tricks.
* [Indicator Bundle](../setup/indicator-bundle.md) to set up your Bundle.
