---
title: "Contact: Household Compare LY TY"
category: [contact-npsp]
display: [Avatar, Has Extensions]
function: [Qualitative]
image: "![Utility Red](/docs/images/icons/utility-red.png)"
status: Validated
---

### Description

> Show different icons depending on a comparison of the contact's household's last two years of giving.


### Fields

| Fields | Value |
|-----------|-----------|
|sObject|`Contact`
|Field|`Compare_LY_TY__c`
|Active|`true`
|Description|`Compares npo02__OppAmountThisYearHH__c, npo02__OppAmountLastYearHH__c`
|Empty Static Text Behavior|`Use Icon Only`
|Show False or Blank|`false`

### Extensions

| Fields | Value |
|-----------|-----------|
|Priority|`1`
|Indicator Item|`Contact_HH_Compare_LY_TY`
|Active|`true`
|Contains Text|`Zero-Zero`
|Hover Text|`Both Last and This Year Zero`
|Static Text|`💤`

| Fields | Value |
|-----------|-----------|
|Priority|`2`
|Indicator Item|`Contact_HH_Compare_LY_TY`
|Active|`true`
|Contains Text|`LYBUNT`
|Hover Text|`Last Year but not This Year`
|Static Text|`🔻`

| Fields | Value |
|-----------|-----------|
|Priority|`3`
|Indicator Item|`Contact_HH_Compare_LY_TY`
|Active|`true`
|Contains Text|`TYNLY`
|Hover Text|`This Year but not Last Year`
|Static Text|`🐣`

| Fields | Value |
|-----------|-----------|
|Priority|`4`
|Indicator Item|`Contact_HH_Compare_LY_TY`
|Active|`true`
|Contains Text|`Increase`
|Hover Text|`Increased from Last Year`
|Static Text|`💹`

| Fields | Value |
|-----------|-----------|
|Priority|`5`
|Indicator Item|`Contact_HH_Compare_LY_TY`
|Active|`true`
|Contains Text|`Decrease`
|Hover Text|`Decreased from Last Year`
|Static Text|`📉`

| Fields | Value |
|-----------|-----------|
|Priority|`6`
|Indicator Item|`Contact_HH_Compare_LY_TY`
|Active|`true`
|Contains Text|`Same`
|Hover Text|`Same Last and This Year`
|Static Text|`↔`

### Preparation

**Custom Formula Field**

| Field | Value |
|-----------|-----------|
|Field Label|Compare LY TY
|Object Name|Contact
|Field Name|Compare_LY_TY
|API Name|Compare_LY_TY__c
|Description|Results in one of six values, based on comparing Contact's Household Total Amount Last Year vs. Total Amount This Year. Resulting values can be (Zero-Zero, LYBUNT, TYNLY, Increase, Decrease, Same)

`IF( npo02__OppAmountThisYearHH__c = 0, IF( npo02__OppAmountLastYearHH__c = 0, "Zero-Zero", "LYBUNT"), IF( npo02__OppAmountLastYearHH__c = 0, "TYNLY", IF ( npo02__OppAmountThisYearHH__c > npo02__OppAmountLastYearHH__c, "Increase", IF ( npo02__OppAmountThisYearHH__c < npo02__OppAmountLastYearHH__c, "Decrease", "Same" ) ) ))`

### Notes and Ideas

💡 Due to the wordiness of the meanings of each of these levels, this would be perfect for a Badge or Pill where the words can be shown. 

<details markdown="block" class="recipe-preview">
<summary>🔍 Preview this Recipe in your Org</summary>

Copy this JSON and use the **Preview a Recipe** button on the Indicators Setup page. Note: Preview only works if you have this formula field returning these values.

```json
{
  "recipeSchemaVersion": "1.0",
  "recipeType": "items",
  "bundle": null,
  "items": [
    {
      "MasterLabel": "Contact Compare LY TY",
      "DeveloperName": "Contact_LYBUNT",
      "IsActive": true,
      "ObjectApiName": "Contact",
      "FieldApiName": "Compare_LY_TY__c",
      "FieldLabel": "Compare LY TY",
      "IndicatorDescription": "Compares npo02__OppAmountThisYearHH__c and npo02__OppAmountLastYearHH__c",
      "EmptyStaticBehavior": "Use Icon Only",
      "DisplayFalse": false,
      "bundleItem": null,
      "extensions": [
        {
          "MasterLabel": "Contact Compare LY TY--Zero-Zero",
          "DeveloperName": "Contact_HH_Compare_LY_TY_Zero_Zero",
          "IsActive": true,
          "IndicatorItem": "Contact_HH_Compare_LY_TY",
          "PriorityOrder": 1,
          "TextOperator": "Equals",
          "ContainsText": "Zero-Zero",
          "ExtensionHoverText": "Both Last and This Year Zero",
          "ExtensionTextValue": "💤"
        },
        {
          "MasterLabel": "Contact Compare LY TY--LYBUNT",
          "DeveloperName": "Contact_HH_Compare_LY_TY_LYBUNT",
          "IsActive": true,
          "IndicatorItem": "Contact_HH_Compare_LY_TY",
          "PriorityOrder": 2,
          "TextOperator": "Equals",
          "ContainsText": "LYBUNT",
          "ExtensionHoverText": "Last Year but not This Year",
          "ExtensionTextValue": "🔻"
        },
        {
          "MasterLabel": "Contact Compare LY TY--TYNLY",
          "DeveloperName": "Contact_HH_Compare_LY_TY_TYNLY",
          "IsActive": true,
          "IndicatorItem": "Contact_HH_Compare_LY_TY",
          "PriorityOrder": 3,
          "TextOperator": "Equals",
          "ContainsText": "TYNLY",
          "ExtensionHoverText": "This Year but not Last Year",
          "ExtensionTextValue": "🐣"
        },
        {
          "MasterLabel": "Contact Compare LY TY--Increase",
          "DeveloperName": "Contact_HH_Compare_LY_TY_Increase",
          "IsActive": true,
          "IndicatorItem": "Contact_HH_Compare_LY_TY",
          "PriorityOrder": 4,
          "TextOperator": "Equals",
          "ContainsText": "Increase",
          "ExtensionHoverText": "Increased from Last Year",
          "ExtensionTextValue": "💹"
        },
        {
          "MasterLabel": "Contact Compare LY TY--Decrease",
          "DeveloperName": "Contact_HH_Compare_LY_TY_Decrease",
          "IsActive": true,
          "IndicatorItem": "Contact_HH_Compare_LY_TY",
          "PriorityOrder": 5,
          "TextOperator": "Equals",
          "ContainsText": "Decrease",
          "ExtensionHoverText": "Decreased from Last Year",
          "ExtensionTextValue": "📉"
        },
        {
          "MasterLabel": "Contact Compare LY TY--Same",
          "DeveloperName": "Contact_HH_Compare_LY_TY_Same",
          "IsActive": true,
          "IndicatorItem": "Contact_HH_Compare_LY_TY",
          "PriorityOrder": 6,
          "TextOperator": "Equals",
          "ContainsText": "Same",
          "ExtensionHoverText": "Same Last and This Year",
          "ExtensionTextValue": "↔"
        }
      ]
    }
  ]
}
```

</details>

**Contributed By** Eileen K, [programmer2coder](https://github.com/programmer2coder){:target="_blank"}
{: .contributed-by }
