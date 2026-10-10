---
title: "Contact: Do Not Call"
category: [contact]
display: [Avatar]
function: [Informational]
image: "![Do Not Call](/docs/images/icons/do-not-call.png)"

status: Validated
---

### Description

> An Indicator to show different color icons depending on the Do Not Call status of the contact.

### Fields

Fields | Value
---|---
Label|`Call preferences`
sObject|`Contact`
Field|`DoNotCall`
Field Label|`Do Not Call`
Description| `When value true contact should not be called on any of the phones listed`
Hover Text|`Do Not Call`
Empty Static Text Behavior|`Use Icon Only`
Zero Value Handling|`None`
Icon Value|`standard:call`
Icon Background| `red`
Icon Foreground| `white`
Show when False or Blank|`True`
Inverse Hover Text| `Contact can be called`
Inverse Icon Value|`standard:voice_call`

![Do Not Call](/docs/images/icons/do-not-call.png)

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
      "MasterLabel": "Call preferences",
      "DeveloperName": "Call_preferences",
      "IsActive": true,
      "ObjectApiName": "Contact",
      "FieldApiName": "DoNotCall",
      "FieldLabel": "Do Not Call",
      "IndicatorDescription": "When value true contact should not be called on any of the phones listed",
      "HoverValue": "Do Not Call",
      "EmptyStaticBehavior": "Use Icon Only",
      "ZeroBehavior": "None",
      "IconName": "standard:call",
      "BackgroundColor": "red",
      "ForegroundColor": "white",
      "DisplayFalse": true,
      "FalseHoverValue": "Contact can be called",
      "FalseIcon": "standard:voice_call",
      "bundleItem": null,
      "extensions": []
    }
  ]
}
```

</details>

**Contributed By** Maida Rider, [RiderM780](https://github.com/RiderM780){:target="_blank"}
{: .contributed-by }
