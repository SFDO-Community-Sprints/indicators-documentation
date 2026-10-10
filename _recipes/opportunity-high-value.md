---
title: "Opportunity: High Value Deal"
category: [opportunity]
display: [Avatar, Has Extensions]
function: [Quantitative]
image: "![Opportunity High Value](/docs/images/icons/opportunity-high-value.png)"
status: Validated
---

### Description

> Flags an Opportunity as high value once its Amount crosses a threshold you set, so reps and managers can spot the deals worth extra attention without sorting a list view by Amount every time.

### Fields

| Fields | Value |
|---|---|
| Label | `Opportunity High Value` |
| sObject | `Opportunity` |
| Field | `Amount` |
| Field Label | `Amount` |
| Show when False or Blank | `false` |
| Description | `Shows a $ icon once Amount crosses the high-value threshold` |

### Extensions

| Fields | Value |
|---|---|
| Label | `Opportunity High Value - Over 50k` |
| Priority | `1` |
| Minimum (>=) | `50000` |
| Icon Value | `custom:custom41` |
| Icon Background | `#04844b` |
| Icon Foreground | `#ffffff` |
| Hover Text | `High value deal - over $50,000` |

### Preparation

- Decide your org's own "high value" threshold before setting the Minimum - $50,000 here is just an example.

### Notes

- Add a second Extension with a higher Minimum (eg `250000`) and a bolder color/static text (`$$$$`) if you want more than one tier, the same way the Contact Donation Frequency recipe tiers its icons (see [Contact Recipes](../docs/recipes/contact/contact.md)).

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
      "MasterLabel": "Opportunity High Value",
      "DeveloperName": "Opportunity_High_Value",
      "IsActive": true,
      "ObjectApiName": "Opportunity",
      "FieldApiName": "Amount",
      "FieldLabel": "Amount",
      "IndicatorDescription": "Shows a $ icon once Amount crosses the high-value threshold",
      "DisplayFalse": false,
      "bundleItem": null,
      "extensions": [
        {
          "MasterLabel": "Opportunity High Value - Over 50k",
          "DeveloperName": "Opportunity_High_Value_Over_50k",
          "IsActive": true,
          "PriorityOrder": 1,
          "Minimum": 50000,
          "ExtensionHoverText": "High value deal - over $50,000",
          "ExtensionIconValue": "custom:custom41",
          "BackgroundColor": "#04844b",
          "ForegroundColor": "#ffffff"
        }
      ]
    }
  ]
}
```

</details>

**Contributed By** Claude.
{: .contributed-by }
