---
title: "Contact: Is Employee"
category: [contact]
display: [Avatar]
function: [Informational]
image: "![Employee Organization](/docs/images/icons/employee-organization.png)"
---

### Description

Show an icon if the Contact has the 'Is Employee?' box checked.


### Fields

| Fields | Value | Notes |
|-----------|-----------|----------|
|sObject|`Contact`
|Field|`Is_Employee`|
|Active|`true`
|Description|`Indicates this contact is an employee`
|Hover Text|`Employee`
|Empty Static Text Behavior|`Use Icon Only`
|Icon Value|`standard:employee_organization`
|Zero Behavior|`Treat Zeroes as Blanks`
|Show False or Blank|`false`

### Preparation

- Ensure the users can check "Is Employee" on the Contacts page.

### Notes

- Always ensure the field name matches your Org's naming convention. The field "Is Employee?" is used here, but if you use something else, ensure you change the labels and hovers in the Indicator to match.

**Contributed By** Kaisha Vilcinor, [kvilcinor](https://github.com/kvilcinor){:target="_blank"}
{: .contributed-by }
