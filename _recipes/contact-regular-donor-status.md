---
title: "Contact: Regular Donor Status"
category: [contact-npsp]
display: [Avatar]
function: [Qualitative, Multiple]
image: https://login.salesforce.com/logos/Custom/Heart_Green/logo.png
---

### Description

> This Indicator shows a different colour icon depending on the Regular Donor Status of the Contact. Based on a new field added to the Contact record - Regular Donor Status. Add your own business logic (rollup, formula, flows) to populate this field from the recurring donations object. Does not display if Regular Donor Status is blank.

### In Bundle

- [Contact: Donor Profile](/docs/recipes/contact/bundle-contact-donor-profile/)

### Fields

| Fields | Value |
|-----------|-----------|
|Label|`Contact Regular Donor Status`|
|sObject|`Contact`|
|Field|`Regular Donor Status`|
|Description|

### Extensions

| Fields | Value |
|-----------|-----------|
|Displays|<img width="27" alt="image" src="https://user-images.githubusercontent.com/122455058/228939786-f07d32ca-d62f-4189-9b83-aa2d6532b150.png">|
|Label|`Contact RD Status - Current`|
|Indicator Item Extension Name|`Contact_RD_Status_Current`|
|Priority|`1`|
|Active|`true`|
|Contains Text|`Current`|
|Hover Text|`Regular Donor - Current`|
|Image|`https://login.salesforce.com/logos/Custom/Heart_Green/logo.png`|

| Fields | Value |
|-----------|-----------|
|Displays|<img width="28" alt="image" src="https://user-images.githubusercontent.com/122455058/228939331-429e48c4-b90c-492a-a448-78c928038950.png">|
|Label|`Contact RD Status - Lapsed`|
|Indicator Item Extension Name|`Contact_RD_Status_Lapsed`|
|Priority|`2`|
|Active|`true`|
|Contains Text|`Lapsed`|
|Hover Text|`Regular Donor - Lapsed`|
|Image|`https://login.salesforce.com/logos/Custom/Heart_Blue/logo.png`|

**Contributed By** Vicky McLaren, [VickyMcL](https://github.com/VickyMcL){:target="_blank"}
{: .contributed-by }
