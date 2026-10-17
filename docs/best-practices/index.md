---
title: Build Glanceable Indicators
parent: Set Up Salesforce Indicators
nav_order: 20
has_children: true
---

# Earning the Glance: Reasons, Display, and Actions

{: .tip-title}
>Looking for the philosophy behind Indicators?
>
>This page is a decision guide - which category, which display style, which actions pattern. For the "why does this exist at all" thinking behind it, see [Why Salesforce Indicators](../philosophy/index.md).

Indicators give users an at-a-glance read on a record - the things they'd otherwise have to scan through all the fields on the page, scroll related lists, or run reports to find out. 

This section is all about all the tips, tricks, best practices, and gotchas we've learned over the past few years of using Salesforce Indicators. 

## Top Tips

* **Placement:** We recommend that Indicators are placed in the top right hand corner of a regular Salesforce Lightning record page. So the user first looks at the Record Name, and then the colors on the right hand side draw their eye to the Bundle of Indicators. The Top right hand corner of the page becomes the Action destination, the Edit button, the custom buttons, and the Indicators are all grouped in a similar location. 
* **Icon Colors**: Add a mix of Salesforce and custom colors to match your branding and create visually appealing indicators giving your users a more engaging experience. You can source icons from Salesforce SLDS, free or commercial sources, or even use Emojis. Don't use too many colors or icon styles. Try to stick with the [SLDS color palette](https://www.lightningdesignsystem.com/design-tokens/){:target="_blank"}

:Claude does the Don't Overdo It! callout from philosophy need to be here instead? If so, please move it here, and replace it with a Note tip about there's a whole section on tips over here... 

![Indicators on a Lightning Page](/docs/images/setup/IndicatorsOnPage.png){: width="590"}

