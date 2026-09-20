---
title: Permissions Explained
parent: Architecture & Technical Documentation
nav_order: 4
has_children: false
---

## Salesforce Permissions Needed

As Salesforce Indicators is a Custom Metadata driven Lighting Web Component, anyone configuring Salesforce Indicators needs to use Custom Metadata. 

* To create [Custom Metadata Records](https://help.salesforce.com/s/articleView?id=sf.custommetadatatypes_ui_populate.htm&type=5){:target="_blank"}, users need the *Customize Application* permission. 
  * See the [Customize Application](https://help.salesforce.com/s/articleView?id=000386451&type=1){:target="_blank"} help document.
  * Customize Application is part of the System Administrator profile.

{: .note-title}
>Admins Only
>
>Customize Application is one of the permissions that makes a user a Privelidged User that requires [Phishing Resistant MFA](https://help.salesforce.com/s/articleView?id=xcloud.mfa_phishing_resistant.htm&type=5){:target="_blank"}, Be careful giving this permission to users other than Admins.


## Indicators Setup Access

* Assign the *Indicators Setup Access* permission set to any System Administrators who will be setting up SalesforceIndicators.
  * This grants access to the *Indicators Setup* Tab.
  * This extends the functionality of [The Key](../setup-salesforce-indicators/the-key.md) to allow a System Administrator to jump directly to the CMDT record that is configured for that Indicator. 

## Indicators User Access

* Assign the *Indicators User Access* permission set to any users who will be viewing Salesforce Indicators.
  * This gives the user the access to the Apex Class that returns the data to the *Indicator Bundle* and *Indicator Item*. 
  * Once the Indicator Bundle is added to the Lightning page, all users who can see that page can see the bundle, unless it is hidden by [Component Visibility](https://help.salesforce.com/s/articleView?id=sf.lightning_page_components_visibility.htm&type=5){:target="_blank"}. 
  * Users will only see the *Indicator Items* if they have read access to the field and sObject the [Indicator Item](../setup-salesforce-indicators/indicator-item) is based on. 
* Test your *Indicator Bundles* to ensure that there are no blank bundles, which doesn't look good for users. 

## About Custom Metadata 
* See this [Trailhead Module](https://trailhead.salesforce.com/content/learn/modules/custom_metadata_types_dec){:target="_blank"} to learn more about Custom Metadata in Salesforce.

## Related Pages

* See [Install Salesforce Indicators](../install-salesforce-indicators/) if you have not already installed Salesforce Indicators.
* See [Setup Salesforce Indicators](../setup-salesforce-indicators/) to get set up to use Salesforce Indicators.


