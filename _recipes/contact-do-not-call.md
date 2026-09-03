---
title: "Contact: Do Not Call"
category: [contact]
display: [Avatar]
function: [Soft Exceptions]
image: /docs/images/icons/call_120.png
---

### Description

> An Indicator to show different color icons depending on the Do Not Call status of the contact.

### In Bundle

- [Contact Preferences](/docs/recipes/contact/bundle-contact-communication-preferences/)

### Images

![Do Not Call](/docs/images/icons/call_120.png){: width="50" style="background-color:red; width:50px; height:50px;"}
![Call](/docs/images/icons/voice_call_120.png){: width="50" style="background-color:#30c85a; width:50px; height:50px;"}

### Fields

Fields | Value
---|---
Label|`Call preferences`
sObject|`Contact`
Field|`Do Not Call`
Description| `When value true contact should not be called on any of the phones listed`

### Configuration

Fields | Value
---|---
Hover Text|`Do Not Call`
Empty Static Text Behavior|`Use Icon Only`
Zero Value Handling|`None`
Icon Value|`standard:call`
Icon Background| `red`
Icon Foreground| `white`
Show when False or Blank|`True`
Inverse Hover Text| `Contact can be called`
Inverse Icon Value|`standard:voice_call`

**Contributed By** Maida Rider, [RiderM780](https://github.com/RiderM780){:target="_blank"}
{: .contributed-by }
