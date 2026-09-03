---
title: "Contact: Regular Donor"
category: [contact-npsp]
display: [Avatar]
function: [Informational]
image: https://login.salesforce.com/logos/Custom/Heart_Grey/logo.png
---

### Description

> This indicator represents a contact who has donated regularly.



{: tip-title}
>Bundle
>
>Bundle this indicator with other Contact level donor Indicators such as Do Not Contact, One Off Donor, Contact Level
>You can see this bundle in action with the [National Youth Orchestra](https://hazledenesolutions.co.uk/2024/02/10/data-illumination-seeing-the-essential-with-salesforce-indicators/){:target="_blank"}  

### Fields

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

### Preparation

`Regular_Donor__c` is a custom formula field returning a Boolean value. It is up to your organization as to what you deem is a regular donor. It might be a donation received both this year and last year, or > X number of donations in the last Y years.

**Contributed By** Emma Keeling, [Salesforce_Em](https://github.com/Salesforce-Em){:target="_blank"}
{: .contributed-by }
