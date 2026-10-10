---
title: "Account: Is Government"
category: [account]
display: [Avatar, Has Extensions]
function: [Informational]
image: "![Standard Planogram](/docs/images/icons/planogram-std.png)"
status: Validated
---

### Description

> Show an Icon for government accounts.

{: .tip-title}
>Bundle
>
>Bundle this indicator with other Account Inicators, if your Org needs to focus on goverment Accounts. 

### Fields

| Fields | Value | Description |
|-----------|-----------|--------------------------|
|sObject|`Account`
|Field|`Account Industry`|
|Description|`Shows the account's industry.`

### Extensions

| Fields | Value | Description |
|-----------|-----------|--------------------------|
|Priority|`1`
|Contains Text|`Government`
|Hover Text|`Government Account`
|Icon Value|`standard:planogram`

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
      "MasterLabel": "Is Government",
      "DeveloperName": "Is_Government",
      "IsActive": true,
      "ObjectApiName": "Account",
      "FieldApiName": "Industry",
      "FieldLabel": "Industry",
      "IndicatorDescription": "Shows the account's industry.",
      "bundleItem": null,
      "extensions": [
        {
          "MasterLabel": "Is Government--Government",
          "DeveloperName": "Is_Government_Government",
          "IsActive": true,
          "PriorityOrder": 1,
          "TextOperator": "Equals",
          "ContainsText": "Government",
          "ExtensionHoverText": "Government Account",
          "ExtensionIconValue": "standard:planogram"
        }
      ]
    }
  ]
}
```

</details>

**Contributed By** Kaisha Vilcinor, [kvilcinor](https://github.com/kvilcinor){:target="_blank"}
{: .contributed-by }

