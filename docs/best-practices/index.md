---
title: Build Glanceable Indicators
parent: Set Up Salesforce Indicators
nav_order: 20
has_children: true
---

# Earning the Glance: Reasons, Display, and Actions
{: .no_toc }

{: .tip-title}
>Looking for the philosophy behind Indicators?
>
>This page is a decision guide - which category, which display style, which actions pattern. For the "why does this exist at all" thinking behind it, see [Why Salesforce Indicators](../philosophy/index.md).

Indicators give users an at-a-glance read on a record - the things they'd otherwise have to scan through all the fields on the page, scroll related lists, or run reports to find out. 

This section is all about all the tips, tricks, best practices, and gotchas we've learned over the past few years of using Salesforce Indicators. 

- TOC
{:toc}

## Top Tips

* **Placement:** We recommend that Indicators are placed in the top right hand corner of a regular Salesforce Lightning record page. So the user first looks at the Record Name, and then the colors on the right hand side draw their eye to the Bundle of Indicators. The Top right hand corner of the page becomes the Action destination, the Edit button, the custom buttons, and the Indicators are all grouped in a similar location. 
* **Icon Colors:** Add a mix of Salesforce and custom colors to match your branding and create visually appealing indicators giving your users a more engaging experience. You can source icons from Salesforce SLDS, free or commercial sources, or even use Emojis. Don't use too many colors or icon styles. Try to stick with the [SLDS color palette](https://www.lightningdesignsystem.com/design-tokens/){:target="_blank"}

![Indicators on a Lightning Page](/docs/images/setup/IndicatorsOnPage.png){: width="590"}

{: .note-title}
>Don't overdo it!
>
>The examples and tips on this page are just a start - there are so many reasons to add an Indicator, and only you as the Admin knows your Org and your User's needs. 
>
>However, it's just as important to know when to stop. Salesforce Indicators is completely open-ended — any icon, any color, any text, any action — which means it's entirely possible to build something that no longer looks or feels like Salesforce at all. 
>
>By sticking close to the SLDS color palette, keeping actions to the handful of cases where they genuinely replace something Salesforce can't already do well, and asking "does this still help the user, or is it just decoration now?" and "do the users understand why this Indicator exists?" are what keep a page's worth of Indicators reading as **one considered system**, not a pile of unrelated icons that happened to get added over time.

