---
layout: default
title: Contact - Thanking Requested
parent: Contact Recipes
grand_parent: Recipes
has_children: false
nav_exclude: true
---


# Contact - Thanking Requested

## Description
> This indicator represents a contact and their status of whether of not they receive Thanking for donations.

## In Bundle
* [Contact Communication Preferences](../contact/bundle-contact-communication-preferences.md)

## Images 

![Handshake Red](https://login.salesforce.com/logos/Custom/Handshake_Red/logo.png){: width="50"}


## Fields

Fields | Value
-- | --
sObject | `Contact`
Field | `No_Thanking_Requested__c`
Active | `TRUE`
Empty Static Text Behavior | `Use Icon Only`
Hover Text | `No Thanking Requested`
Image | `https://login.salesforce.com/logos/Custom/Handshake_Red/logo.png`
Show False or Blank | `FALSE`
Zero Value Handling | `Treat Zeroes as Blanks`

## Preparation
`No_Thanking_Requested__c` is a custom Boolean Field on the Contact.
Note: It is best to be consistent with Boolean Feilds and have Checked as True, however we have included this as it is a real life example Indicator. 

## Contributed By
Emma Keeling, [Salesforce_Em](https://github.com/Salesforce-Em){:target="_blank"}