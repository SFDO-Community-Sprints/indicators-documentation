---
title: "Opportunity: Stalled"
category: [opportunity]
display: [Avatar, Has Extensions]
function: [Soft Exceptions]
image: "![Opportunity Stalled](/docs/images/icons/opportunity-stalled.png)"
status: Validated
---

### Description

> A soft-exception warning for an open Opportunity that hasn't had any activity logged in a while - not a hard rule stopping the rep from doing anything, just a nudge that this deal might need a check-in before it goes cold.

### Fields

| Fields | Value |
|---|---|
| Label | `Opportunity Stalled` |
| sObject | `Opportunity` |
| Field | `LastActivityDate` |
| Field Label | `Last Activity` |
| Show when False or Blank | `true` |
| Description | `Warns when there has been no activity in the last 30 days` |

### Extensions

| Fields | Value |
|---|---|
| Label | `Opportunity Stalled - No Activity 30 Days` |
| Priority | `1` |
| Match Operator | `Before Start` |
| Text or Date Value | `LAST_N_DAYS:30` |
| Icon Value | `custom:custom26` |
| Icon Background | `#5f3e02` |
| Icon Foreground | `#fedfd0` |
| Hover Text | `No activity logged in the last 30 days` |

### Preparation

- This works best on a formula field that blanks itself once the Opportunity is Closed Won or Closed Lost (eg `IF(IsClosed, null, LastActivityDate)`), so closed deals don't get flagged as stalled forever. Point the Indicator Item at that formula field instead of `LastActivityDate` directly.

### Notes

- This is deliberately an Avatar, not a Badge - it's meant to sit quietly among the other Indicators rather than announce itself the way a red Badge would across a whole pipeline view.
- Pair with an [Action](/docs/best-practices/actions/) that opens a Log a Call Quick Action, so the same click that reveals the stall also resolves it.

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
      "MasterLabel": "Opportunity Stalled",
      "DeveloperName": "Opportunity_Stalled",
      "IsActive": true,
      "ObjectApiName": "Opportunity",
      "FieldApiName": "LastActivityDate",
      "FieldLabel": "Last Activity",
      "IndicatorDescription": "Warns when there has been no activity in the last 30 days",
      "DisplayFalse": true,
      "bundleItem": null,
      "extensions": [
        {
          "MasterLabel": "Opportunity Stalled - No Activity 30 Day",
          "DeveloperName": "Opportunity_Stalled_No_Activity_30_Day",
          "IsActive": true,
          "PriorityOrder": 1,
          "TextOperator": "Before Start",
          "ContainsText": "LAST_N_DAYS:30",
          "ExtensionHoverText": "No activity logged in the last 30 days",
          "ExtensionIconValue": "custom:custom26",
          "BackgroundColor": "#5f3e02",
          "ForegroundColor": "#fedfd0"
        }
      ]
    }
  ]
}
```

</details>

**Contributed By** Claude.
{: .contributed-by }
