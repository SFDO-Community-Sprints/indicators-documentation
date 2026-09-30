---
layout: default
title: The Indicator Item
parent: Set Up Salesforce Indicators
nav_order: 2
has_children: true
---

{% include step-progress.html parent="Set Up Salesforce Indicators" %}

See [Indicator Bundle](../indicator-bundle) to set up the **Indicator Bundle** before setting up **Indicator Items**.

{% include erd-diagram.html focus="i" %}

## Indicator Item

An Indicator Item is setup to display an individual icon related to one field on the object. For instance, if you want to see a visual indicator to see at a glance that the Account is Active, based on the custom **Account Status** field.

## Add a new Indicator Item
{% include open-indicator-setup.html new="Indicator Item" %}

## Edit an existing Indicator Item

* Go to the **Indicator Settings** Tab
  * Choose the Indicator Bundle that the Indicator Item is on (or the Item will be in *Unbundled Items* if the Item is not on a Bundle yet). 
  * Click the **Edit Indicator** button

OR, alternatively:

* Edit the Settings in CMDT:
  * Navigate to Salesforce **Setup** > **Custom Metadata Types**
  * Scroll to **Indicator Items**, and click **Manage Records**
  * Click **Edit** next to the Item you want to edit


## Indicator Item Fields

|Field|Example Value|Description|Tip|
|---------|----------|-----------------|----------------------------|
|**Detail Section**|
|Label|`Contact Mobile`|Give it a descriptive name|Include the Object Name
|Indicator Item Name|`Contact_Mobile`|The API name
|sObject|`Contact`|Choose the Object whose values this Indicator references
|Field|`Mobile Phone`|Choose the Field whose values this indicator references
|Active|`true`||Leave this unchecked until the Indicator is ready to be displayed on a Bundle
|**Advanced Section**|
|Advanced Field||To use a field from a record higher in the parent-child relationship, directly enter the spanning fields (up to 5 level away). Example:  `Contact.Account.Owner.FirstName`|Ensure the field syntax is correct, there is no validation - the Indicator will just not display|
|Advanced Field Label| |Enter the Label to be displayed in The Key for this Field. Example: `Account Owner First Name`
|**Description Section**|
|Description|`If the Contact's Mobile is Entered the icon will show`||Write something useful here, your future self will thank you
|**Configuration Section**
|Display Multiple| `false`| Should ALL the Extension icons be displayed? |When Multiple Extensions are configured, instead of showing only one Icon based on the Priority order, show all configured Extension Icons. See Extensions for more details.
|Hover Text|`The Contact has a Mobile Phone No. entered`|Text to display in a popover when the user hovers over the icon|🆕Hover Text is now a Popover and works for Mobile. The field label shows for screen readers. 🆕Hover text can use Merge Fields eg {!Name}.
|Static Text||Text to display instead of a field value, icon, or image URL (only the first 3 characters or 1 emoji will display). 
|Empty Static Text Behavior||Choose an option to use in place of static text, when indicator is false or blank|Default is `Use Icon Only` which will show the Icon if there is no Static Text entered. This field controls both regular and Inverse selections. Note: When using an Image this field is not used
|Zero Value Handling||How to treat Zeros (as blank or number)|Use in conjunction with Show when False or Blank
|Image||The URL to the image of the Indicator when being used instead of Field, Text, or Icon|eg link to a Static Resource, File, or Document in your Org. The use of an Image overrides any Icon settings
|Icon Value|`custom:custom28`|The Lightning Design System icon when being used instead of Field, Text, or Image URL. Get Icons from from [SLDS Icons](https://lightningdesignsystem.com/icons/){:target="_blank"}. Enter the full category and icon name like `custom:custom32`|If Static text is entered, the Icon color will be used, with the static text in white
|Icon/Badge Background| |The color to display for the Icon's background|💎SLDS1 Only. 🆕Handles Badges also 
|Icon Foreground| |The color to display for the Icon's background|💎SLDS1 Only
|**Configuration - Inverse Section**|
|Show when False or Blank|`false`|Should this indicator display anything when the field is false or blank?
Inverse Hover Text||The hover text when the indicator is false or blank. 🆕Hover text can use Merge Fields eg {!Name}.
Inverse Static Text||The static text to use when false or blank
Inverse Image||The URL to the image of the Indicator when being used instead of Field, Text, or Icon for false or blank values
Inverse Icon Value||The Lightning Design System icon when being used instead of Field, Text, or Image URL for false or blank values 
Inverse Icon/Badge Background| |The color to display for the Icon's background when the value is false or blank|💎SLDS1 Only. 🆕Handles Badges also
Inverse Icon Foreground| |The color to display for the Icon's background when the value is false or blank|💎SLDS1 Only
|**🆕Badges/Pills Section**|
|Badge/Pill Text| |The text that will show in conjunction with the Icon on a Badge or Pill style Indicator|🆕This allows Text to be shown on Badges and Text + the icon to be shown on Pills.
|Badge/Pill Text Color| |The color to display for the Badge or Pill text|💎Works for SLDS1 and SLDS2!
|Badge Icon Position | |For Badges only, the icon can be left or right
|**🆕Badges/Pills - Inverse Section**|
|Inverse Badge/Pill Text| |The text that will show in conjunction with the Icon on a Badge or Pill style Indicator|🆕This allows Text to be shown on Badges and Text + the icon to be shown on Pills.
|Inverse Badge/Pill Text Color| |The color to display for the Badge or Pill text when the value is false or blank.
|Inverse Badge Icon Position | |For Badges only, the icon can be left or right

{: .tip-title}
>Setup Tips
>
>* See the Examples and Recipes in this documentation for ideas on how to use these settings
>* Zero Value Handling with the setting of `Treat Zeros as Blanks` works great for DLRS or NPSP Rollup fields where the field value will always be 0 or more. eg Count of Open Opportunities for an Account used in an Indicator to show that the Account has Open Opportunities. 
>* When using [Extensions](../item-extension) the Configuration section can be left blank.

{: .warning-title}
>Things to Note
>
>When **Hover Text** is blank, the **Field Name** shows as a standard Tooltip. When **Hover Text** is entered, the Popover displays over the top of the Tooltip, rather than replacing it. The Tooltip is important for screen readers. 

## More Information
* See [Building Glanceable Indicators](../../best-practices/index.md) for more Tips and Tricks for how to set up great Indicator Items
* See [Icon Tips](icon-tips) for more Icon ideas and tips.
* See [Icon Colors](icon-colors) for tips on creating colorful icons.
* See [Fields and Formulas Tips](fields-tips) for tips on creating new Fields to use in your Indicators.

## Known Issues

* SLDS Action Icons eg `action:check` do not render in the Indicator Component correctly. Action Icons are not designed for usage in Salesforce Avatar which is the Base Component the Indicators are based on. 
* Color overrides on Avatars do not work in SLDS2 at this stage. There is a feature in Developer Preview so we do hope to bring this back in the next few releases. For now, stick with an SLDS1 Theme if you rely on the excellent functionality of Color overrides. 

## Next Steps
* Add Optional [Extensions](../item-extension)
* Add the Indicator to a Bundle using [Indicator Bundle Items](../indicator-bundle-item)

