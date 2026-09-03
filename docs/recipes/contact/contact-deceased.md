---
layout: default
title: Contact - Deceased
parent: Contact Recipes
grand_parent: Recipes
has_children: false
nav_exclude: true
---


# Contact: Deceased

## Description
> This indicator represents a contact who is deceased.

## In Bundle
* [Contact Communication Preferences](../bundle-contact-communication-preferences)

## Images 

![Avatar Loading](../../images/icons/avatar-loading-120.png){: width="50" bgcolor="#939393"}

## Fields

Fields | Value
-- | --
sObject | `Contact`
Field | `npsp__Deceased__c`
Active | `TRUE`
Empty Static Text Behavior | `Use Icon Only`
Hover Text | `Deceased`
Icon Value | `standard:avatar_loading`
Show False or Blank | `FALSE`
Zero Value Handling | `Treat Zeroes as Blanks`

## Preparation
`npsp__Deceased__c` is a standard field as part of the Non Profit Success Pack. You may already have a feild named something different. Substitute `npsp__Deceased__c` for your field name.

## Contributed By
Emma Keeling, [Salesforce_Em](https://github.com/Salesforce-Em){:target="_blank"}