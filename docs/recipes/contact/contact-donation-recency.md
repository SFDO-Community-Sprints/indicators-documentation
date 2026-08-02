---
layout: default
title: Contact - Donation Recency
parent: Contact Recipes
grand_parent: Recipes
has_children: false
nav_exclude: true
---

# Contact - Donation Recency

## Description

> This indicator shows a different colour icon depending on the number of days since the last donation. Based on the NPSP Donation Rollup - Last Donation Date (npo02__LastCloseDate__c). Add a formula field on Contact, named 'Donation Recency' with formula: TODAY()- npo02__LastCloseDate__c.  

## In Bundle
* [Contact: Donor Profile](../contact/bundle-contact-donor-profile.md)

## Fields
| Fields | Value | 
|-----------|-----------|
|Label|`Contact Donation Recency`|
|sObject|`Contact`|
|Field|`Donor Recency`|
|Description| |


## Extensions

| Fields | Value |
|-----------|-----------|
|Displays|<img width="28" alt="image" src="https://user-images.githubusercontent.com/122455058/228932794-989ce0b4-7a2a-4f16-b6bd-6b210472c6ae.png">|
|Label|`Contact Donation Recency-- last 6 months`|
|Indicator Item Extension Name|`Contact_Donation_Recency_last_6_months`|
|Priority|`1`|
|Active|`true`|
|Minimum ( >= )|`1.00`|
|Maximum ( < )|`183.000`|
|Description| |
|Static Text|`#`|
|Hover Text|`Recency - Last 6 months`|
|Icon Value|`standard:portal`|
|Image| |



| Fields | Value |
|-----------|-----------|
|displays|<img width="26" alt="image" src="https://user-images.githubusercontent.com/122455058/228933769-7477bbc5-67a1-4ce5-b147-c1106bbc9f32.png">|
|Label|`Contact Donation Recency-- 6 - 18 months`|
|Indicator Item Extension Name|`Contact_Donation_Recency_6_18_months`|
|Priority|`2`|
|Active|`true`|
|Minimum ( >= )|`183.000`|
|Maximum ( < )|`549.000`|
|Description| |
|Static Text|`##`|
|Hover Text|`Recency - Last 18 months`|
|Icon Value|`standard:performance`|
|Image| |



| Fields | Value |
|-----------|-----------|
|displays|<img width="28" alt="image" src="https://user-images.githubusercontent.com/122455058/228934425-18d4eba7-25f6-491e-86f7-809501c687be.png">|
|Label|`Contact Donation Recency-- 18+ months`|
|Indicator Item Extension Name|`Contact_Donation_Recency_18_months`|
|Priority|`3`|
|Active|`true`|
|Minimum ( >= )|`549.000`|
|Maximum ( < )
|Description| |
|Static Text|`###`|
|Hover Text|`Recency - Over 18 months ago`|
|Icon Value|`standard:thanks`|
|Image| |

## Contributed By
Vicky McLaren, [VickyMcL](https://github.com/VickyMcL){:target="_blank"}