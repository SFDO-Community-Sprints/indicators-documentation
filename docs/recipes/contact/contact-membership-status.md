---
layout: default
title: Contact - Membership Status
parent: Contact Recipes
grand_parent: Recipes
has_children: false
nav_exclude: true
---

# Contact - Membership Status

## Description

> This indicator shows a different colour icon depending on the Membership Status of the Contact. Based on a new field added to the Contact record - 'Membership Status'.  Add your own business logic (rollup, formula, flows) to populate this field from the opportunities object, Membership record type.  Does not display if Membership Status is blank.

## In Bundle
* [Contact: Donor Profile](../contact/bundle-contact-donor-profile.md)

## Fields

| Fields | Value | 
|-----------|-----------|
|Label|`Contact Membership Status`|
|sObject|`Contact`|
|Field|`Membership Status`|
|Description|


## Extensions

| Fields | Value |
|-----------|-----------|
|Displays|<img width="29" alt="image" src="https://user-images.githubusercontent.com/122455058/228940527-ba585f74-5f4c-4c42-a4d1-ebf32e718bf6.png">|
|Label|`Contact Membership Status - Current`|
|Indicator Item Extension Name|`Contact_Membership_Status_Current`|
|Priority|`1`|
|Active|`true`|
|Minimum ( >= )|
|Maximum ( < )|
|Contains Text|`Current`
|Description|
|Static Text|
|Hover Text|`Membership - Current`|
|Icon Value||
|Image|`https://login.salesforce.com/logos/Custom/Handshake_Green/logo.png`|


| Fields | Value |
|-----------|-----------|
|Displays|<img width="28" alt="image" src="https://user-images.githubusercontent.com/122455058/228940822-6b00e762-4409-459d-b25a-e3982812fbc1.png">|
|Label|`Contact RD Status - Lapsed`|
|Indicator Item Extension Name|`Contact Membership Status - Lapse`|
|Priority|`2`|
|Active|`true`|
|Minimum ( >= )|
|Maximum ( < )|
|Contains Text|`Lapsed`
|Description|
|Static Text|
|Hover Text|`Membership  - Lapsed`|
|Icon Value||
|Image|`https://login.salesforce.com/logos/Custom/Handshake_Blue/logo.png`|

## Contributed By
Vicky McLaren, [VickyMcL](https://github.com/VickyMcL){:target="_blank"}