---
layout: default
title: "Path 2: Grow Your Org's Indicators"
parent: Find Your Path
nav_order: 2
has_children: false
---

## Path 2: Grow Your Org's Indicators

You already have Salesforce Indicators running somewhere in your org. This path is about the newer, more powerful capabilities - and about not overusing them.

### 1. Refresh the model, then look at what's new

* [Why Salesforce Indicators](../why/index.md) - specifically **Choosing a Display Style** and **Adding Actions: Which Component Makes Sense?**. If you set up your Bundles before Badges, Pills, and Actions existed, this section is the fastest way to see what's changed.
* [Release Notes](../release-notes/index.md) - skim the highlights of the last couple of versions.

### 2. The feature people ask about most: Actions

* [Indicator Actions](../setup-salesforce-indicators/indicator-bundle-item/actions.md) - turns a static icon into something clickable: open a URL, a report, another record, a Quick Action, or a Flow.

{: .warning-title}
>Use Actions on purpose, not by default
>
>Actions are powerful enough to replace things Salesforce already does well - a related list, a native Quick Action button, native Next Best Action. The recommended use cases for Actions are narrow on purpose: replacing a Custom Detail Page Link that Dynamic Forms can't show, or surfacing a single, contextual "next step" (update a field, log a call) right where the user already noticed something was off. If you find yourself building a menu of five actions on one Indicator, that's a sign to use a real Salesforce feature instead.

### 3. Change how a Bundle looks: Badges and Pills

* [Indicator Bundle Layout Options (Badges and Pills)](../setup-salesforce-indicators/add-to-lightning-page/badges-and-pills.md) - when to use each, suggested color scheme, and the known display differences between SLDS1 and SLDS2.
* [SLDS1 and SLDS2](../setup-salesforce-indicators/add-to-lightning-page/slds2.md) - if your org is mid-transition between the two themes.

### 4. Show a range, not just a value: Date Range Extensions

* [Indicator Item Extension - Date Ranges](../setup-salesforce-indicators/item-extension.md) - use Salesforce Date Literals (`NEXT_N_DAYS:30`, `THIS_YEAR`, and so on) to drive an icon off a date field, not just an exact value.

### 5. Beyond the record page

* [Indicators in Flow](../setup-salesforce-indicators/indicator-flow.md) - a full Bundle, or a single configurable Indicator, on a Screen Flow.
* [Experience Cloud Components](../components/experience-cloud.md) - the Bundle on a portal or community page (Beta).

### 6. Get inspiration instead of starting from a blank page

* [Recipes](../recipes/index.md) and [Find a Recipe](../recipes/find-a-recipe.md) - filter by what you're trying to show, not just by object.
* [Preview and Share Recipes](../recipes/share.md) - preview someone else's bundle before you commit to bringing it into your org, or share your own.

### Design guardrails worth keeping in mind the whole way through

* [Icon Tips](../setup-salesforce-indicators/indicator-item/icon-tips.md) and [Icon Colors](../setup-salesforce-indicators/indicator-item/icon-colors.md).
* Because Indicators is fully open-ended, it's easy to drift away from looking like Salesforce the more Bundles you add. The more custom colors, icon styles, and Action buttons you introduce, the more your page stops reading as "Salesforce" and starts reading as a bespoke UI a user has to re-learn. Staying close to SLDS colors and using Actions sparingly is what keeps that from happening.

{: .info-title}
>In Progress
>
>This path is a first draft. It's missing a section on planning bundles around user groups (Component Visibility) and a worked "before / after" example of a Bundle upgraded from plain Avatars to Badges + one Action.
