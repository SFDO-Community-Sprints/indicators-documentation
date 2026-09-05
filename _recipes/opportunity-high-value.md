---
title: "Opportunity: High Value Deal"
category: [opportunity]
display: [Avatar]
function: [Quantitative]
image: "![Opportunity High Value](/docs/images/icons/opportunity-high-value.png)"
---

### Description

> Flags an Opportunity as high value once its Amount crosses a threshold you set, so reps and managers can spot the deals worth extra attention without sorting a list view by Amount every time.

### Fields

| Fields | Value |
|---|---|
| Label | `Opportunity High Value` |
| sObject | `Opportunity` |
| Field | `Amount` |
| Show when False or Blank | `false` |
| Description | `Shows a $ icon once Amount crosses the high-value threshold` |

### Extensions

| Fields | Value |
|---|---|
| Label | `Opportunity High Value - Over 50k` |
| Priority | `1` |
| Minimum (>=) | `50000` |
| Icon Value | `utility:money` |
| Icon Background | `#04844b` |
| Icon Foreground | `#ffffff` |
| Static Text | `$$$` |
| Hover Text | `High value deal - over $50,000` |

### Preparation

- Decide your org's own "high value" threshold before setting the Minimum - $50,000 here is just an example.

### Notes

- Add a second Extension with a higher Minimum (eg `250000`) and a bolder color/static text (`$$$$`) if you want more than one tier, the same way the Contact Donation Frequency recipe tiers its icons (see [Contact Recipes](/docs/recipes/contact.html)).
- This reads better as an Informational/Quantitative Avatar than as an Action - the number itself is the useful fact; don't turn it into a click-through unless there's somewhere specific it should lead (eg a related approval process).

**Contributed By** Claude, drafted for Jodie Miners to review
{: .contributed-by }
