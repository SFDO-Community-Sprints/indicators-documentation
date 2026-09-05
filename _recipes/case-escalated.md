---
title: "Case: Escalated"
category: [case]
display: [Avatar]
function: [Soft Exceptions]
image: "![Case Escalated](/docs/images/icons/case-escalated.png)"
---

### Description

> A soft-exception flag based on the standard `IsEscalated` checkbox - shows nothing on a normal Case, and shows a warning icon the moment a Case is escalated, so it's impossible to miss on a busy queue.

### Fields

| Fields | Value |
|---|---|
| Label | `Case Escalated` |
| sObject | `Case` |
| Field | `IsEscalated` |
| Show when False or Blank | `false` |
| Icon Value | `utility:warning` |
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
- Consider adding an [Action](/docs/setup-salesforce-indicators/indicator-bundle-item/actions.html) on the Indicator Bundle Item that opens a Quick Action to log the escalation reason, so the same click that reveals the exception also starts fixing it.

**Contributed By** Claude, drafted for Jodie Miners to review
{: .contributed-by }
