---
title: "Case: Origin"
category: [case]
display: [Avatar, Has Extensions]
function: [Qualitative]
image: "![Case Origin Email](/docs/images/icons/case-origin-email.png)"
status: Validated
---

### Description

> Shows how the Case came in - Email, Phone, or Web - as an icon, so a rep can tell at a glance whether they're dealing with a written record they can quote back to the customer or a call they'll need to follow up on.

### Fields

| Fields | Value |
|---|---|
| Label | `Case Origin` |
| sObject | `Case` |
| Field | `Origin` |
| Field Label | `Case Origin` |
| Description | `Icon showing how the Case was logged` |

### Extensions

| Fields | Value |
|---|---|
| Label | `Case Origin - Email` |
| Priority | `1` |
| Match Operator | `Equals` |
| Text or Date Value | `Email` |
| Icon Value | `custom:custom23` |
| Icon Background | `#014486` |
| Icon Foreground | `#d8e6fe` |
| Hover Text | `Logged by Email` |

| Fields | Value |
|---|---|
| Label | `Case Origin - Phone` |
| Priority | `2` |
| Match Operator | `Equals` |
| Text or Date Value | `Phone` |
| Icon Value | `custom:custom22` |
| Hover Text | `Logged by Phone` |

| Fields | Value |
|---|---|
| Label | `Case Origin - Web` |
| Priority | `3` |
| Match Operator | `Equals` |
| Text or Date Value | `Web` |
| Icon Value | `custom:custom68` |
| Hover Text | `Logged via the Web` |

### Notes

- Add a Chat or Messaging extension the same way if your org uses those channels.
- This is a good candidate to leave as a plain Informational Avatar - Origin isn't an exception or a next step, it's just useful context, so resist the urge to add an Action to it.

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
      "MasterLabel": "Case Origin",
      "DeveloperName": "Case_Origin",
      "IsActive": true,
      "ObjectApiName": "Case",
      "FieldApiName": "Origin",
      "FieldLabel": "Case Origin",
      "IndicatorDescription": "Icon showing how the Case was logged",
      "bundleItem": null,
      "extensions": [
        {
          "MasterLabel": "Case Origin - Email",
          "DeveloperName": "Case_Origin_Email",
          "IsActive": true,
          "PriorityOrder": 1,
          "TextOperator": "Equals",
          "ContainsText": "Email",
          "ExtensionHoverText": "Logged by Email",
          "ExtensionIconValue": "custom:custom23",
          "BackgroundColor": "#014486",
          "ForegroundColor": "#d8e6fe"
        },
        {
          "MasterLabel": "Case Origin - Phone",
          "DeveloperName": "Case_Origin_Phone",
          "IsActive": true,
          "PriorityOrder": 2,
          "TextOperator": "Equals",
          "ContainsText": "Phone",
          "ExtensionHoverText": "Logged by Phone",
          "ExtensionIconValue": "custom:custom22"
        },
        {
          "MasterLabel": "Case Origin - Web",
          "DeveloperName": "Case_Origin_Web",
          "IsActive": true,
          "PriorityOrder": 3,
          "TextOperator": "Equals",
          "ContainsText": "Web",
          "ExtensionHoverText": "Logged via the Web",
          "ExtensionIconValue": "custom:custom68"
        }
      ]
    }
  ]
}
```

</details>

**Contributed By** Claude
{: .contributed-by }
