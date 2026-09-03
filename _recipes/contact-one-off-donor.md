---
title: "Contact: One-Off Donor"
category: [contact-npsp]
display: [Avatar]
function: [Qualitative]
image: https://login.salesforce.com/logos/Custom/Star_Grey/logo.png
---

### Description

> This indicator represents a contact who has only donated once.

{: .tip-title}
>Bundle
>
>Bundle this indicator with other Contact level donor Indicators such as Do Not Contact, Regular Donor, Contact Level
>
>![Bundle Image](/docs/images/bundles/donorpreferences.png){:width="450px"}
>
>You can see this bundle in action with the [National Youth Orchestra](https://hazledenesolutions.co.uk/2024/02/10/data-illumination-seeing-the-essential-with-salesforce-indicators/){:target="_blank"}    

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
