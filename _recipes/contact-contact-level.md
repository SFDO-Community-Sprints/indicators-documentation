---
title: "Contact: Contact Level"
category: [contact-npsp]
display: [Avatar, Has Extensions]
function: [Quantitative]
image: "![Donor Level](/docs/images/icons/donor-level.png)"
status: Validated
---

### Description

> This indicator shows a different icon based on different donor levels identified.

{: .tip-title}
>Bundle
>
>Bundle this indicator with other Contact level donor Indicators such as One Off Donor, Regular Donor, Contact Level
>
>![Bundle Image](/docs/images/bundles/donorpreferences.png)>{:width="450px"}

### Fields

Fields | Value
-- | --
sObject | `Contact`
Field | `Donor_Level_Value_Formula__c`
Field Label | `Donor Level Value`
Active | `TRUE`
Empty Static Text Behavior | `Use Icon Only`
Show False or Blank | `FALSE`
Zero Value Handling | `Treat Zeroes as Blanks`

### Extensions

**Low-Mid**

Fields | Value
--|--
Label|`Contact Low-Mid Value Donor`
Indicator Item Extension Name|`Contact_Level`
Priority|`2.0`
Active|`true`
Minimum ( >= )|`1000.0`
Maximum ( < )|`5000.0`
Hover Text|`Low-Mid Value Donor`
Icon Value|`standard:settings`
Static Text|`£`

**Mid**

Fields | Value
--|--
Label|`Contact Mid-Value Donor`
Indicator Item Extension Name|`Contact_Level`
Priority|`2.0`
Active|`true`
Minimum ( >= )|`5000.0`
Maximum ( < )|`10000.0`
Hover Text|`Mid-Value Donor`
Icon Value|`standard:settings`
Static Text|`££`

**Major Donor**

Fields | Value
--|--
Label|`Contact Major Donor`
Indicator Item Extension Name|`Contact_Level`
Priority|`1.0`
Active|`true`
Minimum ( >= )|`10000.0`
Hover Text|`Major Donor`
Icon Value|`standard:settings`
Static Text|`£££`

### Preparation

`Donor_Level_Value_Formula__c` is a custom field that returns a text value based on the value of the total donations received from that Contact.
Note: You can also just use values in the Indicator Item Extensions. However, creating a formula field allows the field to be used in multiple places, including Reports.

The field display is in Pounds but you can use a Dollar sign if that is your currency.

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
      "MasterLabel": "Contact Level",
      "DeveloperName": "Contact_Level",
      "IsActive": true,
      "ObjectApiName": "Contact",
      "FieldApiName": "Donor_Level_Value_Formula__c",
      "FieldLabel": "Donor Level Value",
      "EmptyStaticBehavior": "Use Icon Only",
      "ZeroBehavior": "Treat Zeroes as Blanks",
      "DisplayFalse": false,
      "bundleItem": null,
      "extensions": [
        {
          "MasterLabel": "Contact Low-Mid Value Donor",
          "DeveloperName": "Contact_Level",
          "IsActive": true,
          "PriorityOrder": 2,
          "Minimum": 1000,
          "Maximum": 5000,
          "ExtensionHoverText": "Low-Mid Value Donor",
          "ExtensionTextValue": "£",
          "ExtensionIconValue": "standard:settings"
        },
        {
          "MasterLabel": "Contact Mid-Value Donor",
          "DeveloperName": "Contact_Level",
          "IsActive": true,
          "PriorityOrder": 2,
          "Minimum": 5000,
          "Maximum": 10000,
          "ExtensionHoverText": "Mid-Value Donor",
          "ExtensionTextValue": "££",
          "ExtensionIconValue": "standard:settings"
        },
        {
          "MasterLabel": "Contact Major Donor",
          "DeveloperName": "Contact_Level",
          "IsActive": true,
          "PriorityOrder": 1,
          "Minimum": 10000,
          "ExtensionHoverText": "Major Donor",
          "ExtensionTextValue": "£££",
          "ExtensionIconValue": "standard:settings"
        }
      ]
    }
  ]
}
```

</details>

**Contributed By** Emma Keeling, [Salesforce_Em](https://github.com/Salesforce-Em){:target="_blank"}
{: .contributed-by }
