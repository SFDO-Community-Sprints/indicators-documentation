---
title: "Contact: One-Off Donor"
category: [contact-npsp]
display: [Avatar]
function: [Informational]
image: https://login.salesforce.com/logos/Custom/Star_Grey/logo.png
---

### Description

> This indicator represents a contact who has only donated once.

### In Bundle

- [Contact: Donor Profile](/docs/recipes/contact/bundle-contact-donor-profile/)

### Images

![Star Grey](https://login.salesforce.com/logos/Custom/Star_Grey/logo.png){: width="50"}

### Fields

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

### Preparation

`One_Off_Donor_Formula__c` is a custom formula field returning a Boolean value. This is based on Total Number of Gifts = 1 in the NPSP.

**Contributed By** Emma Keeling, [Salesforce_Em](https://github.com/Salesforce-Em){:target="_blank"}
{: .contributed-by }
