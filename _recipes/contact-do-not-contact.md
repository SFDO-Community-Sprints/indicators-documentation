---
title: "Contact: Do Not Contact"
category: [contact-npsp]
display: [Avatar]
function: [Soft Exceptions]
image: /docs/images/icons/first_non_empty_120.png
---

### Description

> This indicator represents a contact who has requested to not be contacted at all.

### In Bundle

- [Contact Communication Preferences Extended](/docs/recipes/contact/bundle-communication-preferences-extended/)
- [Contact Donor Profile](/docs/recipes/contact/bundle-contact-donor-profile/)
- [Contact Preferences](/docs/recipes/contact/bundle-contact-communication-preferences/)

### Images

![First Non Empty](/docs/images/icons/first_non_empty_120.png){: width="50" style="background-color:#ff538a; width:50px; height:50px;"}

### Fields

Fields | Value
-- | --
sObject | `Contact`
Field | `npsp__Do_Not_Contact__c`
Active | `TRUE`
Empty Static Text Behavior | `Use Icon Only`
Hover Text | `Do Not Contact`
Icon Value|`standard:first_non_empty`
Show False or Blank | `TRUE`
Zero Value Handling | `Treat Zeroes as Blanks`

### Preparation

`npsp__Do_Not_Contact__c` is a standard NPSP field.

### Notes

The default color of this icon is pink after the updates from Winter '24. If you want to make changes, you can just adjust the Icon background and foreground settings. E.g. to change the icon to a red background and white symbol:

![First Non Empty](/docs/images/icons/first_non_empty_120.png){: width="50" style="background-color:red; width:50px; height:50px;"}

| Fields | Value |
|-----------|-----------|
|Icon Background|`Red`|
|Icon Foreground|`White`|

**Contributed By** Emma Keeling, [Salesforce_Em](https://github.com/Salesforce-Em){:target="_blank"}
Maida Rider, [RiderM780](https://github.com/RiderM780){:target="_blank"}
{: .contributed-by }
