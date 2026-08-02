---
layout: default
title: Contact Bundle - Donor Profile
parent: Contact Recipes
grand_parent: Recipes
has_children: false
nav_exclude: true
---


## Description

> This bundle of Indicators shows users key donation information about the contact.  It is designed to be used with NPSP.
Add this bundle to the Contact Lightning Page to display when Total Number of Donations >=1.

## Fields

| Fields | Value | 
|-----------|-----------|
|Label|`Contact Donor Profile`|
|Indicator Bundle Name|`Contact_Donor_Profile`
|Active|`true`
|sObject|`Contact`
|Card Title|`Donor Profile`
|Card Icon|`action:action:new_opportunity`
|Card Text|`Details of this contact's donation history`
|Description|`A Bundle to show on a Contact when using NPSP to show key donation information`


## Indicator Items

<img src="https://user-images.githubusercontent.com/122455058/228901815-26d83a05-677a-4a69-9d8a-20e27c68e69c.png" width="500px">

In the order they are displayed in the Bundle:
1. [Contact Household Total Gifts](../contact/contact-household-total-gifts.md)
1. [Contact Total Gifts](../contact/contact-total-gifts.md)
1. [Contact Donation Recency](../contact/contact-donation-recency.md)
1. [Contact Donation Frequency](../contact/contact-donation-frequency.md)
1. [Contact Regular Donor Status](../contact/contact-regular-donor-status.md)
1. [Contact Membership Status](../contact/contact-membership-status.md)

![Donor Profile](../../images/bundles/donorpreferences.png){: width="500"}

1. [Do Not Contact](../contact/contact-do-not-contact.md)
1. [Contact Level](../contact/contact-contact-level.md)
1. [One Off Donor](../contact/contact-one-off-donor.md)
1. [Regular Donor](../contact/contact-regular-donor.md)
1. [Seat Supporter](../contact/contact-seat-supporter.md)


## Notes

* This is a nice use of the Action Icon in the Bundle. Unfortunately Action Icons can't be used in the Indicator Items, but they may be useful here. Just make sure your Bundles are consistent throughout your org. 
* This bundle uses fields from the NPSP. Ensure you have these fields in your org, and you are using them before creating an Indicator for the field.

## Contributed By
Vicky McLaren, [VickyMcL](https://github.com/VickyMcL){:target="_blank"}
Emma Keeling, [Salesforce_Em](https://github.com/Salesforce-Em){:target="_blank"}
