---
title: "Opportunity: Close Date Approaching"
category: [opportunity]
display: [Avatar]
function: [Next Up]
image: "![Opportunity Close Date Approaching](/docs/images/icons/opportunity-close-date-soon.png)"
---

### Description

> A "Next Up" Indicator using a Date Range Extension - shows an icon once an open Opportunity's Close Date is coming up soon, prompting the rep to check in before it arrives rather than after it's passed.

### Fields

| Fields | Value |
|---|---|
| Label | `Opportunity Close Date Approaching` |
| sObject | `Opportunity` |
| Field | `CloseDate` |
| Show when False or Blank | `false` |
| Description | `Shows an icon when the Close Date is within the next 14 days` |

### Extensions

| Fields | Value |
|---|---|
| Label | `Opportunity Close Date - Next 14 Days` |
| Priority | `1` |
| Match Operator | `Before End` |
| Text or Date Value | `NEXT_N_DAYS:14` |
| Icon Value | `utility:event` |
| Icon Background | `#dd7a01` |
| Icon Foreground | `#ffffff` |
| Hover Text | `Close Date within 14 days` |

{: .tip-title }
> Bundle
>
> Best placed in the same Bundle as [Opportunity Stage](#opportunity-stage) - "closing soon" only matters if the deal is still open, so keep an eye on the Stage Indicator right next to it.

### Notes

- This Extension only checks that the date is coming up soon - it doesn't check Stage. If you don't want this to show on a deal that's already Closed Won or Closed Lost, add a Formula field that blanks the Close Date reference (or checks IsClosed) rather than relying on the Indicator alone.
- Date Range Extensions have no overlap checking - order matters. If you add a second, tighter range (eg `NEXT_N_DAYS:3` for "closing this week"), give it a higher Priority than this one so it wins when both match.

**Contributed By** Claude, drafted for Jodie Miners to review
{: .contributed-by }
