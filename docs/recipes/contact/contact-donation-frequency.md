---
layout: default
title: Contact - Donation Frequency
parent: Contact Recipes
grand_parent: Recipes
has_children: false
nav_exclude: true
---

# Contact - Donation Frequency

## Description

> This Indicator shows a different colour icon depending on the number of donations made by the Contact in the last N days. Based on the NPSP Donation Rollup - Number of Donations Last N Days. In this recipe N has been set to 1095 days to represent the last 3 years.  Go To NPSP Donation Rollups Settings to manage the 'Number of Donations Last N Days' rollup.

## In Bundle
* [Contact: Donor Profile](../contact/bundle-contact-donor-profile.md)

## Fields

| Fields | Value | 
|-----------|-----------|
|Label|`Contact Donation Frequency`|
|sObject|`Contact`|
|Field|`Number of Gifts Last N Days`|
|Description|


## Extensions

| Fields | Value |
|-----------|-----------|
|Displays|<img width="26" alt="image" src="https://user-images.githubusercontent.com/122455058/228937271-07d4643f-b06b-4fe0-80b9-e0a64362a557.png">|
|Label|`Contact Total No Gifts--12+`|
|Indicator Item Extension Name|`Contact_Total_No_Gifts_12`|
|Priority|`1`|
|Active|`true`|
|Minimum ( >= )|`12.000`|
|Maximum ( < )|
|Description|
|Static Text|`III`|
|Hover Text|`Frequency - High`|
|Icon Value|`standard:portal`|
|Image|



| Fields | Value |
|-----------|-----------|
|displays|<img width="26" alt="image" src="https://user-images.githubusercontent.com/122455058/228937477-d84ddb94-9f26-488b-ba96-e7da59582d7a.png">|
|Label|`Contact Total No Gifts--6-12`|
|Indicator Item Extension Name|`Contact_Total_No_Gifts_6_12`|
|Priority|`2`|
|Active|`true`|
|Minimum ( >= )|`6.000`|
|Maximum ( < )|`12.000`|
|Description|
|Static Text|`II`
|Hover Text|`Frequency - Medium`|
|Icon Value|`standard:merge`
|Image|



| Fields | Value |
|-----------|-----------|
|displays|<img width="26" alt="image" src="https://user-images.githubusercontent.com/122455058/228937858-1ecdc9ad-5526-4a6d-bcef-9bc96643381d.png">|
|Label|`Contact Total No Gifts--1-6`|
|Indicator Item Extension Name|`Contact_Total_No_Gifts_1_6`|
|Priority|`3`|
|Active|`true`|
|Minimum ( >= )|`1.000`|
|Maximum ( < )|`6.000`|
|Description|
|Static Text|`I`
|Hover Text|`Frequency - Low`|
|Icon Value|`standard:thanks`
|Image|

## Contributed By
Vicky McLaren, [VickyMcL](https://github.com/VickyMcL){:target="_blank"}