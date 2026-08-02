---
layout: default
title: Contact - Do Not Call
parent: Contact Recipes
grand_parent: Recipes
has_children: false
nav_exclude: true
---

# Contact - Do Not Call

## Description
> An Indicator to show different color icons depending on the Do Not Call status of the contact.

## In Bundle
* [Contact Preferences](../contact/bundle-contact-communication-preferences.md)

## Images
![Do Not Call](../../images/icons/call_120.png){: width="50" style="background-color:red; width:50px; height:50px;"}
![Call](../../images/icons/voice_call_120.png){: width="50" style="background-color:#30c85a; width:50px; height:50px;"}

## Fields

Fields | Value 
---|---
Label|`Call preferences`
sObject|`Contact`
Field|`Do Not Call`
Description| `When value true contact should not be called on any of the phones listed`

## Configuration

Fields | Value 
---|---
Hover Text|`Do Not Call`
Empty Static Text Behavior|`Use Icon Only`
Zero Value Handling|`None`
Icon Value|`standard:call`
Icon Background| `red`
Icon Foreground| `white`
Show when False or Blank|`True`
Inverse Hover Text| `Contact can be called`
Inverse Icon Value|`standard:voice_call`


## Contributed By
Maida Rider, [RiderM780](https://github.com/RiderM780){:target="_blank"}