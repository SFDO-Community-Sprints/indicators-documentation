---
title: "Contact: Membership Due for Renewal"
category: [contact-npsp]
display: [Avatar]
function: [Next Up, Qualitative]
image: "![Reward Green](/docs/images/icons/reward-green-120.png)"
status: Validated
---

### Description

> This indicator will show a colored icon when a membership is either due for renewal or is soon to be due for renewal. It will be required to create a custom field indicating whether the membership renewal threshold has been met based on the business rules - for example, whether the member should be contacted after their membership has ended, two weeks, or two months beforehand.

### Fields

| Fields | Value |
|-----------|-----------|
sObject | Contact
Field | Membership_Expired__c
Field Label | Membership expired
Active | TRUE
Description | Indicates to contact for membership renewal
Empty Static Text Behavior | Use Icon Only
Show False or Blank | FALSE
Hover Text | Email the member for membership renewal
Icon Value | standard:reward
Icon Background | Green
Icon Foreground | White
Show When False or Blank | TRUE
Inverse Hover Text | Membership is active
Inverse Icon Value | standard:reward
Inverse Icon Background | Blue
Inverse Icon Foreground | White

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
      "MasterLabel": "Membership Due for Renewal",
      "DeveloperName": "Membership_Due_for_Renewal",
      "IsActive": true,
      "ObjectApiName": "Contact",
      "FieldApiName": "Membership_expired__c",
      "FieldLabel": "Membership expired",
      "IndicatorDescription": "Indicates to contact for membership renewal",
      "HoverValue": "Email the member for membership renewal",
      "EmptyStaticBehavior": "Use Icon Only",
      "IconName": "standard:reward",
      "BackgroundColor": "Green",
      "ForegroundColor": "White",
      "DisplayFalse": true,
      "FalseHoverValue": "Membership is active",
      "FalseIcon": "standard:reward",
      "InverseBackgroundColor": "Blue",
      "InverseForegroundColor": "White",
      "bundleItem": null,
      "extensions": []
    }
  ]
}
```

</details>
