---
layout: default
title: Contact - One-Off Donor
parent: Contact Recipes
grand_parent: Recipes
has_children: false
nav_exclude: true
---


# Contact - One-Off Donor

## Description
> This indicator represents a contact who has only donated once.

## In Bundle
* [Contact Donor Profile Extended](../contact/bundle-contact-donor-profile-extended.md)

## Images 

![Star Grey](https://login.salesforce.com/logos/Custom/Doc_Green/logo.png){: width="50"}

## Fields

Fields | Value
-- | --
sObject | `Contact`
Field | `One_Off_Donor_Formula__c`
Active | `TRUE`
Empty Static Text Behavior | `Use Icon Only`
Hover Text | `One-Off Donor`
Image | `https://login.salesforce.com/logos/Custom/Star_Grey/logo.png`
Show False or Blank | `FALSE`
Zero Value Handling | `Treat Zeroes as Blanks`

## Preparation
`One_Off_Donor_Formula__c` is a custom formula field returning a Boolean value. This is based on Total Nummber of Gifts = 1 in the NPSP. 

## Contributed By
Emma Keeling, [Salesforce_Em](https://github.com/Salesforce-Em){:target="_blank"}