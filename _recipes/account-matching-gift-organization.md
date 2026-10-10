---
title: "Account: Matching Gift Organization"
category: [account-npsp]
display: [Avatar]
function: [Qualitative]
image: "![image](https://user-images.githubusercontent.com/71383648/228939160-ab8b532f-fd23-445e-b84c-816608f75431.png)"
status: Validated
---

### Description

> Show an icon if the Organization has the 'Matching Gift Company' box checked.

{: .tip-title}
>Bundle
>
>Bundle this indicator with other Organization level donor Indicators such as Organization Giving Level and Grant Making Organization. 

### Images

![image](https://user-images.githubusercontent.com/71383648/228938938-8cd3a7da-035f-4c72-9516-a0921aa67bf0.png)

showing hover text:

![image](https://user-images.githubusercontent.com/71383648/228938773-297a4b4f-9721-4486-87a4-b67ad217cc37.png)

### Fields

| Fields | Value | Notes |
|-----------|-----------|-----------|
|sObject|`Account`
|Field|`npsp__Matching_Gift_Company__c`|Make sure your org uses the NPSP field npsp__Matching_Gift_Company__c|
|Field Label|`Matching Gift Company`||
|Active|`true`
|Description|`Indicates this is a Matching Gift Company`
|Hover Text|`Matching Gift Company`
|Empty Static Text Behavior|`Use Icon Only`
|Icon Value|`custom:custom48`
|Zero Behavior|`Treat Zeroes as Blanks`
|Show False or Blank|`false`

### Preparation

- Ensure the users have a way to mark this Account as a Matching Gift Organization. See [Salesforce Help Docs](https://help.salesforce.com/s/articleView?id=sfdo.NPSP_Work_with_Matching_Gifts.htm&type=5){:target="_blank"}.

### Notes

- Always ensure the naming matches your Org's naming convention. The NPSP field name is Company, but if you use Organization instead, ensure you change the labels and hovers in the Indicator to match.

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
      "MasterLabel": "Matching Gift Organization",
      "DeveloperName": "Matching_Gift_Organization",
      "IsActive": true,
      "ObjectApiName": "Account",
      "FieldApiName": "npsp__Matching_Gift_Company__c",
      "FieldLabel": "Matching Gift Company",
      "IndicatorDescription": "Indicates this is a Matching Gift Company",
      "HoverValue": "Matching Gift Company",
      "EmptyStaticBehavior": "Use Icon Only",
      "IconName": "custom:custom48",
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
