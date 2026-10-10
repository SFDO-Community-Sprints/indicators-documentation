---
title: "Contact: Thanking Requested"
category: [contact-npsp]
display: [Avatar]
function: [Informational]
image: https://login.salesforce.com/logos/Custom/Handshake_Red/logo.png
status: Validated
---

### Description

> This indicator represents a contact and their status of whether or not they receive Thanking for donations.


### Fields

Fields | Value
-- | --
sObject | `Contact`
Field | `No_Thanking_Requested__c`
Field Label | `No Thanking Requested`
Active | `TRUE`
Empty Static Text Behavior | `Use Icon Only`
Hover Text | `No Thanking Requested`
Image | `https://login.salesforce.com/logos/Custom/Handshake_Red/logo.png`
Show False or Blank | `FALSE`
Zero Value Handling | `Treat Zeroes as Blanks`

### Preparation

`No_Thanking_Requested__c` is a custom Boolean Field on the Contact.
Note: It is best to be consistent with Boolean Fields and have Checked as True, however we have included this as it is a real life example Indicator.

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
      "MasterLabel": "Thanking Requested",
      "DeveloperName": "Thanking_Requested",
      "IsActive": true,
      "ObjectApiName": "Contact",
      "FieldApiName": "No_Thanking_Requested__c",
      "FieldLabel": "No Thanking Requested",
      "HoverValue": "No Thanking Requested",
      "EmptyStaticBehavior": "Use Icon Only",
      "ZeroBehavior": "Treat Zeroes as Blanks",
      "ImageUrl": "https://login.salesforce.com/logos/Custom/Handshake_Red/logo.png",
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