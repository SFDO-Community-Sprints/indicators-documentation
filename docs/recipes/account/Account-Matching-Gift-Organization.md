---
layout: default
title: Account Matching Gift Organization
parent: Account
grand_parent: Recipes
has_children: false
nav_exclude: true
---

## Account - Matching Gift Organization

### Description

Show an icon if the Organization has the 'Matching Gift Company' box checked. 

### In Bundle

* [Account: Organization Funding Information]

### Images

![image](https://user-images.githubusercontent.com/71383648/228939160-ab8b532f-fd23-445e-b84c-816608f75431.png)


![image](https://user-images.githubusercontent.com/71383648/228938938-8cd3a7da-035f-4c72-9516-a0921aa67bf0.png)

showing hover text:

![image](https://user-images.githubusercontent.com/71383648/228938773-297a4b4f-9721-4486-87a4-b67ad217cc37.png)

### Fields

| Fields | Value | Notes |
|-----------|-----------|-----------|
|sObject|`Account`
|Field|`npsp__Matching_Gift_Company__c`|Make sure your org uses the NPSP field npsp__Matching_Gift_Company__c|
|Active|`true`
|Description|`Indicates this is a Matching Gift Company`
|Hover Text|`Matching Gift Company`
|Empty Static Text Behavior|`Use Icon Only`
|Icon Value|`custom:custom48`
|Zero Behavior|`Treat Zeroes as Blanks`
|Show False or Blank|`false`

### Preparation
* Ensure the users have a way to mark this Account as a Matching Gift Organization. See [Salesforce Help Docs](https://help.salesforce.com/s/articleView?id=sfdo.NPSP_Work_with_Matching_Gifts.htm&type=5).

### Notes

* Always ensure the naming matches your Org's naming convention. the NPSP field name is Company, but if you use Organization instead, ensure you change the labels and hovers in the Indicator to match

**Contributed By** Jenn Carniero, [jenncarneiro](https://github.com/jenncarneiro)


