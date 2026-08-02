---
layout: default
title: Contact Bundle - Communication Preferences
parent: Contact Recipes
grand_parent: Recipes
has_children: false
nav_exclude: true
---

# Contact Bundle - Communication Preferences

## Description

> This bundle of Indicators shows the communication preferences for the contact. By default it will show all icons in color green:

<img src="https://github.com/SFDO-Community/Salesforce-Indicators/assets/59610683/2bc49783-5aed-40bd-9067-7489dce41d0e"
     width="400"
     height="120"/>

>When any of the fields is set to "TRUE" the icon's color will change to red. Example if the contact can be called but not emailed, the indicators will show as follow:

<img src="https://github.com/SFDO-Community/Salesforce-Indicators/assets/59610683/7c6fa423-db54-44d8-8cdc-687dc522236d"
     width="400"
     height="120"/>

>If the contact is set to "Do Not Contact", all indicators will be red:

<img src="https://github.com/SFDO-Community/Salesforce-Indicators/assets/59610683/c0ae8ef0-eb9e-431b-8016-feda491816f8"
     width="400"
     height="120"/>


## Fields

| Fields | Value | 
|-----------|-----------|
|Label|`Contact Preferences`|
|Indicator Bundle Name|`Contact_Preferences`
|Active|`true`
|sObject|`Contact`
|Card Title|`Communication Preferences`
|Card Icon|`custom:custom23`
|Card Text|`Communication preferences for the contact`
|Description|`A Bundle to show on a Contact when using NPSP to show communication preferences`


## Indicator Items
In the order they are displayed in the Bundle:
1. [Contact ‐ Do Not Contact](../contact/contact-do-not-contact.md)
1. [Contact ‐ Do Not Call](../contact/contact-do-not-call.md)
1. [Contact ‐ Email Preferences](../contact/contact-email-preferences.md)

## Contributed By
Maida Rider, [RiderM780](https://github.com/RiderM780){:target="_blank"}