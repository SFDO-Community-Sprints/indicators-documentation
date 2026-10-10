---
title: "Contact: Household Total Gifts"
category: [contact-npsp]
display: [Avatar, Has Extensions]
function: [Quantitative]
image: https://login.salesforce.com/logos/Custom/People_Green/logo.png
status: Validated
---

### Description

> An Indicator to show different color icon depending on the donation total for this contact's household. Based on the NPSP Donation Rollup.


### Fields

| Fields | Value |
|-----------|-----------|
|Label|`Contact Household Total Gifts`|
|sObject|`Contact`|
|Field|`npo02__Total_Household_Gifts__c`|
|Field Label|`Total Household Gifts`|
|Description|`Rollup: Total Gifts on related Household.`

### Extensions

| Fields | Value |
|-----------|-----------|
|Displays|<img width="28" alt="image" src="https://user-images.githubusercontent.com/122455058/228927484-874b83a3-0060-4e05-9b49-cfe10aef4125.png">|
|Label|`Contact Total Household Gifts--10k+`|
|Indicator Item Extension Name|`Contact_Total_Household_Gifts_10k`|
|Priority|`1`|
|Active|`true`|
|Minimum ( >= )|`10,000.000`|
|Maximum ( < )|
|Hover Text|`Total Household Donations - High`|
|Image|`https://login.salesforce.com/logos/Custom/People_Red/logo.png`|

| Fields | Value |
|-----------|-----------|
|Displays|<img width="28" alt="image" src="https://user-images.githubusercontent.com/122455058/228927919-f351a65b-89ba-47fb-a2bf-3bc562b9ac6f.png">
|Label|`Contact Household Total Gifts--1k-10k`|
|Indicator Item Extension Name|`Contact_Household_Total_Gifts_1k_10k`|
|Priority|`2`|
|Active|`true`|
|Minimum ( >= )|`1,000.000`|
|Maximum ( < )|`10,000.000`|
|Hover Text|`Total Household Donations - Med`|
|Image|`https://login.salesforce.com/logos/Custom/People_Yellow/logo.png`|

| Fields | Value |
|-----------|-----------|
|Displays|<img width="27" alt="image" src="https://user-images.githubusercontent.com/122455058/228928266-35380856-ed07-4f5c-96d8-bfeafe420382.png">
|Label|`Contact Household Total Gifts--0-1000`|
|Indicator Item Extension Name|`Contact_Household_Total_Gifts_0_1000`|
|Priority|`3`|
|Active|`true`|
|Minimum ( >= )|`0.010`|
|Maximum ( < )|`1,000.000`|
|Hover Text|`Total Household Donations - Low`|
|Image|`https://login.salesforce.com/logos/Custom/People_Green/logo.png`|

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
      "MasterLabel": "Contact Household Total Gifts",
      "DeveloperName": "Contact_Household_Total_Gifts",
      "IsActive": true,
      "ObjectApiName": "Contact",
      "FieldApiName": "npo02__Total_Household_Gifts__c",
      "FieldLabel": "Total Household Gifts",
      "IndicatorDescription": "Formula: Total Gifts on related Household.",
      "bundleItem": null,
      "extensions": [
        { 
          "MasterLabel": "Contact Total Household Gifts--10k+",
          "DeveloperName": "Contact_Total_Household_Gifts_10k",
          "IsActive": true,
          "PriorityOrder": 1,
          "Minimum": "10,000.000",
          "Maximum": "",
          "ExtensionHoverText": "Total Household Donations - High",
          "ExtensionImageUrl": "https://login.salesforce.com/logos/Custom/People_Red/logo.png"
        },
        {
          "MasterLabel": "Contact Household Total Gifts--1k-10k",
          "DeveloperName": "Contact_Household_Total_Gifts_1k_10k",
          "IsActive": true,
          "PriorityOrder": 2,
          "Minimum": "1,000.000",
          "Maximum": "10,000.000",
          "ExtensionHoverText": "Total Household Donations - Med",
          "ExtensionImageUrl": "https://login.salesforce.com/logos/Custom/People_Yellow/logo.png"
        },
        {
          "MasterLabel": "Contact Household Total Gifts--0-1000",
          "DeveloperName": "Contact_Household_Total_Gifts_0_1000",
          "IsActive": true,
          "PriorityOrder": 3,
          "Minimum": 0.01,
          "Maximum": "1,000.000",
          "ExtensionHoverText": "Total Household Donations - Low",
          "ExtensionImageUrl": "https://login.salesforce.com/logos/Custom/People_Green/logo.png"
        }
      ]
    }
  ]
}
```

</details>

**Contributed By** Vicky McLaren, [VickyMcL](https://github.com/VickyMcL){:target="_blank"}
{: .contributed-by }
