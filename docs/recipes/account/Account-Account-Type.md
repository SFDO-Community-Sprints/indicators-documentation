---
layout: default
title: Account - Account Type
parent: Account
grand_parent: Recipes
has_children: false
nav_exclude: true
---

## Account - Account Type

### Description

> Show different icons depending on the Type of Account. Set up the Extensions for only the Types you want to have Icons for. Other Types will display no Icon. Eg this example is for a Org who wants to be sure they know if the Account is a Partner or a Customer. 

### Fields

| Fields | Value | 
|-----------|-----------|
|sObject|`Account`
|Field|`Account Type`|
|Description|`Shows Icons for Customer and Partner`


### Extensions

| Fields | Value |
|-----------|-----------|
|Priority|`1`
|Contains Text|`Customer`
|Description|`The Account Type is Customer`
|Hover Text|`This is a Customer`
|Icon Value|`standard:buyer_account`

| Fields | Value | 
|-----------|-----------|
|Priority|`2`
|Contains Text|`Partner`
|Description|`The Account Type is Partner`
|Hover Text|`This is a Partner`
|Icon Value|`standard:partner_fund_request`

### Screenshots

![image](https://user-images.githubusercontent.com/2966583/199822064-08c9d9e5-5cd5-4bfe-9def-4c20b740273a.png)
![image](https://user-images.githubusercontent.com/2966583/199822088-3ff61af4-c8cc-4993-9600-fe80413167cd.png)

### Links

In Bundles:

* [Account Account Default](bundle-account-key-details.md)