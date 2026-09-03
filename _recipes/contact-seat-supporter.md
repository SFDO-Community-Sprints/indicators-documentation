---
title: "Contact: Seat Supporter"
category: [contact-npsp]
display: [Avatar]
function: [Informational]
image: ![Seat Supporter](/docs/images/icons/SeatSupporter.png)
---

### Description

> This indicator represents a contact who is supporting the organization by purchasing a regular seat at events. The letters TAS are shown in white if the field value is True.

{: tip-title}
>Bundle
>
>Bundle this indicator with other Contact level donor Indicators such as One Off Donor, Regular Donor, Contact Level
>![Bundle Image](/docs/images/bundles/donorpreferences.png)  


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
