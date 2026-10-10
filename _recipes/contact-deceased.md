---
title: "Contact: Deceased"
category: [contact-npsp]
display: [Avatar]
function: [Informational]
image: "![Avatar Loading](/docs/images/icons/avatar-loading.png)"
status: Validated
---

### Description

> This indicator represents a contact who is deceased.


### Fields

Fields | Value
-- | --
sObject | `Contact`
Field | `npsp__Deceased__c`
Field Label | `Deceased`
Active | `TRUE`
Empty Static Text Behavior | `Use Icon Only`
Hover Text | `Deceased`
Icon Value | `standard:avatar_loading`
Show False or Blank | `FALSE`
Zero Value Handling | `Treat Zeroes as Blanks`

### Preparation

`npsp__Deceased__c` is a standard field as part of the Nonprofit Success Pack. You may already have a field named something different. Substitute `npsp__Deceased__c` for your field name.

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
      "MasterLabel": "Deceased",
      "DeveloperName": "Deceased",
      "IsActive": true,
      "ObjectApiName": "Contact",
      "FieldApiName": "npsp__Deceased__c",
      "FieldLabel": "Deceased",
      "HoverValue": "Deceased",
      "EmptyStaticBehavior": "Use Icon Only",
      "ZeroBehavior": "Treat Zeroes as Blanks",
      "IconName": "standard:avatar_loading",
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
