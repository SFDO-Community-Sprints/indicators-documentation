---
title: "Contact: Legacy Mailing"
category: [contact-npsp]
display: [Avatar]
function: [Soft Exceptions]
image: https://login.salesforce.com/logos/Custom/Doc_Green/logo.png
status: Validated
---

### Description

> This indicator represents a contact who has requested to not receive Legacy Mailing.

### Fields

Fields | Value
-- | --
sObject | `Contact`
Field | `No_Legacy_Mailing__c`
Field Label | `No Legacy Mailing`
Active | `TRUE`
Empty Static Text Behavior | `Use Icon Only`
Hover Text | `No Legacy Mailing`
Image | `https://login.salesforce.com/logos/Custom/Castle_Red/logo.png`
Show False or Blank | `FALSE`
Zero Value Handling | `Treat Zeroes as Blanks`

### Preparation

`No_Legacy_Mailing__c` is a custom Boolean Field on the Contact.
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
      "MasterLabel": "Legacy Mailing",
      "DeveloperName": "Legacy_Mailing",
      "IsActive": true,
      "ObjectApiName": "Contact",
      "FieldApiName": "No_Legacy_Mailing__c",
      "FieldLabel": "No Legacy Mailing",
      "HoverValue": "No Legacy Mailing",
      "EmptyStaticBehavior": "Use Icon Only",
      "ZeroBehavior": "Treat Zeroes as Blanks",
      "ImageUrl": "https://login.salesforce.com/logos/Custom/Castle_Red/logo.png",
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

{: .note-title}
>Claude Notes
>
>- Added a `Field Label` row (`No Legacy Mailing`) so the real previewer's Extensions display criteria text doesn't show "undefined" - without it, `item.FieldLabel` is missing and `key.js` prints the literal word "undefined" instead of the field name. This is a guess at the real label of `No_Legacy_Mailing__c` based on this page's own title - confirm it in your org and correct it here if it differs.
