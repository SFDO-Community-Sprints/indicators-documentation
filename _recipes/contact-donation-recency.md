---
title: "Contact: Donation Recency"
category: [contact-npsp]
display: [Avatar, Has Extensions]
function: [Quantitative]
image: https://user-images.githubusercontent.com/122455058/228932794-989ce0b4-7a2a-4f16-b6bd-6b210472c6ae.png
status: Validated
---

### Description

> Show a different icon depending on how long it's been since the Contact's last donation. Based on the NPSP rollup **Last Donation Date** (`npo02__LastCloseDate__c`).

### Indicator Item

| Field | Value |
| --- | --- |
| Label | `Contact Donation Recency` |
| sObject | `Contact` |
| Field | `Donation_Recency__c` |
| Field Label | `Donation Recency` |

### Extensions

| Field | Value |
| --- | --- |
| Label | `Contact Donation Recency -- last 6 months` |
| Extension Name | `Contact_Donation_Recency_last_6_months` |
| Priority | `1` |
| Active | `true` |
| Minimum ( >= ) | `1` |
| Maximum ( < ) | `183` |
| Hover Text | `Recency - Last 6 months` |
| Icon Value | `standard:portal` |

| Field | Value |
| --- | --- |
| Label | `Contact Donation Recency -- 6 to 18 months` |
| Extension Name | `Contact_Donation_Recency_6_18_months` |
| Priority | `2` |
| Active | `true` |
| Minimum ( >= ) | `183` |
| Maximum ( < ) | `549` |
| Hover Text | `Recency - Last 18 months` |
| Icon Value | `standard:performance` |

| Field | Value |
| --- | --- |
| Label | `Contact Donation Recency -- 18+ months` |
| Extension Name | `Contact_Donation_Recency_18_months` |
| Priority | `3` |
| Active | `true` |
| Minimum ( >= ) | `549` |
| Hover Text | `Recency - Over 18 months ago` |
| Icon Value | `standard:thanks` |

### Preparation

Add a formula field on Contact named `Donation Recency` with formula `TODAY() - npo02__LastCloseDate__c` (result: Number of days).

### Notes

💡 This has been made with a formula field. You could also use the standard NPSP Last Close Date field, and Extensions with Date Ranges now.
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
      "MasterLabel": "Contact Donation Recency",
      "DeveloperName": "Contact_Donation_Recency",
      "IsActive": true,
      "ObjectApiName": "Contact",
      "FieldApiName": "Donation_Recency__c",
      "FieldLabel": "Donation Recency",
      "bundleItem": null,
      "extensions": [
        {
          "MasterLabel": "Contact Donation Recency -- last 6 month",
          "DeveloperName": "Contact_Donation_Recency_last_6_months",
          "IsActive": true,
          "PriorityOrder": 1,
          "Minimum": 1,
          "Maximum": 183,
          "ExtensionHoverText": "Recency - Last 6 months",
          "ExtensionIconValue": "standard:portal"
        },
        {
          "MasterLabel": "Contact Donation Recency -- 6 to 18 mont",
          "DeveloperName": "Contact_Donation_Recency_6_18_months",
          "IsActive": true,
          "PriorityOrder": 2,
          "Minimum": 183,
          "Maximum": 549,
          "ExtensionHoverText": "Recency - Last 18 months",
          "ExtensionIconValue": "standard:performance"
        },
        {
          "MasterLabel": "Contact Donation Recency -- 18+ months",
          "DeveloperName": "Contact_Donation_Recency_18_months",
          "IsActive": true,
          "PriorityOrder": 3,
          "Minimum": 549,
          "ExtensionHoverText": "Recency - Over 18 months ago",
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

