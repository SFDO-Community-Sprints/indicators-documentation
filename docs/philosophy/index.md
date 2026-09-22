---
layout: default
title: Get to the Point
nav_order: 9
has_children: false
---

{% include reading-time.html %}

# Get to the Point: Why Salesforce Indicators Exist

Most Salesforce documentation tells you *how* to use a feature. This page is about *why* Indicators exists at all and the problem it's actually solving, before you build a single Indicator.

{: .tip-title}
>Looking for setup instructions instead?
>
>This page is about the thinking behind Indicators, not the fields and buttons. For that, see [Set Up Salesforce Indicators](../setup-salesforce-indicators/index.md). For a decision guide on which display style, category, or action Indicator works for you, see [Earning the Glance](../best-practices/index.md).

## Why Indicators exists

Most records in Salesforce are just a wall of fields. Somewhere in that wall is the one vital piece of information that would help your user right now — but it's there with the same visual weight as the other fields. Nothing on the page tells them where to look first.

We know eye-tracking and usability research that people don't read screens, they scan them. Users read at most a quarter of the words on a typical page, and they decide whether something matters in a fraction of a second — long before they've read a single sentence properly. That's how our attention works. Your users are not failing to read the record. The record is failing to tell them what matters.

Color and shape help solve that problem. The human visual system registers a color, an icon, or a pattern almost instantly — before conscious, word-by-word reading even kicks in. That's the entire premise Indicators is built on: **stop asking your users to read the record. Let them see it.**

## What Indicators actually does

Salesforce Indicators is a no code solution configurable by any Salesforce Admin:

- An **Indicator Item** defines what to display; an icon or value, with color, based on the value of a field.
- An **Indicator Item Extension** lets that same Indicator Item change its look depending on the field value — a different icon and color for Hot, Warm, or Cold, for example.
- An **Indicator Bundle Item** places an Indicator Item into a Bundle and controls its order. This allows the same Item to display in multiple Bundles. Here you can control any actions the user can take by clicking on an Indicator.🆕
- An **Indicator Bundle** groups Indicator Items together for one object and one purpose, and is added to the Lightning Record Page. Eg there could be a Bundle for your Marketing team and a Bundle for your Donations team. 

The point of Indicators is why it helps your users: stop users having to hunt through fields to understand a record, and start letting them see it when they open the Salesforce record, and at-a-glance.

## Before you build anything: think about meaning, not fields

- Before creating your first Bundle or Item, consider the data that will drive your Indicators — not just the field, but the *meaning* the field carries.
- Design your fields to be multi-use wherever possible. A formula field returning true/false, or a text field returning three or four short results, can drive an Indicator *and* still be useful in a report or list view.
- Decide what do you want your user to know the instant they land on this record? Indicators isn't just about surfacing a field value into the top-right corner of the page. It's about giving that field meaning.
- Creating Indicators is an art, not a science. You know your org better than we do — that's why Indicators is built to be flexible. Start simply, then grow your range of Indicators as your users start asking for more.

## What "at-a-glance" actually solves

For your users, at-a-glance means opening a record and immediately knowing which persona to bring to it, or which playbook applies, before they've read a single field. The combination of the color and icon do that instantly, the way a uniform tells you someone's role before they say a word.

For you as the Admin, it means the user can answer three questions as soon as the record is displayed: **What is this record worth to the organization? What does it need? What should happen next?** That's what at-a-glance means - immediate orientation to the meaning behind the record.

{: .tip-title}
>Placing Bundles
>
>We recommend that Indicators are placed in the top right hand corner of a regular Salesforce Lightning record page. So the user first looks at the Record Name, and then the colors on the right hand side draw their eye to the Bundle of Indicators. The Top right hand corner of the page becomes the Action destination, the Edit button, the custom buttons, and the Indicators are all grouped in a similar location. 

With the display options of Badges and Pills 🆕, and the ability to style a bundle to match Dynamic Forms, Indicators can also be visible between field sections, and have text in addition to icons. 

## Many ways Indicators can be configured to help your users

**1. Grounding the user in the right persona.**
An Account with four different brands and six different contract types looks identical on the page layout — same fields, same labels. An Indicator shows the brand in an icon representing the brand color, and the contract type as another color and icon. The user can immediately get into the right mindset for that Account.

