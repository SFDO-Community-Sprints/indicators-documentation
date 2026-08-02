---
layout: default
title: Contact - Contact Level
parent: Contact Recipes
grand_parent: Recipes
has_children: false
nav_exclude: true
---


# Contact - Contact Level

## Description
> This indicator shows a different icon based on different donor levels identified.

## In Bundle
* [Contact Communication Preferences](../bundle-contact-communication-preferences)

## Fields

Fields | Value
-- | --
sObject | `Contact`
Field | `Donor_Level_Value_Formula__c`
Active | `TRUE`
Empty Static Text Behavior | `Use Icon Only`
Show False or Blank | `FALSE`
Zero Value Handling | `Treat Zeroes as Blanks`

## Extensions

**Low-Mid**

Fields | Value
--|--
Label|`Contact Low-Mid Value Donor`
Indicator Item Extension Name|`Contact_Level`
Priority|`2.0`
Active|`true`
Minimum ( >= )|`1000.0`
Maximum ( < )|`5000.0`
Hover Text|`Low-Mid Value Donor`
Icon Value|`standard:settings`
Static Text|`£`

**Mid**

Fields | Value
--|--
Label|`Contact Mid-Value Donor`
Indicator Item Extension Name|`Contact_Level`
Priority|`2.0`
Active|`true`
Minimum ( >= )|`5000.0`
Maximum ( < )|`10000.0`
Hover Text|`Mid-Value Donor`
Icon Value|`standard:settings`
Static Text|`££`

**Major Donor**

Fields | Value
--|--
Label|`Contact Major Donor`
Indicator Item Extension Name|`Contact_Level`
Priority|`1.0`
Active|`true`
Minimum ( >= )|`10000.0`
Hover Text|`Major Donor`
Icon Value|`standard:settings`
Static Text|`£££`


## Preparation
`Donor_Level_Value_Formula__c` is a custom field that returns a text value for XX and YY based on the value of the total donations received from that Contact. 
Note: You can also just use values in the Indicator Item Extensions. However, creating a formula field allows the field to be used in multiple places, incluiding Reports.  

The field display is in Pounds but you can use a Dollar sign if that is your currency. 

## Contributed By
Emma Keeling, [Salesforce_Em](https://github.com/Salesforce-Em){:target="_blank"}