---
title: "Case: Priority"
category: [case]
display: [Avatar, Has Extensions]
function: [Qualitative]
image: "![Case Priority Critical](/docs/images/icons/case-priority-critical.png)"
status: Validated
---

### Description

> Shows the Case's Priority as a colored icon, so a support rep scanning a list of Cases can tell urgency apart without opening the field. Uses the standard `Priority` picklist (`Low`, `Medium`, `High`).

### Fields

| Fields | Value |
|---|---|
| Label | `Case Priority` |
| sObject | `Case` |
| Field | `Priority` |
| Field Label | `Priority` |
| Description | `Icon colored by Case Priority` |

### Extensions

| Fields | Value |
|---|---|
| Label | `Case Priority - High` |
| Priority | `1` |
| Match Operator | `Equals` |
| Text or Date Value | `High` |
| Icon Value | `utility:priority` |
| Icon Background | `#feded8` |
| Icon Foreground | `#8e030f` |
| Hover Text | `Priority - High` |

| Fields | Value |
|---|---|
| Label | `Case Priority - Medium` |
| Priority | `2` |
| Match Operator | `Equals` |
| Text or Date Value | `Medium` |
| Icon Value | `utility:priority` |
| Icon Background | `#fedfd0` |
| Icon Foreground | `#5f3e02` |
| Hover Text | `Priority - Medium` |

| Fields | Value |
|---|---|
| Label | `Case Priority - Low` |
| Priority | `3` |
| Match Operator | `Equals` |
| Text or Date Value | `Low` |
| Icon Value | `utility:priority` |
| Icon Background | `#d8e6fe` |
| Icon Foreground | `#014486` |
| Hover Text | `Priority - Low` |

{: .tip-title }
> Bundle
>
> Group with **Case Status** and **Case Escalated** in a small Case header Bundle - Priority, Status, and Escalated together give a support rep the full urgency picture in one glance, before they even open the Case.

### Notes

- If your org has added a `Critical` value to Priority, add a fourth Extension above the High row with a `1` Priority and renumber the rest.

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
      "MasterLabel": "Case Priority",
      "DeveloperName": "Case_Priority",
      "IsActive": true,
      "ObjectApiName": "Case",
      "FieldApiName": "Priority",
      "FieldLabel": "Priority",
      "IndicatorDescription": "Icon colored by Case Priority",
      "bundleItem": null,
      "extensions": [
        {
          "MasterLabel": "Case Priority - High",
          "DeveloperName": "Case_Priority_High",
          "IsActive": true,
          "PriorityOrder": 1,
          "TextOperator": "Equals",
          "ContainsText": "High",
          "ExtensionHoverText": "Priority - High",
          "ExtensionIconValue": "utility:priority",
          "BackgroundColor": "#feded8",
          "ForegroundColor": "#8e030f"
        },
        {
          "MasterLabel": "Case Priority - Medium",
          "DeveloperName": "Case_Priority_Medium",
          "IsActive": true,
          "PriorityOrder": 2,
          "TextOperator": "Equals",
          "ContainsText": "Medium",
          "ExtensionHoverText": "Priority - Medium",
          "ExtensionIconValue": "utility:priority",
          "BackgroundColor": "#fedfd0",
          "ForegroundColor": "#5f3e02"
        },
        {
          "MasterLabel": "Case Priority - Low",
          "DeveloperName": "Case_Priority_Low",
          "IsActive": true,
          "PriorityOrder": 3,
          "TextOperator": "Equals",
          "ContainsText": "Low",
          "ExtensionHoverText": "Priority - Low",
          "ExtensionIconValue": "utility:priority",
          "BackgroundColor": "#d8e6fe",
          "ForegroundColor": "#014486"
        }
      ]
    }
  ]
}
```

</details>

**Contributed By** Claude
{: .contributed-by }
