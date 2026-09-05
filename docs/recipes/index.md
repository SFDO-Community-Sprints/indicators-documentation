---
layout: default
title: Salesforce Indicators Recipes
nav_order: 40
has_children: true
---

# Salesforce Indicators Recipes
In this section you'll find a collection of examples of how Salesforce Indicators is used by Admins in their own orgs. 

Just like a “kitchen” cookbook, we’ve laid out the ingredients and the steps you need to follow to make these Indicators for yourself. These Indicator “recipes” have been tried and tested in Salesforce instances, and are shared here to provide inspiration for your use case.

## Browse the cookbook

- [**Find a Recipe**](find-a-recipe.md) &mdash; filter every recipe by how it **displays** (Avatar, Badge, Pill, Action) and what it's **for** (Informational, Soft Exceptions, Next Up, Quantitative, Qualitative, Multiple).
- [Account Recipes](Account.md) &middot; [Account (NPSP)](Account-NPSP.md)
- [Contact Recipes](Contact.md) &middot; [Contact (NPSP)](Contact-NPSP.md)
- [Case Recipes](Case.md)
- [Opportunity Recipes](Opportunity.md)

Want to add one? See [Contribute a Recipe](recipe-template.md).

## Recipe Ideas and Examples
We've collected a list of ideas of where you could use Salesforce Indicators in your org. See [Indicators Ideas](../recipes/examples.md) for more ideas also.

{: .new-title}
>NEW! Preview and Share your Recipes
>
>Indicator Bundles (with Items) and Indicator Items, can now be shared betwween orgs with little or no setup. 
>
>See [Preview and Share Recipies](../recipes/share.md) for more details.


## Account 
## Bundles
* [Account Account Default](account/bundle-account-key-details.md)

### NPSP Specific
* [Account Organization Funding Information](account/bundle-account-organization-funding.md)

## Indicators
* [Account Account Type](account/Account-Account-Type.md)
* [Account Account Industry](account/Account-Account-Industry.md)
* [Account Organization Giving Level](account/Account-Organization-Giving-Level.md)
* [Account Grant-Making Organization](account/Account-Grant-Making-Organization.md)
* [Account Matching Gift Organization](account/Account-Matching-Gift-Organization.md)
* [Account is Government](account/Account-‐-Is-Government.md)

## Contact
## Bundles

### NPSP Specific
* [Contact Donor Profile](contact/bundle-contact-donor-profile.md)
* [Contact Household](contact/bundle-contact-household.md)
* [Ideas-for-Contact-Bundles](contact/ideas-for-contact-bundles.md)
* [Contact Communication Preferences Simple](contact/bundle-contact-communication-preferences.md)
* [Contact Communication Preferences Extended](contact/bundle-communication-preferences-extended.md)
* [Contact Membership Due for Renewal](contact/contact-membership-due-for-renewal.md)

## Indicators
* [Contact Household Total Gifts](contact/contact-household-total-gifts.md)
* [Contact Total Gifts](contact/contact-total-gifts.md)
* [Contact Donation Recency](contact/contact-donation-recency.md)
* [Contact Donation Frequency](contact/contact-donation-frequency.md)
* [Contact Regular Donor Status](contact/contact-regular-donor-status.md)
* [Contact Membership Status](contact/contact-membership-status.md)
* [Contact Household Compare LY TY](contact/contact-household-compare-lyty.md)
* [Contact ‐ Do Not Contact](contact/contact-do-not-contact.md)
* [Contact ‐ Do Not Call](contact/contact-do-not-call.md)
* [Contact ‐ Email Preferences](contact/contact-email-preferences.md)

{: .note-title}
>Claude Notes
>
>- This page links to Account/Contact recipes two different ways: the new card browse pages (Account.md, Contact.md, now also Case.md and Opportunity.md) near the top, and a manual "## Account / ## Contact" bullet list further down pointing at the older individual full-page recipes under docs/recipes/account/ and docs/recipes/contact/. These are two competing systems on one page - see docs/about/structural-improvements.md #9. Recommend picking one (the card system is clearly the intended future, per recipe-template.md and the check-docs tooling built around it) and either migrating or retiring the manual list.
>- The new Case and Opportunity entries added by this review only use the card system, on purpose, to avoid extending the older manual-list pattern further.