{: .tip-title}
>Demo Video
>
>See some of our best tips in action on the [How I Solved It Demo](https://admin.salesforce.com/blog/2024/visualize-key-data-and-next-actions-with-salesforce-indicators-how-i-solved-it){:target="_blank"} video.

## Bundle Tips

### Bundle Placement Tips

* When you have a tab for a specific task, eg generating a contract document, it's a great location to have all the fields for that task, placed alongside the Indicators with **Soft Exceptions** showing what will prevent the document from being generated correctly. 
* Using Dynamic Forms **Title Style** when placing your Bundle on a Lightning Page, you can add Indicator Bundles between fie0ld sections so that your Indicators are related to the fields nearby.

### Bundle Design Tips

* Titles and Icons are not required on Bundles, but they look best when the Large Icons are shown. a Bundle of Medium Icons (💎 SLDS1 only) used in a strip (see Examples) can look good with no **Title** and **Icon**. If in doubt, just use the standard icon matching that record (eg `standard:account`)
* 🆕With the **Indicator Style** of Badges and Pills, Indicators have text in addition to icons.
* ⚠️ If all **Indicator Items** are not visible, the empty **Indicator Bundle** will still be visible and will look strange. There is a feature request to make hiding the Bundle automatic if there are no Items visible, but in the meantime, either set Component Visibility on the Bundle, or ensure at least one Item will always be visible.

### Bundle Composition Tips

* The **Indicator Bundle** can be hidden for different groups of Users to ensure the User sees what is relevant to them, eg Marketing Users and Fundraising Users. Use [Component Visibility](https://help.salesforce.com/s/articleView?id=sf.lightning_page_components_visibility.htm&type=5){:target="_blank"}, to show or hide the Indicator Bundle, just like any other Component. 
* Whilst you can show an **Indicator Bundle** for the Grandparent record, there are not many scenarios we have found where it may be useful. One option  could be for showing details about a corporate group on a Case record. _The Account record has a Group field on it, and being in that group means all their related corporate entities get extra care on Cases. There are a few key fields on the Group record that we would like to show on the Case_. What are your other ideas? 
* Think about which Indicators belong together. Eg Informational Indicators like _Is Active_, _Is Donor_, _Is On Marketing List_, _Is Nonprofit_ or Quantitative Indicators like _Value of Donations_, _Value of Grants_, Soft Exception Indicators like _Needs Email_, _Needs Phone_, _Marketing Email Bounced_. What are some of the other groupings you would use in your org?

## Bundle Layout Tips
: Claude write a sentence or two summarizing the badges-and-pills page and link to it. 

### Choosing a Display Style: Avatar, Badge, or Pill

Avatar is the default display component. Use Badge or Pill when it makes sense for that bundle.

| Component | Best for | Why |
|---|---|---|
| **Avatar** (default) | Icons and colors that mean something to your users | A simple, compact way to show an icon or value without implying a status |
| **Badge** | Soft validation states — success, info, warning | Badge is built to carry a validation-style message at a glance |
| **Pill** | Anywhere you need the icon *and* the text together | Useful when the icon alone isn't enough to identify what's being shown |

:Claude add an In Progress callout here to state that there needs to be a recipe created to demonstrate using Badges and Pills end to end. 

## Indicator Item Tips

## Field and Formula Tips
:Claude - content from Field and Formula Tips here. 

## Icon Tips

* Don't use Icons that are in use in your Salesforce org elsewhere. Eg if you have Field Service installed, then don't use the `standard:service_crew` or `standard:service_crew_member` on Contact, as that will be confusing.
* Don't be too literal - just pick an icon that looks good, or use a few characters instead of the Icon. Your users will get used to which icons mean what, and they have the hover text to help them know what the icon means.
* Don't get too colorful - you can really make a mess. But use specific brand icons or colors for different brands in your company for example.
* Ensure your icons have meaning. Don't group exception Indicators in together with informational Indicators. With Badges and Pills now, there are many more options to separate Indicators into different Bundles that do different things.  
*❗Too many emojis is just visual clutter. If you need to add more than one emoji, google `emoji to svg converter`. 

### Choosing Icons

Copy and paste [Emojis](https://emojipedia.org) here for some fun Indicators
:Claude - Link to Icon pages here with a sentence about "the art side of this: icons and color"

### Bring your data alive!

* Icons and colors to help your data stand out for example, you could use a $$$ icon to show that a contact is a high value donor. You can even use your own icons and branding to provide a familiar user experience.

* Highlight important at-a-glance information, for example flag contacts that have not opted into receiving communications

* Summarize related records, for example use icons on the Account record page to flag that it has open cases or overdue payments. 

* Highlight multi select picklist values with their own individual icon to get an overview, for example group together all the values from a product interest field to get a full picture of what an individual is interested in.

* Make exceptions visible, for example if there is a combination of field values making moving the record to the next stage impossible. 

## Indicator Action Tips
:Claude write a summary here to summarize the actions.md page and link to it. 
:Claude add an In Progress callout here for a Stated Position on where we think Actions should be used. 

## Salesforce Theme Tips
:Claude write a summary here and mention Dark Mode and summarize the SLDS2 page and link to it. 

## Accessibility Tips
:Claude this is what you said previously, please write something about this here
```A short, explicitly-labeled **Accessibility** section (candidate location: alongside or inside the Philosophy page from section 4) saying exactly that - this is a shared responsibility, here's what we can control (hover text as a non-color-dependent fallback, the `whocanuse.com` contrast-check tip already on the [Icon Colors](../best-practices/icon-colors.md) page) and here's what's on you as the admin - is more useful to a reader than the current pattern of a stray accessibility mention on one or two setup pages. If an accessibility designer is ever recruited to the volunteer team (see [Help Build Indicators](../guided-pathway/contribute-to-indicators.md)), this is the page they'd expand.```

## Examples on an Account Record
:Claude does this belong here? Or check where it belongs.

**Informational**
Show the Account's Industry and Type fields as icons on the record page, so reps immediately know what kind of business they're looking at without opening the detail panel.

**Soft Exceptions**
Use a formula field checking whether Last Activity Date is more than 60 days ago, and show a warning indicator reading "No recent activity" — not a blocker, just a nudge that the Account may be going cold.

**Next Up**
Use a formula field (or a rollup) based on the Stage of the most recent related Opportunity to show "Next Step: Schedule renewal call" as a static text indicator, so the rep knows what to do without digging into the Opportunity.

**Quantitative**
Use a rollup counting Open Opportunities related to the Account, displayed as "3 Open Deals" — an instant read on pipeline volume without running a report.

**Qualitative**
Use the Account's Rating field (Hot/Warm/Cold) mapped to a colored indicator so the temperature of the relationship registers before anyone reads a word.

**Multiple**
Use a rollup that concatenates all distinct Product Family values from related Opportunity Line Items, and display each as its own icon, so an Account that's bought Software, Hardware, and Support shows three icons in a row, giving the full purchase history at a glance.

**Actions**
For an Account flagged as "Contract Expiring within 30 Days" (using a date literal like NEXT_N_DAYS:30 against a Contract End Date field), show an action button reading "Renew Contract" that launches a flow or navigates to a new Opportunity.

## Related Content
🧭 **[Path 2](../guided-pathway/enhance-your-indicators.md) >** [Actions](actions.md) the one new feature people ask about most.

