---
title: "Contact: Email Marketing"
category: [contact]
display: [Avatar]
function: [Informational]
image: https://login.salesforce.com/logos/Custom/Mail_Green/logo.png
status: Validated
---

### Description

> This indicator represents a contact who has requested to opt into Email Marketing.


### Fields

Fields | Value
-- | --
sObject | `Contact`
Field | `Email_Marketing__c`
Field Label | `Email Marketing`
Active | `TRUE`
Empty Static Text Behavior | `Use Icon Only`
Hover Text | `Email Marketing Opt-In`
Image | `https://login.salesforce.com/logos/Custom/Mail_Green/logo.png`
Show False or Blank | `FALSE`
Zero Value Handling | `Treat Zeroes as Blanks`

### Preparation

`Email_Marketing__c` is a custom Boolean Field on the Contact.

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
      "MasterLabel": "Email Marketing",
      "DeveloperName": "Email_Marketing",
      "IsActive": true,
      "ObjectApiName": "Contact",
      "FieldApiName": "Email_Marketing__c",
      "FieldLabel": "Email Marketing",
      "HoverValue": "Email Marketing Opt-In",
      "EmptyStaticBehavior": "Use Icon Only",
      "ZeroBehavior": "Treat Zeroes as Blanks",
      "ImageUrl": "https://login.salesforce.com/logos/Custom/Mail_Green/logo.png",
      "DisplayFalse": false,
      "bundleItem": null,
      "extensions": []
    }
  ]
}
```

</details>

**Contributed By** Emma Keeling, [Salesforce_Em](https://github.com/Salesforce-Em){:target="_blank"}
{: .contributed-by }
