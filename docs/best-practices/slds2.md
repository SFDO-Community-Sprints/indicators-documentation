---
layout: default
title: SLDS1 and SLDS2
parent: Build Glanceable Indicators
nav_order: 90
has_children: false
---

## SLDS1 and SLDS2

Salesforce has a new version of the Lightning Design System (SLDS2) alongside the original (SLDS1). Salesforce Indicators works with both, and mostly looks and behaves the same either way. You may not have a choice on your org's theme, but there are a few visual differences worth knowing about before you finalize your Bundle design.

### Known Differences

* **Avatar shape:** Avatars only display as a circle in SLDS2 on desktop, regardless of the **Avatar Indicator Shape** setting. **Avatar Indicator Shape** does work on Mobile, where Avatars can show as base (square) or circle in either theme.
* **Icon color overrides:** Standard and Custom icons cannot have their colors overridden in SLDS2. If you need a specific color on a Standard or Custom icon in SLDS2, save it as an SVG or PNG and add it as a Static Resource instead - see [Icon Tips](icon-tips.md). Utility Icons on Avatars are the exception as their Foreground color will override - see [Icon Tips](icon-tips.md).
* **Dynamic Forms titles:** Bundle titles don't render correctly with the Dynamic Forms Title Style in SLDS2. Suggestion: don't show a title on Dynamic Forms Bundles while using SLDS2.
* **Badges and Pills:** Badges and Pills show noticeably differently between SLDS1 and SLDS2. The Mobile app only shows the SLDS1 style for Badges and Pills, regardless of your org's desktop theme. If your users are often on Mobile, we suggest sticking with the SLDS1 look for Badges and Pills for now, for a consistent experience.

## Dark Mode

Salesforce Indicators supports Dark Mode in SLDS2.
Here's how to get Dark Mode:
* Navigate to Setup > Themes and Branding
* Edit an existing SLDS Theme
* Check **Let users enable dark mode.** 
* Save, go back to the app and hard refresh the page. 

Each user can then select Dark Mode via their Profile Menu - just like choosing Cosy or Compact view mode (Compact FTW!).

To get the colors right, check out using [SLDS2 Styling Hook Variables](../best-practices/icon-colors/#using-color-values) that switch to better colors for light or dark themes automatically. 

Remember, Dark Mode is in Beta, so keep checking that everything looks correct as new releases happen. 

## Gallery of Indicator Styles and Themes in Dark Mode

All Images are using our standard Sample Indicators on Account. Click on the Image to enlarge it to full size. 

<details markdown="block" class="gallery">
<summary>🖼️ Avatars SLDS2 Dark Mode</summary>

![SLDS2 Avatar](../../images/setup/Avatar-Dark-v05.png){: width="800"}
</details>

<details markdown="block" class="gallery">
<summary>🖼️ Badges SLDS2 Dark Mode</summary>

![SLDS2 Badges](../../images/setup/Badge-Dark-v05.png){: width="800"}
</details>

<details markdown="block" class="gallery">
<summary>🖼️ Pills SLDS2 Dark Mode</summary>

![SLDS2 Pills](../../images/setup/Pills-Dark-v05.png){: width="800"}
</details>

<details markdown="block" class="gallery">
<summary>🖼️ Pills in Wide Column with Dynamic Forms Style SLDS2 Dark Mode</summary>

![SLDS2 Pills Wide](../../images/setup/Pills-DF-Wide-Dark-v05.png){: width="800"}
</details>

<details markdown="block" class="gallery">
<summary>🖼️ SLDS 1 Indicator Styles Comparison</summary>

💡 It's not recommended to have different views of the same Bundle on the same page — this is just handy for comparing styles while you're testing. Here are our Sample Indicators showing each style, with just a color override on one extension. 

![SLDS1 Bundles](../../images/setup/SLDS1-Bundles.png){: width="800"}
</details>

<details markdown="block" class="gallery">
<summary>🖼️ SLDS 2 Indicator Styles Comparison</summary>

💡 It's not recommended to have different views of the same Bundle on the same page — this is just handy for comparing styles while you're testing. Here are our Sample Indicators showing each style, with just a color override on one extension. 

![SLDS2 Bundles](../../images/setup/SLDS2-Bundles.png){: width="800"}
</details>



