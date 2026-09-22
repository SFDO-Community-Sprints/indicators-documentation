---
title: "Account: Account Industry"
category: [account]
display: [Avatar, Has Extensions]
function: [Informational]
image: "![Building Manufacturing](/docs/images/icons/bldg-manuf.png)"
---
### Description

> Show different icons depending on the Industry of the Account.

{: .tip-title}
>Bundle
>
>Bundle this indicator with Account Type, Account Country, Account Source, similar to our sample Indicators installed as an option when you install Salesforce Indicators. 

### Fields

| Fields | Value | Description |
|-----------|-----------|--------------------------|
|sObject|`Account`
|Field|`Industry`|
|Description|`Shows primary industries that the company is interested in`

### Extensions

| Fields | Value | Description |
|-----------|-----------|--------------------------|
|Priority|`1`
|Contains Text|`Energy`
|Hover Text|`This Account is in Energy Sector`
|Icon Value|`custom:custom32`

| Fields | Value | Description |
|-----------|-----------|--------------------------|
|Priority|`20`
|Contains Text|`Healthcare`
|Hover Text|`This Account is in Healthcare Sector`
|Icon Value|`custom:custom58`

### Screenshots

![image](https://user-images.githubusercontent.com/14866301/199840867-c9cb763b-7ff5-4216-83eb-bcce836114e6.png)
![image](https://user-images.githubusercontent.com/14866301/199842491-08638d96-2520-4019-9264-0235f6a92b5b.png)

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
      "MasterLabel": "Account Industry",
      "DeveloperName": "Account_Industry",
      "ObjectApiName": "Account",
      "FieldApiName": "Industry",
      "IndicatorDescription": "Shows primary industries that the company is interested in",
      "bundleItem": null,
      "extensions": [
        {
          "MasterLabel": "Account Industry--Energy",
          "DeveloperName": "Account_Industry_Energy",
          "PriorityOrder": 1,
          "TextOperator": "Equals",
          "ContainsText": "Energy",
          "ExtensionHoverText": "This Account is in Energy Sector",
          "ExtensionIconValue": "custom:custom32"
        },
        {
          "MasterLabel": "Account Industry--Healthcare",
          "DeveloperName": "Account_Industry_Healthcare",
          "PriorityOrder": 20,
          "TextOperator": "Equals",
          "ContainsText": "Healthcare",
          "ExtensionHoverText": "This Account is in Healthcare Sector",
          "ExtensionIconValue": "custom:custom58"
        }
      ]
    }
  ]
}
```

</details>

**Contributed By** Sagal Mursal, [smursal](https://github.com/smursal){:target="_blank"}
{: .contributed-by }