{: .tip-title}
>Demo Video
>
>See some of our best tips in action on the [How I Solved It Demo](https://admin.salesforce.com/blog/2024/visualize-key-data-and-next-actions-with-salesforce-indicators-how-i-solved-it){:target="_blank"} video.

## Icon Tips

* **Avoid icons already in use:** Don't use Icons that are in use in your Salesforce org elsewhere. Eg if you have Field Service installed, then don't use the `standard:service_crew` or `standard:service_crew_member` on Contact, as that will be confusing.
* **Don't be too literal:** Just pick an icon that looks good, or use a few characters instead of the Icon. Your users will get used to which icons mean what, and they have the hover text to help them know what the icon means.
* **Don't get too colorful:** You can really make a mess. But use specific brand icons or colors for different brands in your company for example.
* **Give icons meaning:** Don't group exception Indicators in together with informational Indicators. With Badges and Pills now, there are many more options to separate Indicators into different Bundles that do different things. 
* Zero Value Handling with the setting of `Treat Zeros as Blanks` works great for DLRS or NPSP Rollup fields where the field value will always be 0 or more. eg Count of Open Opportunities for an Account used in an Indicator to show that the Account has Open Opportunities.  
* ❗**Go easy on emojis:** Too many emojis is just visual clutter. If you need to add more than one emoji, google `emoji to svg converter`. find [Emojis](https://emojipedia.org){:target="_blank"} here to add some fun to your Indicators.
* Choosing icons and colors is the art side of Indicators. [Icon Tips](icon-tips.md) covers where to find icons - SLDS, Salesforce logos, third party icon sites, and how to load them as Static Resources - and [Icon Colors](icon-colors.md) covers picking colors that work together and with the SLDS palette.

## Bundle Layout Tips

The same Bundle can be displayed three ways using the 🆕**Indicator Style** option: **Avatar** (the original icons), **Badges**, or **Pills**. See [Indicator Bundle Layout Options](../setup/add-to-lightning-page/badges-and-pills.md) for when to use each one, a suggested Badge color scheme, and the differences to watch for.

### Choosing a Display Style: Avatar, Badge, or Pill

Avatar is the default display component. Use Badge or Pill when it makes sense for that bundle.

| Component | Best for | Why |
|---|---|---|
| **Avatar** (default) | Icons and colors that mean something to your users | A simple, compact way to show an icon or value without implying a status |
| **Badge** | Soft validation states — success, info, warning | Badge is built to carry a validation-style message at a glance |
| **Pill** | Anywhere you need the icon *and* the text together | Useful when the icon alone isn't enough to identify what's being shown |

{: .info-title}
>In Progress
>
>We need a recipe that demonstrates Badges and Pills end to end - from the Indicator Items and Extensions through to the Bundle on the Lightning Page.

## Indicator Action Tips

🆕[Indicator Actions](actions.md) turn an Indicator from something you look at into something you click - open a URL, a report, another record, a Quick Action, or launch a Screen Flow. Actions are set up on the **Indicator Bundle Item**, so the same Indicator can have a different action (or none) in each Bundle. The Actions page covers which display style suits which kind of action, the action fields, and four worked examples.

{: .info-title}
>In Progress
>
>We're working on a considered opinion on where Actions should and shouldn't be used. The short version for now is on the [Actions](actions.md) page - use Actions on purpose, not by default.

## Bundle Tips

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

## Field and Formula Tips

* **Is Active:** Create a new Boolean Formula Field - eg Is Active (Is_Active__c)
`ISPICKVAL(Status__c,"Active")` 
  * OR use an Extension to show different Icons based on different Picklist Values - eg Green for Active, Red for Inactive.
* **Short status codes:** Create a new Text field that returns a 3 character (max) value based on Picklist values eg
`CASE(TEXT(Status__c),"Oh Hold","HLD","Waiting","WT!","Cancelled","X","ACT")` 
  * OR use an Extension for each Picklist value with a three character *Static Text*.
* **Is High Value Donor:** Create a Formula for Is High Value Donor (Is_High_Value_Donor__c) and use $$$ as the text or the green money bag icon.
`npo02__TotalOppAmount__c > $CustomMetadata.ReportingSettings__mdt.HighValueDonor.Amount__c` 
  * OR use an Extension to add value ranges for different levels of Donors (it will depend on if you want to store the values in Indicators CMDT or your own CMDTs).
* **Parent fields:** You can traverse to parent field relationships by entering for example `Account.IsActive__c` in the **Advanced Field** field on an Indicator Icon for a Contact. Don't enter anything in the *Field* field.
* **Rollups:** Need a count or a total from child records? Use [DLRS](https://sfdo-community-sprints.github.io/DLRS-Documentation/){:target="_blank"} to roll it up into a field on the parent record, then point your Indicator at that field.

## Salesforce Theme Tips

Salesforce Indicators works with both the original Lightning Design System (SLDS1) and the new SLDS2, and mostly looks the same either way. The differences to plan for are:

* **Avatar shape:** Avatars always display as a circle in SLDS2 on desktop.
* **Icon colors:** Standard and Custom icon colors can't be overridden in SLDS2 - use a Utility Icon, or an SVG or PNG Static Resource instead.
* **Badges and Pills:** they look noticeably different between the themes, and the Mobile app always shows the SLDS1 style.
* **Dark Mode:** Indicators supports Dark Mode in SLDS2

See [SLDS1 and SLDS2](slds2.md) for the full list.

## Accessibility Tips

Accessibility is a shared responsibility. Salesforce Indicators is built on standard Salesforce Lightning base components, but it can't know what your colors, icons, and text mean to your users - only you can. We've improved accessibility with popovers for hover text, but we know there's more to do.

**What Indicators gives you to work with:**

* **Hover Text** on every Indicator Item, so the meaning of an Indicator doesn't rely on color alone.
* **Badges and Pills**, which show text on the page, not just an icon.

**What's up to you as the Admin:**

* **Don't rely on color alone:** Pair color with a distinct icon, or use Badges or Pills so there's text as well. Red and green on their own mean nothing to a color blind user.
* **Always set Hover Text:** Keep it short and meaningful (less than 50 characters is a good guide).
* **Check your contrast:** Use the tools on [Icon Colors](icon-colors.md#accessibility) to check your colors work for all your users.
* ⚠️ **Badges without icons:** The field name hover only appears when hovering over a Badge's icon, so a Badge with no icon has no hover text, which may be an issue for screen readers.
* **Ask your users:** Test your Bundles with the people who use them every day, including anyone using assistive technology.

{: .info-title}
>In Progress
>
>We don't have an accessibility specialist on the team yet. If that's you, we'd love your help to expand this section - see [Help Build Indicators](../guided-pathway/contribute-to-indicators.md).

## Bring your data alive!

* **Make it stand out:** Icons and colors help your data stand out, for example, you could use a $$$ icon to show that a contact is a high value donor. You can even use your own icons and branding to provide a familiar user experience.
* **Highlight the important:** Highlight important at-a-glance information, for example flag contacts that have not opted into receiving communications.
* **Summarize related records:** For example use icons on the Account record page to flag that it has open cases or overdue payments. 
* **Multi select picklists:** Highlight multi select picklist values with their own individual icon to get an overview, for example group together all the values from a product interest field to get a full picture of what an individual is interested in.
* **Make exceptions visible:** For example if there is a combination of field values making moving the record to the next stage impossible. 

### An Account Example

The [Themes](../philosophy/index.md#themes) on the Why Salesforce Indicators page describe *what* each category of Indicator does. Here's how each one could look on a single Account record, and the field behind it.

* **Informational:** Show the Account's Industry and Type fields as icons on the record page, so reps immediately know what kind of business they're looking at without opening the detail panel.

* **Soft Exceptions:** Use a formula field checking whether Last Activity Date is more than 60 days ago, and show a warning indicator reading "No recent activity" — not a blocker, just a nudge that the Account may be going cold.

* **Next Up:** Use a formula field (or a rollup) based on the Stage of the most recent related Opportunity to show "Next Step: Schedule renewal call" as a static text indicator, so the rep knows what to do without digging into the Opportunity.

* **Quantitative:** Use a rollup counting Open Opportunities related to the Account, displayed as "3 Open Deals" — an instant read on pipeline volume without running a report.

* **Qualitative:** Use the Account's Rating field (Hot/Warm/Cold) mapped to a colored indicator so the temperature of the relationship registers before anyone reads a word.

* **Multiple:** Use a rollup that concatenates all distinct Product Family values from related Opportunity Line Items, and display each as its own icon, so an Account that's bought Software, Hardware, and Support shows three icons in a row, giving the full purchase history at a glance.

* **Actions:** For an Account flagged as "Contract Expiring within 30 Days" (using a date literal like NEXT_N_DAYS:30 against a Contract End Date field), show an action button reading "Renew Contract" that launches a flow or navigates to a new Opportunity.

## Related Content
* 🧭 **[Path 2](../guided-pathway/enhance-your-indicators.md) >** 🆕[Actions](actions.md) the one new feature people ask about most.
* [Why Salesforce Indicators](../philosophy/index.md) for the thinking behind Indicators.
* [Icon Tips](icon-tips.md) for where to find icons and how to use them
* [Icon Colors](icon-colors.md) for further tips on where to find the best colors.
* 🆕[Indicator Bundle Layout Options](../setup/add-to-lightning-page/badges-and-pills.md) for Avatars, Badges, and Pills
* [SLDS1 and SLDS2](slds2.md) for the differences between the Salesforce themes, and Dark Mode,
