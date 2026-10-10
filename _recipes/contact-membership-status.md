---
title: "Contact: Membership Status"
category: [contact-npsp]
display: [Avatar, Has Extensions]
function: [Qualitative]
image: https://login.salesforce.com/logos/Custom/Handshake_Green/logo.png
status: Validated
---

### Description

> This indicator shows a different color icon depending on the Membership Status of the Contact. Based on a new field added to the Contact record - 'Membership Status'. Add your own business logic (rollup, formula, flows) to populate this field from the opportunities object, Membership record type. Does not display if Membership Status is blank.

### Fields

| Fields | Value |
|-----------|-----------|
|Label|`Contact Membership Status`|
|sObject|`Contact`|
|Field|`Membership_Status__c`|
|Field Label|`Membership Status`|
|Description|

### Extensions

| Fields | Value |
|-----------|-----------|
|Displays|<img width="29" alt="image" src="https://user-images.githubusercontent.com/122455058/228940527-ba585f74-5f4c-4c42-a4d1-ebf32e718bf6.png">|
|Label|`Contact Membership Status - Current`|
|Indicator Item Extension Name|`Contact_Membership_Status_Current`|
|Priority|`1`|
|Active|`true`|
|Contains Text|`Current`
|Hover Text|`Membership - Current`|
|Image|`https://login.salesforce.com/logos/Custom/Handshake_Green/logo.png`|

| Fields | Value |
|-----------|-----------|
|Displays|<img width="28" alt="image" src="https://user-images.githubusercontent.com/122455058/228940822-6b00e762-4409-459d-b25a-e3982812fbc1.png">|
|Label|`Contact Membership Status - Lapsed`|
|Indicator Item Extension Name|`Contact_Membership_Status_Lapsed`|
|Priority|`2`|
|Active|`true`|
|Contains Text|`Lapsed`
|Hover Text|`Membership - Lapsed`|
|Image|`https://login.salesforce.com/logos/Custom/Handshake_Blue/logo.png`|

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
      "MasterLabel": "Contact Membership Status",
      "DeveloperName": "Contact_Membership_Status",
      "IsActive": true,
      "ObjectApiName": "Contact",
      "FieldApiName": "Membership_Status__c",
      "FieldLabel": "Membership Status",
      "IndicatorDescription": "",
      "bundleItem": null,
      "extensions": [
        {
          "MasterLabel": "Contact Membership Status - Current",
          "DeveloperName": "Contact_Membership_Status_Current",
          "IsActive": true,
          "PriorityOrder": 1,
          "TextOperator": "Equals",
          "ContainsText": "Current",
          "ExtensionHoverText": "Membership - Current",
          "ExtensionImageUrl": "https://login.salesforce.com/logos/Custom/Handshake_Green/logo.png"
        },
        {
          "MasterLabel": "Contact Membership Status - Lapsed",
          "DeveloperName": "Contact_Membership_Status_Lapsed",
          "IsActive": true,
          "PriorityOrder": 2,
          "TextOperator": "Equals",
          "ContainsText": "Lapsed",
          "ExtensionHoverText": "Membership - Lapsed",
          "ExtensionImageUrl": "https://login.salesforce.com/logos/Custom/Handshake_Blue/logo.png"
        }
      ]
    }
  ]
}
```

</details>

**Contributed By** Vicky McLaren, [VickyMcL](https://github.com/VickyMcL){:target="_blank"}
{: .contributed-by }
