---
title: "Opportunity: Stalled"
category: [opportunity]
display: [Avatar]
function: [Soft Exceptions]
image: "![Opportunity Stalled](/docs/images/icons/opportunity-stalled.png)"
---

### Description

> A soft-exception warning for an open Opportunity that hasn't had any activity logged in a while - not a hard rule stopping the rep from doing anything, just a nudge that this deal might need a check-in before it goes cold.

### Fields

| Fields | Value |
|---|---|
| Label | `Opportunity Stalled` |
| sObject | `Opportunity` |
| Field | `LastActivityDate` |
| Show when False or Blank | `true` |
| Description | `Warns when there has been no activity in the last 30 days` |

### Extensions

| Fields | Value |
|---|---|
| Label | `Opportunity Stalled - No Activity 30 Days` |
| Priority | `1` |
| Match Operator | `Before Start` |
| Text or Date Value | `LAST_N_DAYS:30` |
| Icon Value | `utility:warning` |
| Icon Background | `#5f3e02` |
| Icon Foreground | `#fedfd0` |
| Hover Text | `No activity logged in the last 30 days` |

### Preparation

- This works best on a formula field that blanks itself once the Opportunity is Closed Won or Closed Lost (eg `IF(IsClosed, null, LastActivityDate)`), so closed deals don't get flagged as stalled forever. Point the Indicator Item at that formula field instead of `LastActivityDate` directly.

### Notes

- This is deliberately an Avatar, not a Badge - it's meant to sit quietly among the other Indicators rather than announce itself the way a red Badge would across a whole pipeline view.
- Pair with an [Action](/docs/setup-salesforce-indicators/indicator-bundle-item/actions.html) that opens a Log a Call Quick Action, so the same click that reveals the stall also resolves it.

**Contributed By** Claude, drafted for Jodie Miners to review
{: .contributed-by }
