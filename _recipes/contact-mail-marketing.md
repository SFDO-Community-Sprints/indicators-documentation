---
title: "Contact: Mail Marketing"
category: [contact-npsp]
display: [Avatar]
function: [Informational]
image: https://login.salesforce.com/logos/Custom/Doc_Green/logo.png
status: Validated
---

### Description

> This indicator represents a contact who has requested to opt into Postal Mail Marketing.


### Fields

Fields | Value
-- | --
sObject | `Contact`
Field | `Mail_Marketing__c`
Field Label | `Mail Marketing`
Active | `TRUE`
Empty Static Text Behavior | `Use Icon Only`
Hover Text | `Mail Marketing Opt-In`
Image | `https://login.salesforce.com/logos/Custom/Doc_Green/logo.png`
Show False or Blank | `FALSE`
Zero Value Handling | `Treat Zeroes as Blanks`

### Preparation

`Mail_Marketing__c` is a custom Boolean Field on the Contact.

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
      "MasterLabel": "Mail Marketing",
      "DeveloperName": "Mail_Marketing",
      "IsActive": true,
      "ObjectApiName": "Contact",
      "FieldApiName": "Mail_Marketing__c",
      "FieldLabel": "Mail Marketing",
      "HoverValue": "Mail Marketing Opt-In",
      "EmptyStaticBehavior": "Use Icon Only",
      "ZeroBehavior": "Treat Zeroes as Blanks",
      "ImageUrl": "https://login.salesforce.com/logos/Custom/Doc_Green/logo.png",
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
>- Added a `Field Label` row (`Mail Marketing`) so the real previewer's Extensions display criteria text doesn't show "undefined" - without it, `item.FieldLabel` is missing and `key.js` prints the literal word "undefined" instead of the field name. This is a guess at the real label of `Mail_Marketing__c` based on this page's own title - confirm it in your org and correct it here if it differs.
