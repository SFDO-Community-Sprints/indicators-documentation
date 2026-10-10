---
title: "Contact: Total Gifts"
category: [contact-npsp]
display: [Avatar, Has Extensions]
function: [Quantitative]
image: https://user-images.githubusercontent.com/122455058/228930521-24dc3283-a802-4bda-bc8c-7fc2c30cc46a.png
status: Validated
---

### Description

> This Indicator shows a different color icon depending on the donation total for this contact. Based on the NPSP Donation Rollup field Total Gifts.

### Fields

| Fields | Value |
|-----------|-----------|
|Label|`Contact Total Gifts`|
|sObject|`Contact`|
|Field|`npo02__TotalOppAmount__c`|
|Field Label|`Total Gifts`|
|Description|

### Extensions

| Fields | Value |
|-----------|-----------|
|Displays|<img width="26" alt="image" src="https://user-images.githubusercontent.com/122455058/228929869-94cca241-17ee-47fd-93a2-ef30d9159ea2.png">|
|Label|`Contact Total Gifts--5000+`|
|Indicator Item Extension Name|`Contact_Total_Gifts_5000`|
|Priority|`1`|
|Active|`true`|
|Minimum ( >= )|`5,000.000`|
|Maximum ( < )|
|Static Text|`$$$`|
|Hover Text|`Total Donations - High`|
|Icon Value|`standard:thanks`|

| Fields | Value |
|-----------|-----------|
|Displays|<img width="26" alt="image" src="https://user-images.githubusercontent.com/122455058/228930521-24dc3283-a802-4bda-bc8c-7fc2c30cc46a.png">|
|Label|`Contact Total Gifts--500-5000`|
|Indicator Item Extension Name|`Contact_Total_Gifts_500_5000`|
|Priority|`2`|
|Active|`true`|
|Minimum ( >= )|`500.000`|
|Maximum ( < )|`5,000.000`|
|Static Text|`$$`
|Hover Text|`Total Donations - Med`|
|Icon Value|`standard:merge`

| Fields | Value |
|-----------|-----------|
|Displays|<img width="29" alt="image" src="https://user-images.githubusercontent.com/122455058/228930960-82bea1f0-6214-41b3-8f43-3465f86317ee.png">|
|Label|`Contact Total Gifts--0-500`|
|Indicator Item Extension Name|`Contact_Total_Gifts_0_500`|
|Priority|`3`|
|Active|`true`|
|Minimum ( >= )|`0.010`|
|Maximum ( < )|`500.000`|
|Static Text|`$`
|Hover Text|`Total Donations - Low`|
|Icon Value|`standard:portal`

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
      "MasterLabel": "Contact Total Gifts",
      "DeveloperName": "Contact_Total_Gifts",
      "IsActive": true,
      "ObjectApiName": "Contact",
      "FieldApiName": "npo02__TotalOppAmount__c",
      "FieldLabel": "Total Gifts",
      "IndicatorDescription": "",
      "bundleItem": null,
      "extensions": [
        {
          "MasterLabel": "Contact Total Gifts--5000+",
          "DeveloperName": "Contact_Total_Gifts_5000",
          "IsActive": true,
          "PriorityOrder": 1,
          "Minimum": "5,000.000",
          "Maximum": "",
          "ExtensionHoverText": "Total Donations - High",
          "ExtensionTextValue": "$$$",
          "ExtensionIconValue": "standard:thanks"
        },
        {
          "MasterLabel": "Contact Total Gifts--500-5000",
          "DeveloperName": "Contact_Total_Gifts_500_5000",
          "IsActive": true,
          "PriorityOrder": 2,
          "Minimum": 500,
          "Maximum": "5,000.000",
          "ExtensionHoverText": "Total Donations - Med",
          "ExtensionTextValue": "$$",
          "ExtensionIconValue": "standard:merge"
        },
        {
          "MasterLabel": "Contact Total Gifts--0-500",
          "DeveloperName": "Contact_Total_Gifts_0_500",
          "IsActive": true,
          "PriorityOrder": 3,
          "Minimum": 0.01,
          "Maximum": 500,
          "ExtensionHoverText": "Total Donations - Low",
          "ExtensionTextValue": "$",
          "ExtensionIconValue": "standard:portal"
        }
      ]
    }
  ]
}
```

</details>

**Contributed By** Vicky McLaren, [VickyMcL](https://github.com/VickyMcL){:target="_blank"}
{: .contributed-by }
