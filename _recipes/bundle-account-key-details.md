---
title: "Bundle: Account Key Details"
category: [account]
display: [Bundle]
function: [Informational]
image: "![Key Details Bundle](/docs/images/recipes/KeyDetailsBundle.png)"
---

### Description

> Use this bundle as a default bundle to appear on the Account Page to show users some key details about the Account

### Image
![Key Details Bundle](/docs/images/recipes/KeyDetailsBundle.png){: width="590"}

### Fields

| Fields | Value | 
|-----------|-----------|
|Label|`Account Default`|
|Indicator Bundle Name|`Account_Default`
|Active|`true`
|sObject|`Account`
|Card Title|`Account Default`
|Card Icon|`standard:account`
|Card Text|`Key Details about this Account`
|Description|`A Bundle to show as default on an Account to show Key Indicators`


### Suggested Indicator Items

1. [Account Account Industry](/docs/recipes/Account/#account-account-industry)
1. Account Annual Revenue
1. Account Country
1. Account Rating
1. Account Source
1. [Account Account Type](/docs/recipes/Account/#account-account-type)

<details markdown="block" class="recipe-preview">
<summary>🔍 Preview this Recipe in your Org</summary>

Copy this JSON and use the **Preview a Recipe** button on the Indicators Setup page.

```json
{
  "recipeSchemaVersion": "1.0",
  "recipeType": "bundle",
  "bundle": {
    "MasterLabel": "Account Default",
    "DeveloperName": "Account_Default",
    "IsActive": true,
    "ObjectApiName": "Account",
    "CardTitle": "Account Default",
    "CardText": "Key Details about this Account",
    "CardIcon": "standard:account",
    "BundleDescription": "A Bundle to show as default on an Account to show Key Indicators"
  },
  "items": []
}
```

</details>
