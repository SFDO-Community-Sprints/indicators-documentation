---
title: "Case: Priority"
category: [case]
display: [Avatar]
function: [Qualitative]
image: "![Case Priority Critical](/docs/images/icons/case-priority-critical.png)"
---

### Description

> Shows the Case's Priority as a colored icon, so a support rep scanning a list of Cases can tell urgency apart without opening the field. Uses the standard `Priority` picklist (`Low`, `Medium`, `High`) - add a fourth Extension if your org has added a `Critical` value.

### Fields

| Fields | Value |
|---|---|
| Label | `Case Priority` |
| sObject | `Case` |
| Field | `Priority` |
| Description | `Icon colored by Case Priority` |

### Extensions

| Fields | Value |
|---|---|
| Label | `Case Priority - High` |
| Priority | `1` |
| Match Operator | `Equals` |
| Text or Date Value | `High` |
| Icon Value | `utility:priority` |
| Icon Background | `#feded8` |
| Icon Foreground | `#8e030f` |
| Hover Text | `Priority - High` |

| Fields | Value |
|---|---|
| Label | `Case Priority - Medium` |
| Priority | `2` |
| Match Operator | `Equals` |
| Text or Date Value | `Medium` |
| Icon Value | `utility:priority` |
| Icon Background | `#fedfd0` |
| Icon Foreground | `#5f3e02` |
| Hover Text | `Priority - Medium` |

| Fields | Value |
|---|---|
| Label | `Case Priority - Low` |
| Priority | `3` |
| Match Operator | `Equals` |
| Text or Date Value | `Low` |
| Icon Value | `utility:priority` |
| Icon Background | `#d8e6fe` |
| Icon Foreground | `#014486` |
| Hover Text | `Priority - Low` |

{: .tip-title }
> Bundle
>
> Group with **Case Status** and **Case Escalated** in a small Case header Bundle - Priority, Status, and Escalated together give a support rep the full urgency picture in one glance, before they even open the Case.

### Notes

- If your org has added a `Critical` value to Priority, add a fourth Extension above the High row with a `1` Priority and renumber the rest.
- Consider `Display Multiple` = `false` here - a Case only has one Priority at a time, so only one icon should ever show.

**Contributed By** Claude, drafted for Jodie Miners to review
{: .contributed-by }
