---
layout: default
title: Contact - Regular Donor
parent: Contact Recipes
grand_parent: Recipes
has_children: false
nav_exclude: true
---


# Contact - Regular Donor

## Description
> This indicator represents a contact who has donated regularly.

## In Bundle
* [Contact Donor Profile Extended](../contact/bundle-contact-donor-profile-extended.md)

## Images 

![Heart Grey](https://login.salesforce.com/logos/Custom/Heart_Grey/logo.png){: width="50"}

## Fields

Fields | Value
-- | --
sObject | `Contact`
Field | `Regular_Donor__c`
Active | `TRUE`
Empty Static Text Behavior | `Use Icon Only`
Hover Text | `Regular Donor`
Image | `https://login.salesforce.com/logos/Custom/Heart_Grey/logo.png`
Show False or Blank | `FALSE`
Zero Value Handling | `Treat Zeroes as Blanks`

## Preparation
`Regular_Donor__c` is a custom formula field returning a Boolean value. It is up to your organization as to what you deem is a regular donor. It might be a Donation has been received both this year and last year, or there has been > X No. of Donations in last Y years. 

## Contributed By
Emma Keeling, [Salesforce_Em](https://github.com/Salesforce-Em){:target="_blank"}