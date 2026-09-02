---
title: "Account: Grant-Making Organization"
category: [account]
display: [Badge]
function: [Informational]
image: https://user-images.githubusercontent.com/71383648/228939732-63c9bd6f-b2af-4e7b-82e2-1cc896910d13.png
---

**Description**

> Show an icon when the Organization has the NPSP **Grantmaker** checkbox ticked, so fundraisers can spot grant-making Accounts from a list view or the record header.

**In Bundle**

- [Account: Organization Funding Information](/docs/recipes/account/bundle-account-organization-funding/)

**Fields &mdash; Indicator Item**

| Field | Value | Notes |
| --- | --- | --- |
| sObject | `Account` | |
| Field | `npsp__Grantmaker__c` | Requires the NPSP field `npsp__Grantmaker__c` |
| Active | `true` | |
| Description | `Indicates this is a grant-making organization` | |
| Hover Text | `Grant-Maker` | |
| Empty Static Text Behavior | `Use Icon Only` | |
| Icon Value | `custom:custom17` | |
| Zero Behavior | `Treat Zeroes as Blanks` | |
| Show False or Blank | `false` | |

**Preparation**

- Make sure users can set **Grantmaker** on Accounts. See the [Salesforce Help docs](https://help.salesforce.com/s/articleView?id=sfdo.NPSP_Configure_Grants.htm&type=5){:target="_blank"}.

**Notes**

- If your org says "Company" rather than "Organization", change the labels and hover text to match.

**Contributed By** Jenn Carneiro, [jenncarneiro](https://github.com/jenncarneiro){:target="_blank"}
