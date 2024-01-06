---
layout: default
title: Contact - Do Not Contact
parent: Contact
grand_parent: Recipes
has_children: false
nav_exclude: true
---


# Contact: Do Not Contact

## Description
> This indicator represents a contact who has requested to not be contacted at all.

## In Bundle
* [Contact Communication Preferences](../contact/bundle-contact-communication-preferences.md)
* [Contact Donor Profile](../contact/bundle-contact-donor-profile.md)
* [Contact Preferences](../contact/bundle-contact-preferences.md)

## Images 

![First Non Empty](../../images/icons/first_non_empty_120.png){: width="50" bg-color="#ff538a"}


## Fields

Fields | Value
-- | --
sObject | `Contact`
Field | `npsp__Do_Not_Contact__c`
Active | `TRUE`
Empty Static Text Behavior | `Use Icon Only`
Hover Text | `Do Not Contact`
Icon Value|`standard:first_non_empty`
Show False or Blank | `TRUE`
Zero Value Handling | `Treat Zeroes as Blanks`

## Preparation
`npsp__Do_Not_Contact__c` is a standard NPSP field. 

## Note 
The default color of this icon is pink after the updates from Winter '24. If you want to make changes, you can just adjust the Icon background and foreground settings. Ex. To change the icon to a red background and white symbol:

| Fields | Value | 
|-----------|-----------|
|Icon Background|`Red`|
|Icon Foreground|`White`|


## Contributed By
Emma Keeling, [Salesforce_Em](https://github.com/Salesforce-Em)
Maida Rider, [RiderM780](https://github.com/RiderM780)

