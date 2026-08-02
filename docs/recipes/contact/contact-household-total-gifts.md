---
layout: default
title: Contact - Household Total Gifts
parent: Contact Recipes
grand_parent: Recipes
has_children: false
nav_exclude: true
---

# Contact - Household Total Gifts 

## Description

> An Indicator to show different colour icon depending on the donation total for this contact's household. Based on the NPSP Donation Rollup.  

## In Bundle
* [Contact: Donor Profile](../contact/bundle-contact-donor-profile.md)

## Fields

| Fields | Value | 
|-----------|-----------|
|Label|`Contact Household Total Gifts`|
|sObject|`Contact`|
|Field|`Total Household Gifts`|
|Description|`Formula: Total Gifts on related Household.`


## Extensions

| Fields | Value |
|-----------|-----------|
|Displays|<img width="28" alt="image" src="https://user-images.githubusercontent.com/122455058/228927484-874b83a3-0060-4e05-9b49-cfe10aef4125.png">|
|Label|`Contact Total Household Gifts--10k+`|
|Indicator Item Extension Name|`Contact_Total_Household_Gifts_10k`|
|Priority|`1`|
|Active|`true`|
|Minimum ( >= )|`10,000.000`|
|Maximum ( < )|
|Description|
|Hover Text|
|Hover Text|`Total Household Donations - High`|
|Icon Value|
|Image|`https://login.salesforce.com/logos/Custom/People_Red/logo.png`|


| Fields | Value |
|-----------|-----------|
|Displays|<img width="28" alt="image" src="https://user-images.githubusercontent.com/122455058/228927919-f351a65b-89ba-47fb-a2bf-3bc562b9ac6f.png">
|Label|`Contact Household Total Gifts--1k-10k`|
|Indicator Item Extension Name|`Contact_Household_Total_Gifts_1k_10k`|
|Priority|`2`|
|Active|`true`|
|Minimum ( >= )|`1,000.000`|
|Maximum ( < )|`10,000.000`|
|Description|
|Hover Text|
|Hover Text|`Total Household Donations - Med`|
|Icon Value|
|Image|`https://login.salesforce.com/logos/Custom/People_Yellow/logo.png`|


| Fields | Value |
|-----------|-----------|
|Displays|<img width="27" alt="image" src="https://user-images.githubusercontent.com/122455058/228928266-35380856-ed07-4f5c-96d8-bfeafe420382.png">
|Label|`Contact Household Total Gifts--0-1000`|
|Indicator Item Extension Name|`Contact_Household_Total_Gifts_0_1000`|
|Priority|`3`|
|Active|`true`|
|Minimum ( >= )|`0.010`|
|Maximum ( < )|`1,000.000`|
|Description|
|Hover Text|
|Hover Text|`Total Household Donations - Low`|
|Icon Value|
|Image|`https://login.salesforce.com/logos/Custom/People_Green/logo.png`|


## Contributed By
Vicky McLaren, [VickyMcL](https://github.com/VickyMcL){:target="_blank"}