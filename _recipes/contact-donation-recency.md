---
title: "Contact: Donation Recency"
category: [contact]
display: [Badge]
function: [Quantitative, Multiple]
image: https://user-images.githubusercontent.com/122455058/228932794-989ce0b4-7a2a-4f16-b6bd-6b210472c6ae.png
---

### Description

> Show a different icon depending on how long it's been since the Contact's last donation. Based on the NPSP rollup **Last Donation Date** (`npo02__LastCloseDate__c`).

### Indicator Item

| Field | Value |
| --- | --- |
| Label | `Contact Donation Recency` |
| sObject | `Contact` |
| Field | `Donation Recency` |

### Extensions

| Field | Value |
| --- | --- |
| Label | `Contact Donation Recency -- last 6 months` |
| Extension Name | `Contact_Donation_Recency_last_6_months` |
| Priority | `1` |
| Active | `true` |
| Minimum ( >= ) | `1` |
| Maximum ( < ) | `183` |
| Hover Text | `Recency - Last 6 months` |
| Icon Value | `standard:portal` |

| Field | Value |
| --- | --- |
| Label | `Contact Donation Recency -- 6 to 18 months` |
| Extension Name | `Contact_Donation_Recency_6_18_months` |
| Priority | `2` |
| Active | `true` |
| Minimum ( >= ) | `183` |
| Maximum ( < ) | `549` |
| Hover Text | `Recency - Last 18 months` |
| Icon Value | `standard:performance` |

| Field | Value |
| --- | --- |
| Label | `Contact Donation Recency -- 18+ months` |
| Extension Name | `Contact_Donation_Recency_18_months` |
| Priority | `3` |
| Active | `true` |
| Minimum ( >= ) | `549` |
| Hover Text | `Recency - Over 18 months ago` |
| Icon Value | `standard:thanks` |

### Preparation

- Add a formula field on Contact named `Donation Recency` with formula `TODAY() - npo02__LastCloseDate__c` (result: Number of days).

### In Bundle

- [Contact: Donor Profile](/docs/recipes/contact/bundle-contact-donor-profile/)


### Contributed By Vicky McLaren, [VickyMcL](https://github.com/VickyMcL){:target="_blank"}
