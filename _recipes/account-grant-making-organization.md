---
title: "Account: Grant-Making Organization"
category: [account-npsp]
display: [Avatar]
function: [Qualitative]
image: https://user-images.githubusercontent.com/71383648/228940185-57fd71bd-e5cd-424d-8ba0-0740500fea1f.png
status: Validated
---

### Description

> Show an icon when the Organization has the NPSP **Grantmaker** checkbox ticked, so fundraisers can spot grant-making Accounts from a list view or the record header.

{: .tip-title}
>Bundle
>
>Bundle this indicator with other Organization level donor Indicators such as Organization Giving Level and Matching Gift Organization. 

### Indicator Item

| Field | Value | Notes |
| --- | --- | --- |
| sObject | `Account` | |
| Field | `npsp__Grantmaker__c` | Requires the NPSP field `npsp__Grantmaker__c` |
| Field Label | `Grantmaker` | |
| Active | `true` | |
| Description | `Indicates this is a grant-making organization` | |
| Hover Text | `This is a Grant-Making Organization` | |
| Empty Static Text Behavior | `Use Icon Only` | |
| Icon Value | `custom:custom17` | |
| Zero Behavior | `Treat Zeroes as Blanks` | |
| Show False or Blank | `false` | |

### Preparation

- Make sure users can set **Grantmaker** on Accounts. See the [Salesforce Help docs](https://help.salesforce.com/s/articleView?id=sfdo.NPSP_Configure_Grants.htm&type=5){:target="_blank"}.

### Notes

- If your org says "Company" rather than "Organization", change the labels and hover text to match.

<details markdown="block" class="recipe-preview">
<summary>🔍 Preview this Recipe in your Org</summary>

Copy this JSON and use the **Preview a Recipe** button on the Indicators Setup page.

```json
{
  "recipeSchemaVersion": "1.0",
  "recipeType": "items",
  "bundle": null,
  "items": [
    {
      "MasterLabel": "Grant-Making Organization",
      "DeveloperName": "Grant_Making_Organization",
      "IsActive": true,
      "ObjectApiName": "Account",
      "FieldApiName": "npsp__Grantmaker__c",
      "FieldLabel": "Grantmaker",
      "IndicatorDescription": "Indicates this is a grant-making organization",
      "HoverValue": "This is a Grant-Making Organization",
      "EmptyStaticBehavior": "Use Icon Only",
      "IconName": "custom:custom17",
      "DisplayFalse": false,
      "bundleItem": null,
      "extensions": []
    }
  ]
}
```

</details>

**Contributed By** Jenn Carneiro, [jenncarneiro](https://github.com/jenncarneiro){:target="_blank"}
{: .contributed-by }
