---
layout: default
title: Account - Organization Giving Level
parent: Account
grand_parent: Recipes
has_children: false
nav_exclude: true
---

## Account - Organization Giving Level

### Description

Show an icon if the Organization has donated in the past year, and on hover indicate the range 

### In Bundle

* [[Account: Organization Funding Information]]

### Images

![image](https://user-images.githubusercontent.com/71383648/228940443-bb2442a9-0282-4787-9d94-9974f88ec6b7.png)


![image](https://user-images.githubusercontent.com/71383648/228940523-18bd5c02-e58f-4a53-a894-ee5bf5024eab.png)



showing hover text:

> Total Gifts This Year up to $10,000

> 
![image](https://user-images.githubusercontent.com/71383648/228940867-d113409d-9927-4b82-a255-02c5079a865c.png)

> Total Gifts This Year 10,000 - 50,000

![image](https://user-images.githubusercontent.com/71383648/228941192-a2b0d3cb-53e7-4487-b704-35b6d2a91d41.png)

> Total Gifts This Year 50,000 - 100,000

![image](https://user-images.githubusercontent.com/71383648/228941752-87b64942-aac2-4047-946a-9cbdcb756171.png)

> Total Gifts This Year Over 100,000

![image](https://user-images.githubusercontent.com/71383648/228941888-b95f23dd-6502-4b9e-98a4-92de3982dea8.png)

### Fields

| Fields | Value | Notes 
|-----------|-----------|---------|
|sObject|`Account`
|Field|`npo02__OppAmountThisYear__c`|Make sure your org uses the NPSP field npo02__OppAmountThisYear__c|
|Active|`true`
|Hover Text|`Donated This Year`
|Empty Static Text Behavior|`Use Icon Only`
|Icon Value|`custom:custom1`
|Zero Behavior|`Treat Zeroes as Blanks`
|Show False or Blank|`false`

### Extensions

| Fields | Value 
|-----------|-----------|
|Priority|`1`
|Indicator Item|`Organization_GIving_Level`
|Active|`true`
|Minimum|`10000`
|Maximum|`50000`
|Hover Text|`Donated 10K-50K`
|Icon Value|`custom:custom1`

| Fields | Value 
|-----------|-----------|
|Priority|`2`
|Indicator Item|`Organization_GIving_Level`
|Active|`true`
|Minimum|`50000`
|Maximum|`100000`
|Hover Text|`Donated 50K-100K`
|Icon Value|`custom:custom1`

| Fields | Value 
|-----------|-----------|
|Priority|`3`
|Indicator Item|`Organization_GIving_Level`
|Active|`true`
|Minimum|`100000`
|Hover Text|`Donated 100K+`
|Icon Value|`custom:custom1`

### Preparation

* Ensure the standard NPSP rollups are working and rolling up to this field correctly.

### Notes and Ideas

* You can also do different color icons for different levels of giving... with the Custom Color feature you could have a graduating color from light to dark based on value of the giving. Eg Use [Tints and Shades](https://www.color-hex.com/color/ff7b84#shades-tints) to find the graduations of the base color. 
* You also might want the icon to be green for money, or maybe the color that matches your main appeal color scheme. 

**Contributed By** Jenn Carniero, [jenncarneiro](https://github.com/jenncarneiro)