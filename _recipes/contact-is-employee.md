---
title: "Contact: Is Employee"
category: [contact]
display: [Avatar]
function: [Informational]
image: "![Employee Organization](/docs/images/icons/employee-organization.png)"
status: Validated
---

### Description

Show an icon if the Contact has the 'Is Employee?' box checked.


### Fields

| Fields | Value | Notes |
|-----------|-----------|----------|
|sObject|`Contact`
|Field|`Is_Employee__c`|
|Field Label|`Is Employee?`|
|Active|`true`
|Description|`Indicates this contact is an employee`
|Hover Text|`Employee`
|Empty Static Text Behavior|`Use Icon Only`
|Icon Value|`standard:employee_organization`
|Zero Behavior|`Treat Zeroes as Blanks`
|Show False or Blank|`false`

### Preparation

- Ensure There is a field `Is_Employee__c` on the Contacts record. Use a Formula field to make this field = true, eg they have a User lookup, or they are in the Account of the organization. 

### Notes

- Always ensure the field name matches your Org's naming convention. The field "Is Employee?" is used here, but if you use something else, ensure you change the labels and hovers in the Indicator to match.

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
      "MasterLabel": "Is Employee",
      "DeveloperName": "Is_Employee",
      "IsActive": true,
      "ObjectApiName": "Contact",
      "FieldApiName": "Is_Employee__c",
      "FieldLabel": "Is Employee?",
      "IndicatorDescription": "Indicates this contact is an employee",
      "HoverValue": "Employee",
      "EmptyStaticBehavior": "Use Icon Only",
      "IconName": "standard:employee_organization",
      "DisplayFalse": false,
      "bundleItem": null,
      "extensions": []
    }
  ]
}
```

</details>

**Contributed By** Kaisha Vilcinor, [kvilcinor](https://github.com/kvilcinor){:target="_blank"}
{: .contributed-by }
