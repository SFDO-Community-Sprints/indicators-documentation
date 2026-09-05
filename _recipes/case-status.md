---
title: "Case: Status"
category: [case]
display: [Badge]
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

**Contributed By** Claude, drafted for Jodie Miners to review
{: .contributed-by }
