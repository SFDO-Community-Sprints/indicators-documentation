---
title: "Contact: Household Compare LY TY"
category: [contact-npsp]
display: [Avatar]
function: [Qualitative]
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

**Contributed By** Eileen K, [programmer2coder](https://github.com/programmer2coder){:target="_blank"}
{: .contributed-by }
