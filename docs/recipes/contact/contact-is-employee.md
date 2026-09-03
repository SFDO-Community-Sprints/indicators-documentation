---
layout: default
title: Contact - Is Employee
parent: Contact Recipes
grand_parent: Recipes
has_children: false
nav_exclude: true
---


## Description

Show an icon if the Contact has the 'Is Employee?' box checked. 


## Fields

| Fields | Value | Notes |
|-----------|-----------|----------|
|sObject|`Contact`
|Field|`Is_Employee`|
|Active|`true`
|Description|`Indicates this is contact is an employee`
|Hover Text|`Employee`
|Empty Static Text Behavior|`Use Icon Only`
|Icon Value|`standard:employee_organization`
|Zero Behavior|`Treat Zeroes as Blanks`
|Show False or Blank|`false`

## Preparation

* Ensure the users can check "Is Employee" on the Contacts page. See [Salesforce Help Docs](https://help.salesforce.com/s/articleView?id=sfdo.NPSP_Configure_Grants.htm&type=5).

## Notes
* Always ensure the field name matches your Org's naming convention. the field "Is Employee?" is used here, but if you use something else, ensure you change the labels and hovers in the Indicator to match

## Contributed By
Kaisha Vilcinor, [kaisha vilcinor](https://github.com/kvilcinor){:target="_blank"}

