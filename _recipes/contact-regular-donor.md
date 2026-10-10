---
title: "Contact: Regular Donor"
category: [contact-npsp]
display: [Avatar]
function: [Informational]
image: https://login.salesforce.com/logos/Custom/Heart_Grey/logo.png
status: Validated
---

### Description

> This indicator represents a contact who has donated regularly.

{: .tip-title}
>Bundle
>
>Bundle this indicator with other Contact level donor Indicators such as Do Not Contact, One Off Donor, Contact Level
>You can see this bundle in action with the [National Youth Orchestra](https://hazledenesolutions.co.uk/2024/02/10/data-illumination-seeing-the-essential-with-salesforce-indicators/){:target="_blank"}  

### Fields

Fields | Value
-- | --
sObject | `Contact`
Field | `Regular_Donor__c`
Field Label | `Regular Donor`
Active | `TRUE`
Empty Static Text Behavior | `Use Icon Only`
Hover Text | `Regular Donor`
Image | `https://login.salesforce.com/logos/Custom/Heart_Grey/logo.png`
Show False or Blank | `FALSE`
Zero Value Handling | `Treat Zeroes as Blanks`

### Preparation

`Regular_Donor__c` is a custom formula field returning a Boolean value. It is up to your organization as to what you deem is a regular donor. It might be a donation received both this year and last year, or > X number of donations in the last Y years.

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
      "MasterLabel": "Regular Donor",
      "DeveloperName": "Regular_Donor",
      "IsActive": true,
      "ObjectApiName": "Contact",
      "FieldApiName": "Regular_Donor__c",
      "FieldLabel": "Regular Donor",
      "HoverValue": "Regular Donor",
      "EmptyStaticBehavior": "Use Icon Only",
      "ZeroBehavior": "Treat Zeroes as Blanks",
      "ImageUrl": "https://login.salesforce.com/logos/Custom/Heart_Grey/logo.png",
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

{: .note-title}
>Claude Notes
>
>- Added a `Field Label` row (`Regular Donor`) so the real previewer's Extensions display criteria text doesn't show "undefined" - without it, `item.FieldLabel` is missing and `key.js` prints the literal word "undefined" instead of the field name. This is a guess at the real label of `Regular_Donor__c` based on this page's own title - confirm it in your org and correct it here if it differs.
