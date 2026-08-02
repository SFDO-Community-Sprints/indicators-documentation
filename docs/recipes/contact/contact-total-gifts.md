---
layout: default
title: Contact - Total Gifts
parent: Contact Recipes
grand_parent: Recipes
has_children: false
nav_exclude: true
---

# Contact - Total Gifts

## Description

> This Indicator shows a different colour icon depending on the donation total for this contact. Based on the NPSP Donation Rollup field Total Gifts.  

## In Bundle
* [Contact: Donor Profile](../contact/bundle-contact-donor-profile.md)

## Fields

| Fields | Value | 
|-----------|-----------|
|Label|`Contact Total Gifts`|
|sObject|`Contact`|
|Field|`Total Gifts`|
|Description|

## Extensions

| Fields | Value |
|-----------|-----------|
|Displays|<img width="26" alt="image" src="https://user-images.githubusercontent.com/122455058/228929869-94cca241-17ee-47fd-93a2-ef30d9159ea2.png">|
|Label|`Contact Total Gifts--5000+`|
|Indicator Item Extension Name|`Contact_Total_Gifts_5000`|
|Priority|`1`|
|Active|`true`|
|Minimum ( >= )|`5,000.000`|
|Maximum ( < )|
|Description|
|Static Text|`$$$`|
|Hover Text|`Total Donations - High`|
|Icon Value|`standard:thanks`|
|Image||



| Fields | Value |
|-----------|-----------|
|Displays|<img width="26" alt="image" src="https://user-images.githubusercontent.com/122455058/228930521-24dc3283-a802-4bda-bc8c-7fc2c30cc46a.png">|
|Label|`Contact Total Gifts--500-5000`|
|Indicator Item Extension Name|`Contact_Total_Gifts_500_5000`|
|Priority|`2`|
|Active|`true`|
|Minimum ( >= )|`500.000`|
|Maximum ( < )|`5,000.000`|
|Description|
|Static Text|`$$`
|Hover Text|`Total Donations - Med`|
|Icon Value|`standard:merge`
|Image|


| Fields | Value |
|-----------|-----------|
|Displays|<img width="29" alt="image" src="https://user-images.githubusercontent.com/122455058/228930960-82bea1f0-6214-41b3-8f43-3465f86317ee.png">|
|Label|`Contact Total Gifts--0-500`|
|Indicator Item Extension Name|`Contact_Total_Gifts_0_500`|
|Priority|`3`|
|Active|`true`|
|Minimum ( >= )|`0.010`|
|Maximum ( < )|`500.000`|
|Description|
|Static Text|`$`
|Hover Text|`Total Donations - Low`|
|Icon Value|`standard:portal`
|Image|

## Contributed By
Vicky McLaren, [VickyMcL](https://github.com/VickyMcL){:target="_blank"}