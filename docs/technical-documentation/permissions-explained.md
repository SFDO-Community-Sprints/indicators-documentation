---
title: Permissions Explained
parent: Architecture & Technical Documentation
nav_order: 2
has_children: false
---

## Salesforce Permissions Needed

* To create [Custom Metadata Records](https://help.salesforce.com/s/articleView?id=sf.custommetadatatypes_ui_populate.htm&type=5){:target="_blank"}, users need the *Customize Application* permission. 
  * See the [Customize Application](https://help.salesforce.com/s/articleView?id=000386451&type=1){:target="_blank"} help document.
  * Customize Application is part of the System Administrator profile.
  * Be careful giving this permission to any other users.

## Salesforce Indicators Permission Set

* Assign the *Indicators Setup Access* permission set to any System Administrators who will be setting up SalesforceIndicators.
  * This grants access to the *Indicators Setup* Tab.

## User Permissions

* Assign the *Indicators User Access* permission set to any users who will be viewing Salesforce Indicators.
* This gives the user the access to the Apex Class that returns the data to the *Indicator Bundle* and *Indicator Item*. 
* Once the Indicator Bundle is added to the Lightning page, all users who can see that page can see the bundle, unless it is hidden by [Component Visibility](https://help.salesforce.com/s/articleView?id=sf.lightning_page_components_visibility.htm&type=5){:target="_blank"}. 
* Users will only see the *Indicator Items* if they have read access to the field and sObject the [Indicator Item](../../setup-salesforce-indicators/indicator-item) is based on. 
* Test your *Indicator Bundles* to ensure that there are no blank bundles, which doesn't look good for users. 

{: .note-title}
>Field-Level Security Fix
>
>A bug where Field-Level Security was not being honored when **Show when False or Blank** was checked has been fixed. Field-Level Security is now correctly respected in all cases - Indicators will not show a value for a field the user can't read, even when the Indicator is set to display for false or blank values.

## About Custom Metadata 
* See this [Trailhead Module](https://trailhead.salesforce.com/content/learn/modules/custom_metadata_types_dec){:target="_blank"} to learn more about Custom Metadata in Salesforce.

## Next Steps

* See [Install Salesforce Indicators](../../install-salesforce-indicators/) if you have not already installed Salesforce Indicators.
* See [Setup Salesforce Indicators](../../setup-salesforce-indicators/) to get set up to use Salesforce Indicators.

{: .note-title}
>Claude Notes
>
>- The Field-Level Security fix note-title reads like a changelog entry (a bug that "has been fixed") rather than durable reference content - most of its value going forward is just "FLS is honored, including for false/blank values," which could be folded into a plain sentence, with the historical fix detail left to live only in release-notes/index.md.
>- "Be careful giving this permission to any other users" (re: Customize Application) is good, specific security advice that's easy to skim past in a bullet - could be its own warning-title callout to match the visual weight given to warnings elsewhere on the site.

