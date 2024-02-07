---
layout: default
title: Account - Grant Making Organization
parent: Account
grand_parent: Recipes
has_children: false
nav_exclude: true
---

## Account - Grant Making Organization

### Description

Show an icon if the Organization has the 'Grantmaker' box checked. 

### In Bundle

* [Account: Organization Funding Information](bundle-account-organization-funding.md)

### Images


![image](https://user-images.githubusercontent.com/71383648/228940185-57fd71bd-e5cd-424d-8ba0-0740500fea1f.png)


![image](https://user-images.githubusercontent.com/71383648/228939732-63c9bd6f-b2af-4e7b-82e2-1cc896910d13.png)


showing hover text:

![image](https://user-images.githubusercontent.com/71383648/228939791-3bf086aa-dc98-4752-992c-e99e6afebfac.png)

### Fields

| Fields | Value | Notes |
|-----------|-----------|----------|
|sObject|`Account`
|Field|`npsp__Grantmaker__c`|Make sure your org uses the NPSP field npsp__Grantmaker__c|
|Active|`true`
|Description|`Indicates this is a Grant-Making Company Organization`
|Hover Text|`Grant-Maker`
|Empty Static Text Behavior|`Use Icon Only`
|Icon Value|`custom:custom17`
|Zero Behavior|`Treat Zeroes as Blanks`
|Show False or Blank|`false`

### Extensions

| Fields | Value | Description |
|-----------|-----------|--------------------------|
|Field Name|`Value`|Notes|

### Preparation

* Ensure the users can check Grantmaker on the Accounts page. See [Salesforce Help Docs](https://help.salesforce.com/s/articleView?id=sfdo.NPSP_Configure_Grants.htm&type=5).

### Notes
* Always ensure the naming matches your Org's naming convention. the name Company is used her, but if you use Organization instead, ensure you change the labels and hovers in the Indicator to match

**Contributed By** Jenn Carniero, [jenncarneiro](https://github.com/jenncarneiro)

