---
title: "Case: Status"
category: [case]
display: [Badge, Has Extensions]
function: [Qualitative]
image: "![Case Status Closed](/docs/images/icons/case-status-closed.png)"
---

### Description

> Shows the Case Status as a Badge, so the status reads as text rather than requiring users to learn a color code. Works well placed right at the top of a Case record, before any other Indicators.

### Fields

| Fields | Value |
|---|---|
| Label | `Case Status` |
| sObject | `Case` |
| Field | `Status` |
| Field Label | `Status` |
| Description | `Badge showing the Case's current Status` |

### Extensions

| Fields | Value |
|---|---|
| Label | `Case Status - New` |
| Priority | `1` |
| Match Operator | `Equals` |
| Text or Date Value | `New` |
| Badge Text Color | `#014486` |
| Hover Text | `New Case - not yet worked` |

| Fields | Value |
|---|---|
| Label | `Case Status - Escalated` |
| Priority | `2` |
| Match Operator | `Equals` |
| Text or Date Value | `Escalated` |
| Badge Text Color | `#8e030f` |
| Hover Text | `Escalated - needs attention` |

| Fields | Value |
|---|---|
| Label | `Case Status - Closed` |
| Priority | `3` |
| Match Operator | `Equals` |
| Text or Date Value | `Closed` |
| Badge Text Color | `#194e31` |
| Hover Text | `Closed` |

{: .tip-title }
> Bundle
>
> Pair with [Case Priority](#case-priority) in an Avatar Bundle placed just below - Status as a Badge, Priority as an icon, side by side.

### Notes

- Badges shouldn't carry Actions per the SLDS spec - if you want a click-to-act version of this, use [Case Priority](#case-priority) or a dedicated Avatar instead.
- Keep Badge text to the Status value itself (1-2 words) rather than adding extra static text.

<details markdown="block" class="recipe-preview">
<summary>🔍 Preview this Recipe in your Org</summary>

Copy this JSON and use the **Preview a Recipe** button on the Indicators Setup page. NOTE: Recipe preview does not work with Badges yet.

```json
{
  "recipeSchemaVersion": "1.0",
  "recipeType": "items",
  "bundle": null,
  "items": [
    {
      "MasterLabel": "Case Status",
      "DeveloperName": "Case_Status",
      "IsActive": true,
      "ObjectApiName": "Case",
      "FieldApiName": "Status",
      "FieldLabel": "Status",
      "IndicatorDescription": "Badge showing the Case's current Status",
      "bundleItem": null,
      "extensions": [
        {
          "MasterLabel": "Case Status - New",
          "DeveloperName": "Case_Status_New",
          "IsActive": true,
          "PriorityOrder": 1,
          "TextOperator": "Equals",
          "ContainsText": "New",
          "ExtensionHoverText": "New Case - not yet worked",
          "BadgeTextColor": "#014486"
        },
        {
          "MasterLabel": "Case Status - Escalated",
          "DeveloperName": "Case_Status_Escalated",
          "IsActive": true,
          "PriorityOrder": 2,
          "TextOperator": "Equals",
          "ContainsText": "Escalated",
          "ExtensionHoverText": "Escalated - needs attention",
          "BadgeTextColor": "#8e030f"
        },
        {
          "MasterLabel": "Case Status - Closed",
          "DeveloperName": "Case_Status_Closed",
          "IsActive": true,
          "PriorityOrder": 3,
          "TextOperator": "Equals",
          "ContainsText": "Closed",
          "ExtensionHoverText": "Closed",
          "BadgeTextColor": "#194e31"
        }
      ]
    }
  ]
}
```

</details>

**Contributed By** Claude.
{: .contributed-by }
