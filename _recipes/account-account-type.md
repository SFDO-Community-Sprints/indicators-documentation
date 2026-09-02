---
title: "Account: Account Type"
category: [account]
display: [Badge]
function: [Qualitative, Multiple]
image: https://user-images.githubusercontent.com/2966583/199822088-3ff61af4-c8cc-4993-9600-fe80413167cd.png
---

**Description**

> Show a different icon depending on the Type of Account. Set up an Extension only for the Types you want an icon for &mdash; other Types display nothing. This example is for an org that wants to know at a glance whether an Account is a Partner or a Customer.

**Fields &mdash; Indicator Item**

| Field | Value |
| --- | --- |
| sObject | `Account` |
| Field | `Account Type` |
| Description | `Shows icons for Customer and Partner` |

**Fields &mdash; Extension: Customer**

| Field | Value |
| --- | --- |
| Priority | `1` |
| Contains Text | `Customer` |
| Description | `The Account Type is Customer` |
| Hover Text | `This is a Customer` |
| Icon Value | `standard:buyer_account` |

**Fields &mdash; Extension: Partner**

| Field | Value |
| --- | --- |
| Priority | `2` |
| Contains Text | `Partner` |
| Description | `The Account Type is Partner` |
| Hover Text | `This is a Partner` |
| Icon Value | `standard:partner_fund_request` |

**Notes**

- Add one Extension per Account Type you care about; leave the rest without an icon.
- Keep the hover text aligned to your org's terminology (Customer / Partner / Supporter etc.).

**Contributed By** Sagal Mursal, [smursal](https://github.com/smursal){:target="_blank"}
