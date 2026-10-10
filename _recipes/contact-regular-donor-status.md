---
title: "Contact: Regular Donor Status"
category: [contact-npsp]
display: [Avatar, Has Extensions]
function: [Qualitative]
image: https://login.salesforce.com/logos/Custom/Heart_Green/logo.png
status: Validated
---

### Description

> This Indicator shows a different color icon depending on the Regular Donor Status of the Contact. Based on a new field added to the Contact record - **Regular Donor Status**. Add your own business logic (rollup, formula, flows) to populate this field from the recurring donations object. Does not display if Regular Donor Status is blank.

{: .tip-title}
>Bundle
>
>Bundle this indicator with other Contact level donor Indicators such as One Off Donor, Contact Level, Do Not Contact
>
>![Bundle Image](/docs/images/bundles/donorpreferences.png){:width="450px"}
>
>You can see this bundle in action with the [National Youth Orchestra](https://hazledenesolutions.co.uk/2024/02/10/data-illumination-seeing-the-essential-with-salesforce-indicators/){:target="_blank"}  


### Fields

| Fields | Value |
|-----------|-----------|
|Label|`Contact Regular Donor Status`|
|sObject|`Contact`|
|Field|`Regular_Donor_Status__c`|
|Field Label|`Regular Donor Status`|
|Description|

### Extensions

| Fields | Value |
|-----------|-----------|
|Displays|<img width="27" alt="image" src="https://user-images.githubusercontent.com/122455058/228939786-f07d32ca-d62f-4189-9b83-aa2d6532b150.png">|
|Label|`Contact RD Status - Current`|
|Indicator Item Extension Name|`Contact_RD_Status_Current`|
|Priority|`1`|
|Active|`true`|
|Contains Text|`Current`|
|Hover Text|`Regular Donor - Current`|
|Image|`https://login.salesforce.com/logos/Custom/Heart_Green/logo.png`|

| Fields | Value |
|-----------|-----------|
|Displays|<img width="28" alt="image" src="https://user-images.githubusercontent.com/122455058/228939331-429e48c4-b90c-492a-a448-78c928038950.png">|
|Label|`Contact RD Status - Lapsed`|
|Indicator Item Extension Name|`Contact_RD_Status_Lapsed`|
|Priority|`2`|
|Active|`true`|
|Contains Text|`Lapsed`|
|Hover Text|`Regular Donor - Lapsed`|
|Image|`https://login.salesforce.com/logos/Custom/Heart_Blue/logo.png`|

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
      "MasterLabel": "Contact Regular Donor Status",
      "DeveloperName": "Contact_Regular_Donor_Status",
      "IsActive": true,
      "ObjectApiName": "Contact",
      "FieldApiName": "Regular_Donor_Status__c",
      "FieldLabel": "Regular Donor Status",
      "IndicatorDescription": "",
      "bundleItem": null,
      "extensions": [
        {
          "MasterLabel": "Contact RD Status - Current",
          "DeveloperName": "Contact_RD_Status_Current",
          "IsActive": true,
          "PriorityOrder": 1,
          "TextOperator": "Equals",
          "ContainsText": "Current",
          "ExtensionHoverText": "Regular Donor - Current",
          "ExtensionImageUrl": "https://login.salesforce.com/logos/Custom/Heart_Green/logo.png"
        },
        {
          "MasterLabel": "Contact RD Status - Lapsed",
          "DeveloperName": "Contact_RD_Status_Lapsed",
          "IsActive": true,
          "PriorityOrder": 2,
          "TextOperator": "Equals",
          "ContainsText": "Lapsed",
          "ExtensionHoverText": "Regular Donor - Lapsed",
          "ExtensionImageUrl": "https://login.salesforce.com/logos/Custom/Heart_Blue/logo.png"
        }
      ]
    }
  ]
}
```

</details>

**Contributed By** Vicky McLaren, [VickyMcL](https://github.com/VickyMcL){:target="_blank"}
{: .contributed-by }
