---
layout: default
title: Contact - Legacy Mailing
parent: Contact Recipes
grand_parent: Recipes
has_children: false
nav_exclude: true
---

# Contact - Legacy Mailing

## Description
> This indicator represents a contact who has requested to not receive Legacy Mailing.

## In Bundle
* [Contact Communication Preferences](../contact/bundle-contact-communication-preferences.md)

## Images 

![Castle Red](https://login.salesforce.com/logos/Custom/Doc_Green/logo.png){: width="50"}

## Fields

Fields | Value
-- | --
sObject | `Contact`
Field | `No_Legacy_Mailing__c`
Active | `TRUE`
Empty Static Text Behavior | `Use Icon Only`
Hover Text | `No Legacy Mailing`
Image | `https://login.salesforce.com/logos/Custom/Castle_Red/logo.png`
Show False or Blank | `FALSE`
Zero Value Handling | `Treat Zeroes as Blanks`

## Preparation
`No_Legacy_Mailing__c` is a custom Boolean Field on the Contact.
Note: It is best to be consistent with Boolean Feilds and have Checked as True, however we have included this as it is a real life example Indicator. 

## Contributed By
Emma Keeling, [Salesforce_Em](https://github.com/Salesforce-Em){:target="_blank"}