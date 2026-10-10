---
title: "Contact: Seat Supporter"
category: [contact-npsp]
display: [Avatar]
function: [Informational]
image: "![Seat Supporter](/docs/images/icons/seat-supporter.png)"
status: Validated
---

### Description

> This indicator represents a contact who is supporting the organization by purchasing a regular seat at events. The letters TAS are shown in white if the field value is True.

{: .tip-title}
>Bundle
>
>Bundle this indicator with other Contact level donor Indicators such as One Off Donor, Regular Donor, Contact Level
>
>![Bundle Image](/docs/images/bundles/donorpreferences.png){:width="450px"}


### Fields

Fields | Value
-- | --
sObject | `Contact`
Field | `Seat_Supporter__c`
Field Label | `Seat Supporter`
Active | `TRUE`
Empty Static Text Behavior | `Use Icon Only`
Hover Text | `Seat Supporter`
Icon Value | `standard:trailhead`
Static Text | `TAS`
Show False or Blank | `FALSE`
Zero Value Handling | `Treat Zeroes as Blanks`

### Preparation

`Seat_Supporter__c` is a custom formula field returning a Boolean value. This is a specific example for one Organization; your Organization may be different.

<details markdown="block" class="recipe-preview">
<summary>🔍 Preview this Recipe in your Org</summary>

Copy this JSON and use the **Preview a Recipe** button on the Indicators Setup page.

```json
{
  "recipeSchemaVersion": "1.0",
  "recipeType": "items",
  "bundle": null,
  "items": [
    {
      "MasterLabel": "Seat Supporter",
      "DeveloperName": "Seat_Supporter",
      "IsActive": true,
      "ObjectApiName": "Contact",
      "FieldApiName": "Seat_Supporter_Formula__c",
      "FieldLabel": "Seat Supporter",
      "HoverValue": "Seat Supporter",
      "TextValue": "TAS",
      "EmptyStaticBehavior": "Use Icon Only",
      "ZeroBehavior": "Treat Zeroes as Blanks",
      "IconName": "standard:trailhead",
      "DisplayFalse": false,
      "bundleItem": null,
      "extensions": []
    }
  ]
}
```

</details>

**Contributed By** Emma Keeling, [Salesforce_Em](https://github.com/Salesforce-Em){:target="_blank"}
{: .contributed-by }