**2. Flagging what must not be missed.**
A *Do Not Contact* or *Do Not Call* Indicator on a Contact turns a compliance risk that is hidden in a checkbox three quarters the way down the page, into something that's impossible to miss. Some field values are too important to depend on someone reading the whole page.

**3. Showing the relationship with the Contact.**
A *Donation Recency* or *Membership Status* Indicator turns a date field into an instant read on lifecycle, eg lapsing, active, at risk. The Admin doesn't have to remember what "142 days since last gift" means. The Indicator has been configured to show that information at-a-glance.

**4. Answering "why does this record matter?"**
An *Organization Giving Level* Indicator on an Account answers the value question immediately — this is a leadership-level funder, treat the record accordingly. That's the "what is this record worth to the organization" question, solved in the corner of the page instead of a report someone runs once per quarter.

**5. Signalling that a different process applies here.**
An *Account Type*, *Industry*, or *Is Government* Indicator tells a user, before they touch a field, that this record plays by different rules — different approval paths, different language, different expectations. It's a heads-up to the user.

**6. Making preferences impossible to override by accident.**
A *Communication Preferences* Indicator shows a Contact's preferred channel and any restrictions at a glance, so your user doesn't have to read three fields before deciding whether to pick up the phone, or send an email.

**7. When a validation rule is too much**
Validation rules have their place, but they can mess with integrations, and stop the flow for users getting their job done. Maybe a "soft exception" would be better - just an Indicator in the top right hand corner of the record, or right below that section of fields to show that something may not work well if this field value is not correct. 

**8. Rollup! Rollup!**
We love "Delores" (Declarative Lookup Rollup Summaries - DLRS) with Indicators, and it's not just because DLRS is another Open Source Commons app. Eg roll up the *Number of Events* the Contact has attended (Campaign Member where Status is Attended and Campaign Type is Event) and show an Indicator that the contact has attended Events, meaning the record belongs in your Org. 

**9. Multiple Indicators from one field**
This is great for Multi Select Picklists, or a Rollup from child records. Eg which products the Account has purchased over the lifetime, or which Marketing Campaigns the contact has responded to in the last 12 months. The options are endless.  

**10. Next Up!**
What is the next thing the user must do to move this record along to make the Account or Contact or Case more valuable for the Organization? Eg waiting for a document to be submitted, waiting for payment, touch base with the contact for their 3 monthly check-in.

**11. When the numbers matter**
What is the value of the Donations in the past 12 months? How many Open Cases are there? How many days overdue is the Account's latest payment? Numbers tell the story, and users seeing the key numbers at-a-glance, and with colors that mean something to them, helps the user know what's what. 

{: .info-title}
>Indicator Themes
>
>The themes running through these examples could be summed up as Informational, Qualitative, Quantitative, Soft Exceptions and Up Next... Are there other themes that resonate with you for your Org and your users?

## Don't overdo it!

The list above is just a start - there are so many reasons to add an Indicator, and only you as the Admin knows your Org and your user's needs. However, it's just as important to know when to stop. Salesforce Indicators is completely open-ended — any icon, any color, any text, any action — which means it's entirely possible to build something that no longer looks or feels like Salesforce at all. By sticking close to the SLDS color palette, keeping actions to the handful of cases where they genuinely replace something Salesforce can't already do well, and asking "does this still help the user, or is it just decoration now?" and "do the users understand why this Indicator exists?" are what keep a page's worth of Indicators reading as **one considered system**, not a pile of unrelated icons that happened to get added over time.

## TL;DR

Indicators isn't about making the record page prettier. It's an admission that nobody reads the whole record, and a decision to stop pretending they will. Give your users the key information they truly need to know, make that information visible and colorful, and let everything else stay exactly where it belongs on the page, for where the work actually gets done.

## Related Content
* [Install Salesforce Indicators](/docs/install-salesforce-indicators/index.md)
* [Guidelines](/docs/best-practices/index.md) for creating the best glance-able Indicators
* [Recipes](/docs/recipes/find-a-recipe.md) for pre-built ideas that you can preview in your org 🆕

