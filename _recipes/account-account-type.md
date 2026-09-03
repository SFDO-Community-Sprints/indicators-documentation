---
title: "Account: Account Type"
category: [account]
display: [Avatar]
function: [Qualitative, Multiple]
image: /docs/images/recipes/account-account-type.png
---

### Description

> Show a different icon depending on the Type of Account. Set up an Extension only for the Types you want an icon for &mdash; other Types display nothing. This example is for an org that wants to know at a glance whether an Account is a Partner or a Customer.

### Fields

| Field | Value |
| --- | --- |
| sObject | `Account` |
| Field | `Account Type` |
| Description | `Shows icons for Customer and Partner` |

### Extensions

| Field | Value |
| --- | --- |
| Priority | `1` |
| Contains Text | `Customer` |
| Description | `The Account Type is Customer` |
| Hover Text | `This is a Customer` |
| Icon Value | `standard:buyer_account` |


| Field | Value |
| --- | --- |
| Priority | `2` |
| Contains Text | `Partner` |
| Description | `The Account Type is Partner` |
| Hover Text | `This is a Partner` |
| Icon Value | `standard:partner_fund_request` |

### Notes

- Add one Extension per Account Type you care about; leave the rest without an icon.
- Keep the hover text aligned to your org's terminology (Customer / Partner / Supporter etc.).

### Screenshots

![image](https://user-images.githubusercontent.com/2966583/199822064-08c9d9e5-5cd5-4bfe-9def-4c20b740273a.png)
![image](https://user-images.githubusercontent.com/2966583/199822088-3ff61af4-c8cc-4993-9600-fe80413167cd.png)

### Links

In Bundles:

* [Account Account Default](/docs/recipes/account/bundle-account-key-details/)

**Contributed By** Sagal Mursal, [smursal](https://github.com/smursal){:target="_blank"}
{: .contributed-by }
