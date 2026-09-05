---
title: "Case: Origin"
category: [case]
display: [Avatar]
function: [Informational]
image: "![Case Origin Email](/docs/images/icons/case-origin-email.png)"
---

### Description

> Shows how the Case came in - Email, Phone, or Web - as an icon, so a rep can tell at a glance whether they're dealing with a written record they can quote back to the customer or a call they'll need to follow up on.

### Fields

| Fields | Value |
|---|---|
| Label | `Case Origin` |
| sObject | `Case` |
| Field | `Origin` |
| Description | `Icon showing how the Case was logged` |

### Extensions

| Fields | Value |
|---|---|
| Label | `Case Origin - Email` |
| Priority | `1` |
| Match Operator | `Equals` |
| Text or Date Value | `Email` |
| Icon Value | `utility:email` |
| Icon Background | `#014486` |
| Icon Foreground | `#d8e6fe` |
| Hover Text | `Logged by Email` |

| Fields | Value |
|---|---|
| Label | `Case Origin - Phone` |
| Priority | `2` |
| Match Operator | `Equals` |
| Text or Date Value | `Phone` |
| Icon Value | `utility:call` |
| Hover Text | `Logged by Phone` |

| Fields | Value |
|---|---|
| Label | `Case Origin - Web` |
| Priority | `3` |
| Match Operator | `Equals` |
| Text or Date Value | `Web` |
| Icon Value | `utility:world` |
| Hover Text | `Logged via the Web` |

### Notes

- Add a Chat or Messaging extension the same way if your org uses those channels.
- This is a good candidate to leave as a plain Informational Avatar - Origin isn't an exception or a next step, it's just useful context, so resist the urge to add an Action to it.

**Contributed By** Claude, drafted for Jodie Miners to review
{: .contributed-by }
