---
title: "Opportunity: Stage"
category: [opportunity]
display: [Pill]
function: [Qualitative]
image: "![Opportunity Stage Closed Won](/docs/images/icons/opportunity-stage-closed-won.png)"
---

### Description

> Shows the Opportunity's Stage as a Pill - icon and text together - so the stage is readable without hovering, which matters on a Bundle a Sales rep will glance at dozens of times a day.

### Fields

| Fields | Value |
|---|---|
| Label | `Opportunity Stage` |
| sObject | `Opportunity` |
| Field | `StageName` |
| Description | `Pill showing the current Stage` |

### Extensions

| Fields | Value |
|---|---|
| Label | `Opportunity Stage - Closed Won` |
| Priority | `1` |
| Match Operator | `Equals` |
| Text or Date Value | `Closed Won` |
| Icon Value | `standard:opportunity` |
| Icon Background | `#2e844a` |
| Icon Foreground | `#ffffff` |
| Hover Text | `Closed Won` |

| Fields | Value |
|---|---|
| Label | `Opportunity Stage - Closed Lost` |
| Priority | `2` |
| Match Operator | `Equals` |
| Text or Date Value | `Closed Lost` |
| Icon Value | `standard:opportunity` |
| Icon Background | `#8e030f` |
| Icon Foreground | `#ffffff` |
| Hover Text | `Closed Lost` |

| Fields | Value |
|---|---|
| Label | `Opportunity Stage - Open` |
| Priority | `3` |
| Match Operator | `Contains` |
| Text or Date Value | (leave blank - catches everything not already matched above) |
| Icon Value | `standard:opportunity` |
| Hover Text | `Open` |

{: .tip-title }
> Bundle
>
> Pair with [Opportunity High Value](#opportunity-high-value) and [Opportunity Close Date Approaching](#opportunity-close-date-approaching) in one small Bundle at the top of the Opportunity page - stage, size, and urgency together.

### Notes

- List every open stage individually (by name, in your org's actual Stage order) instead of the catch-all "Open" extension shown here, if you want a different color per stage rather than one color for "still open."
- Pills work well here because Stage names vary in length - a Badge would need consistent short text, which Stage names usually aren't.

**Contributed By** Claude, drafted for Jodie Miners to review
{: .contributed-by }
