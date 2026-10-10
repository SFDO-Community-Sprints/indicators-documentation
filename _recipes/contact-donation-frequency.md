---
title: "Contact: Donation Frequency"
category: [contact-npsp]
display: [Avatar, Has Extensions]
function: [Qualitative]
image: https://user-images.githubusercontent.com/122455058/228937477-d84ddb94-9f26-488b-ba96-e7da59582d7a.png
status: Validated
---

### Description

> This Indicator shows a different color icon depending on the number of donations made by the Contact in the last N days. Based on the NPSP Donation Rollup - Number of Donations Last N Days. In this recipe N has been set to 1095 days to represent the last 3 years. Go to NPSP Donation Rollups Settings to manage the 'Number of Donations Last N Days' rollup.

### Fields

| Fields | Value |
|-----------|-----------|
|Label|`Contact Donation Frequency`|
|sObject|`Contact`|
|Field|`Number_of_Gifts_Last_N_Days__c`|
|Field Label|`Number of Gifts Last N Days`|
|Description|

### Extensions

| Fields | Value |
|-----------|-----------|
|Displays|<img width="26" alt="image" src="https://user-images.githubusercontent.com/122455058/228937271-07d4643f-b06b-4fe0-80b9-e0a64362a557.png">|
|Label|`Contact Total No Gifts--12+`|
|Indicator Item Extension Name|`Contact_Total_No_Gifts_12`|
|Priority|`1`|
|Active|`true`|
|Minimum ( >= )|`12.000`|
|Maximum ( < )|
|Description|
|Static Text|`III`|
|Hover Text|`Frequency - High`|
|Icon Value|`standard:portal`|
|Image|

| Fields | Value |
|-----------|-----------|
|Displays|<img width="26" alt="image" src="https://user-images.githubusercontent.com/122455058/228937477-d84ddb94-9f26-488b-ba96-e7da59582d7a.png">|
|Label|`Contact Total No Gifts--6-12`|
|Indicator Item Extension Name|`Contact_Total_No_Gifts_6_12`|
|Priority|`2`|
|Active|`true`|
|Minimum ( >= )|`6.000`|
|Maximum ( < )|`12.000`|
|Description|
|Static Text|`II`
|Hover Text|`Frequency - Medium`|
|Icon Value|`standard:merge`
|Image|

| Fields | Value |
|-----------|-----------|
|Displays|<img width="26" alt="image" src="https://user-images.githubusercontent.com/122455058/228937858-1ecdc9ad-5526-4a6d-bcef-9bc96643381d.png">|
|Label|`Contact Total No Gifts--1-6`|
|Indicator Item Extension Name|`Contact_Total_No_Gifts_1_6`|
|Priority|`3`|
|Active|`true`|
|Minimum ( >= )|`1.000`|
|Maximum ( < )|`6.000`|
|Description|
|Static Text|`I`
|Hover Text|`Frequency - Low`|
|Icon Value|`standard:thanks`
|Image|

### Notes and Ideas

💡 This may be a better use for Badges with the full text showing, or the actual frequency number showing, with different colors for the ranges. 

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
      "MasterLabel": "Contact Donation Frequency",
      "DeveloperName": "Contact_Donation_Frequency",
      "IsActive": true,
      "ObjectApiName": "Contact",
      "FieldApiName": "npo02__OppsClosedLastNDays__c",
      "FieldLabel": "Number of Gifts Last N Days",
      "IndicatorDescription": "",
      "bundleItem": null,
      "extensions": [
        {
          "MasterLabel": "Contact Total No Gifts--12+",
          "DeveloperName": "Contact_Total_No_Gifts_12",
          "IsActive": true,
          "PriorityOrder": 1,
          "Minimum": 12,
          "Maximum": "",
          "ExtensionDescription": "",
          "ExtensionHoverText": "Frequency - High",
          "ExtensionTextValue": "III",
          "ExtensionImageUrl": "",
          "ExtensionIconValue": "standard:portal"
        },
        {
          "MasterLabel": "Contact Total No Gifts--6-12",
          "DeveloperName": "Contact_Total_No_Gifts_6_12",
          "IsActive": true,
          "PriorityOrder": 2,
          "Minimum": 6,
          "Maximum": 12,
          "ExtensionDescription": "",
          "ExtensionHoverText": "Frequency - Medium",
          "ExtensionTextValue": "II",
          "ExtensionImageUrl": "",
          "ExtensionIconValue": "standard:merge"
        },
        {
          "MasterLabel": "Contact Total No Gifts--1-6",
          "DeveloperName": "Contact_Total_No_Gifts_1_6",
          "IsActive": true,
          "PriorityOrder": 3,
          "Minimum": 1,
          "Maximum": 6,
          "ExtensionDescription": "",
          "ExtensionHoverText": "Frequency - Low",
          "ExtensionTextValue": "I",
          "ExtensionImageUrl": "",
          "ExtensionIconValue": "standard:thanks"
        }
      ]
    }
  ]
}
```

</details>

**Contributed By** Vicky McLaren, [VickyMcL](https://github.com/VickyMcL){:target="_blank"}
{: .contributed-by }
