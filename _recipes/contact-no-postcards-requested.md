---
title: "Contact: No Postcards Requested"
category: [contact-npsp]
display: [Avatar]
function: [Soft Exceptions, Informational]
image: "![Pencil Red](https://login.salesforce.com/logos/Custom/Pencil_Red/logo.png)"
status: Validated
---

### Description

> This indicator represents a contact who has requested not to receive postcards.

### Fields

Fields | Value
-- | --
sObject | `Contact`
Field | `No_Postcards_Requested__c`
Field Label | `No Postcards Requested`
Active | `TRUE`
Empty Static Text Behavior | `Use Icon Only`
Hover Text | `No Postcards Requested`
Image | `https://login.salesforce.com/logos/Custom/Pencil_Red/logo.png`
Show False or Blank | `FALSE`
Zero Value Handling | `Treat Zeroes as Blanks`

### Preparation

`No_Postcards_Requested__c` is a custom Boolean Field on the Contact. This is specific for one Organization. You may not do Postcards in your Organization.

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
      "MasterLabel": "No Postcards Requested",
      "DeveloperName": "No_Postcards_Requested",
      "IsActive": true,
      "ObjectApiName": "Contact",
      "FieldApiName": "No_Postcards_Requested__c",
      "FieldLabel": "No Postcards Requested",
      "HoverValue": "No Postcards Requested",
      "EmptyStaticBehavior": "Use Icon Only",
      "ZeroBehavior": "Treat Zeroes as Blanks",
      "ImageUrl": "https://login.salesforce.com/logos/Custom/Pencil_Red/logo.png",
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
