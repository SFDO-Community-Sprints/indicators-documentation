---
title: "Account: Organization Giving Level"
category: [account-npsp]
display: [Avatar, Has Extensions]
function: [Quantitative]
image: "![image](https://user-images.githubusercontent.com/71383648/228940443-bb2442a9-0282-4787-9d94-9974f88ec6b7.png)"
status: Validated
---

### Description

>Show an icon if the Organization has donated in the past year, and on hover indicate the range.

{: .tip-title}
>Bundle
>
>Bundle this indicator with other Organization level donor Indicators such as Grant Making Organization and Matching Gift Organization. 


### Images

![image](https://user-images.githubusercontent.com/71383648/228940523-18bd5c02-e58f-4a53-a894-ee5bf5024eab.png)

showing hover text:

> Total Gifts This Year up to $10,000

![image](https://user-images.githubusercontent.com/71383648/228940867-d113409d-9927-4b82-a255-02c5079a865c.png)

> Total Gifts This Year 10,000 - 50,000

![image](https://user-images.githubusercontent.com/71383648/228941192-a2b0d3cb-53e7-4487-b704-35b6d2a91d41.png)

> Total Gifts This Year 50,000 - 100,000

![image](https://user-images.githubusercontent.com/71383648/228941752-87b64942-aac2-4047-946a-9cbdcb756171.png)

> Total Gifts This Year Over 100,000

![image](https://user-images.githubusercontent.com/71383648/228941888-b95f23dd-6502-4b9e-98a4-92de3982dea8.png)

### Fields

| Fields | Value | Notes |
|-----------|-----------|---------|
|sObject|`Account`
|Field|`npo02__OppAmountThisYear__c`|Make sure your org uses the NPSP field npo02__OppAmountThisYear__c|
|Field Label|`Total Gifts this Year`||
|Active|`true`
|Hover Text|`Donated This Year`
|Empty Static Text Behavior|`Use Icon Only`
|Icon Value|`custom:custom1`
|Zero Behavior|`Treat Zeroes as Blanks`
|Show False or Blank|`false`

### Extensions

| Fields | Value |
|-----------|-----------|
|Priority|`1`
|Indicator Item|`Organization_Giving_Level`
|Active|`true`
|Minimum|`10000`
|Maximum|`50000`
|Hover Text|`Donated 10K-50K`
|Icon Value|`custom:custom1`
|Icon Background|`#ffe4e6`
|Icon Foreground|`white`

| Fields | Value |
|-----------|-----------|
|Priority|`2`
|Indicator Item|`Organization_Giving_Level`
|Active|`true`
|Minimum|`50000`
|Maximum|`100000`
|Hover Text|`Donated 50K-100K`
|Icon Value|`custom:custom1`
|Icon Background|`#ffbdc1`
|Icon Foreground|`white`

| Fields | Value |
|-----------|-----------|
|Priority|`3`
|Indicator Item|`Organization_Giving_Level`
|Active|`true`
|Minimum|`100000`
|Hover Text|`Donated 100K+`
|Icon Value|`custom:custom1`
|Icon Background|`#ffa2a8`
|Icon Foreground|`white`

### Preparation

- Ensure the standard NPSP rollups are working and rolling up to this field correctly.

### Notes and Ideas

- We've used graded color icons for different levels of giving &mdash; with the Custom Color feature you can have a graduating color from light to dark based on value of the giving. E.g. use [Tints and Shades](https://www.color-hex.com/color/ff7b84#shades-tints){:target="_blank"} to find the graduations of the base color.
- You also might want the icon to be green for money, or maybe the color that matches your main appeal color scheme.
💡 You can now use a Merge Field in the Hover Text and show the actual value of the Giving, if you need to. 

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
      "MasterLabel": "Organization Giving Level",
      "DeveloperName": "Organization_Giving_Level",
      "IsActive": true,
      "ObjectApiName": "Account",
      "FieldApiName": "npo02__OppAmountThisYear__c",
      "FieldLabel": "Total Gifts this Year",
      "HoverValue": "Donated This Year",
      "EmptyStaticBehavior": "Use Icon Only",
      "IconName": "custom:custom1",
      "DisplayFalse": false,
      "bundleItem": null,
      "extensions": [
        {
          "MasterLabel": "Organization Giving Level--Donated 10K-5",
          "DeveloperName": "Organization_Giving_Level_Donated_10K_5",
          "IsActive": true,
          "IndicatorItem": "Organization_Giving_Level",
          "PriorityOrder": 1,
          "Minimum": 10000,
          "Maximum": 50000,
          "ExtensionHoverText": "Donated 10K-50K",
          "ExtensionIconValue": "custom:custom1",
          "ForegroundColor": "white",
          "BackgroundColor": "#ffe4e6"
        },
        {
          "MasterLabel": "Organization Giving Level--Donated 50K-1",
          "DeveloperName": "Organization_Giving_Level_Donated_50K_1",
          "IsActive": true,
          "IndicatorItem": "Organization_Giving_Level",
          "PriorityOrder": 2,
          "Minimum": 50000,
          "Maximum": 100000,
          "ExtensionHoverText": "Donated 50K-100K",
          "ExtensionIconValue": "custom:custom1",
          "ForegroundColor": "white",
          "BackgroundColor": "#ffbdc1"
        },
        {
          "MasterLabel": "Organization Giving Level--Donated 100K+",
          "DeveloperName": "Organization_Giving_Level_Donated_100K",
          "IsActive": true,
          "IndicatorItem": "Organization_Giving_Level",
          "PriorityOrder": 3,
          "Minimum": 100000,
          "ExtensionHoverText": "Donated 100K+",
          "ExtensionIconValue": "custom:custom1",
          "ForegroundColor": "white",
          "BackgroundColor": "#ffa2a8"
        }
      ]
    }
  ]
}
```

</details>

**Contributed By** Jenn Carneiro, [jenncarneiro](https://github.com/jenncarneiro){:target="_blank"}
{: .contributed-by }
