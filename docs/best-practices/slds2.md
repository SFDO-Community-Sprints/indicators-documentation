---
layout: default
title: SLDS1 and SLDS2
parent: Build Glanceable Indicators
grand_parent: Set Up Salesforce Indicators
nav_order: 70
has_children: false
---

## SLDS1 and SLDS2

Salesforce has a new version of the Lightning Design System (SLDS2) alongside the original (SLDS1). Salesforce Indicators works with both, and mostly looks and behaves the same either way. You may not have a choice on your org's theme, but there are a few visual differences worth knowing about before you finalize your Bundle design.

{: .info-title}
>In Progress
>
>This page needs screen shots comparing the same Bundle in SLDS1 and SLDS2, and details on how a theme is chosen for your org.

### Known Differences

* **Avatar shape:** Avatars only display as a circle in SLDS2 on desktop, regardless of the **Avatar Indicator Shape** setting. **Avatar Indicator Shape** does work on Mobile, where Avatars can show as base (square) or circle in either theme.
* **Icon color overrides:** Standard and Custom icons cannot have their colors overridden in SLDS2. If you need a specific color on a Standard or Custom icon in SLDS2, save it as an SVG or PNG and add it as a Static Resource instead - see [Icon Tips](icon-tips.md). Utility Icons are the exception - see [Icon Colors](icon-colors.md).
* **Dynamic Forms titles:** Bundle titles don't render correctly with the Dynamic Forms Title Style in SLDS2. Suggestion: don't show a title on Dynamic Forms Bundles while using SLDS2.
* **Badges and Pills:** Badges and Pills show noticeably differently between SLDS1 and SLDS2. The Mobile app only shows the SLDS1 style for Badges and Pills, regardless of your org's desktop theme. If your users are often on Mobile, we suggest sticking with the SLDS1 look for Badges and Pills for now, for a consistent experience.

## Dark Mode

Salesforce Indicators supports Dark Mode in SLDS2.

{: .info-title}
>In Progress
>
>Add an image of Dark Mode. Describe how to activate Dark Mode.

{: .issue-title}
>Things to Know
>
>Adding a **Badge Text Color** on the **Indicator Item** or **Indicator Item Extension** changes the background of the Badge to white in Dark Mode. This does not look ideal



