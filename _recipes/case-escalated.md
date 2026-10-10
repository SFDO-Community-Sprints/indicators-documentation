---
title: "Case: Escalated"
category: [case]
display: [Avatar]
function: [Informational]
image: "![Case Escalated](/docs/images/icons/case-escalated.png)"
status: Validated
---

### Description

> A soft-exception flag based on the standard `IsEscalated` checkbox - shows nothing on a normal Case, and shows a warning icon the moment a Case is escalated, so it's impossible to miss on a busy queue.

### Fields

| Fields | Value |
|---|---|
| Label | `Case Escalated` |
| sObject | `Case` |
| Field | `IsEscalated` |
| Field Label | `Escalated` |
| Show when False or Blank | `false` |
| Icon Value | `custom:custom26` |
| Icon Background | `#5f3e02` |
| Icon Foreground | `#fedfd0` |
| Hover Text | `This Case has been escalated` |
| Description | `Shows a warning icon when the Case is Escalated` |

{: .tip-title }
> Bundle
>
> Combine with [Case Priority](#case-priority) and [Case Status](#case-status) - this one is designed to stay invisible until it matters, so it won't add clutter to the majority of Cases that are never escalated.

### Notes

- Because `Show when False or Blank` is `false`, non-escalated Cases show nothing at all for this Indicator - that's intentional, this is meant to be a rare, attention-grabbing exception rather than a status you check on every Case.
- Consider adding an [Action](/docs/best-practices/actions/) on the Indicator Bundle Item that opens a Quick Action to log the escalation reason, so the same click that reveals the exception also starts fixing it.

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
      "MasterLabel": "Case Escalated",
      "DeveloperName": "Case_Escalated",
      "IsActive": true,
      "ObjectApiName": "Case",
      "FieldApiName": "IsEscalated",
      "FieldLabel": "Escalated",
      "IndicatorDescription": "Shows a warning icon when the Case is Escalated",
      "HoverValue": "This Case has been escalated",
      "IconName": "custom:custom26",
      "BackgroundColor": "#5f3e02",
      "ForegroundColor": "#fedfd0",
      "DisplayFalse": false,
      "bundleItem": null,
      "extensions": []
    }
  ]
}
```

</details>

**Contributed By** Claude.
{: .contributed-by }
