---
title: "Contact: Do Not Contact"
category: [contact-npsp]
display: [Avatar]
function: [Soft Exceptions, Informational]
image: "![Red Cross](/docs/images/icons/red-cross.png)"
status: Validated
---

### Description

> This indicator represents a contact who has requested to not be contacted at all.

{: .tip-title}
>Bundle
>
>Bundle this indicator with other Contact level donor Indicators such as One Off Donor, Regular Donor, Contact Level
>
>![Bundle Image](/docs/images/bundles/donorpreferences.png){:width="450px"}

### Fields

Fields | Value
-- | --
sObject | `Contact`
Field | `npsp__Do_Not_Contact__c`
Field Label | `Do Not Contact`
Active | `TRUE`
Empty Static Text Behavior | `Use Icon Only`
Hover Text | `Do Not Contact`
Icon Value|`standard:first_non_empty`
|Icon Background|`Red`|
|Icon Foreground|`White`|
Show False or Blank | `TRUE`
Zero Value Handling | `Treat Zeroes as Blanks`

### Preparation

`npsp__Do_Not_Contact__c` is a standard NPSP field.

### Notes

The default color of this icon is pink after the updates from Winter '24. If you want to make changes, you can just adjust the Icon background and foreground settings. E.g. to change the icon to a red background and white symbol:

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
      "MasterLabel": "Do Not Contact",
      "DeveloperName": "Do_Not_Contact",
      "IsActive": true,
      "ObjectApiName": "Contact",
      "FieldApiName": "npsp__Do_Not_Contact__c",
      "FieldLabel": "Do Not Contact",
      "HoverValue": "Do Not Contact",
      "EmptyStaticBehavior": "Use Icon Only",
      "ZeroBehavior": "Treat Zeroes as Blanks",
      "IconName": "standard:first_non_empty",
      "BackgroundColor": "Red",
      "ForegroundColor": "White",
      "DisplayFalse": true,
      "bundleItem": null,
      "extensions": []
    }
  ]
}
```

</details>

**Contributed By** Emma Keeling, [Salesforce_Em](https://github.com/Salesforce-Em){:target="_blank"}
Maida Rider, [RiderM780](https://github.com/RiderM780){:target="_blank"}
{: .contributed-by }
