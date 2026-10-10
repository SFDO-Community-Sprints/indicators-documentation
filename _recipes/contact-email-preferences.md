---
title: "Contact: Email Opt Out"
category: [contact]
display: [Avatar]
function: [Informational]
image: https://login.salesforce.com/logos/Custom/Mail_Red/logo.png
status: Validated
---

### Description

> An Indicator to show different color icons depending on the email preferences of the contact.


### Configuration

| Fields | Value |
|-----------|-----------|
|Label|`Email Preferences`|
|sObject|`Contact`|
|Field|`Email Opt Out`|
|Description|`When true contact should not be emailed.`
|False Hover Text|`Do Not Email`|
|Image| `https://login.salesforce.com/logos/Custom/Mail_Green/logo.png`
|Show when False or Blank|`True`|
|Inverse Image| `https://login.salesforce.com/logos/Custom/Mail_Red/logo.png`

<details markdown="block" class="recipe-preview">
<summary>🔍 Preview this Recipe in your Org</summary>

Copy this JSON and use the **Preview a Recipe** button on the Indicators Setup page.

```json
{
  "recipeSchemaVersion": "1.0",
  "recipeType": "items",
  "bundle": null,
  "items": [
    {
      "MasterLabel": "Email Preferences",
      "DeveloperName": "Email_Preferences",
      "IsActive": true,
      "ObjectApiName": "Contact",
      "FieldApiName": "HasOptedOutOfEmail",
      "FieldLabel": "Email Opt Out",
      "IndicatorDescription": "When true contact should not be emailed.",
      "FalseHoverValue": "Do Not Email",
      "ImageUrl": "https://login.salesforce.com/logos/Custom/Mail_Green/logo.png",
      "DisplayFalse": true,
      "FalseImageUrl": "https://login.salesforce.com/logos/Custom/Mail_Red/logo.png",
      "bundleItem": null,
      "extensions": []
    }
  ]
}
```

</details>

**Contributed By** Maida Rider, [RiderM780](https://github.com/RiderM780){:target="_blank"}
Emma Keeling, [Salesforce_Em](https://github.com/Salesforce-Em){:target="_blank"}
{: .contributed-by }

