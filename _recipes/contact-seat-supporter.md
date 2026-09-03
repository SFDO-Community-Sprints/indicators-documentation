---
title: "Contact: Seat Supporter"
category: [contact]
display: [Avatar]
function: [Informational]
---

### Description

> This indicator represents a contact who is supporting the organization by purchasing a regular seat at events.

### In Bundle

- [Contact: Donor Profile](/docs/recipes/contact/bundle-contact-donor-profile/)

### Images

This icon uses the Standard Trailhead Icon for the blue background color. The letters TAS are shown in white if the field value is True.

### Fields

Fields | Value
-- | --
sObject | `Contact`
Field | `Seat_Supporter_Formula__c`
Active | `TRUE`
Empty Static Text Behavior | `Use Icon Only`
Hover Text | `Seat Supporter`
Icon Value | `standard:trailhead`
Static Text | `TAS`
Show False or Blank | `FALSE`
Zero Value Handling | `Treat Zeroes as Blanks`

### Preparation

`Seat_Supporter_Formula__c` is a custom formula field returning a Boolean value. This is a specific example for one Organization; your Organization may be different.

**Contributed By** Emma Keeling, [Salesforce_Em](https://github.com/Salesforce-Em){:target="_blank"}
{: .contributed-by }
