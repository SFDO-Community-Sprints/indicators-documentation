---
layout: default
title: SLDS1 and SLDS2
summary: "The visual differences between the Salesforce themes, and Dark Mode."
parent: Build Glanceable Indicators
nav_order: 90
has_children: false
---
{% include reading-time.html %}

## SLDS1 and SLDS2
{: .no_toc }

Salesforce has a new version of the Lightning Design System (SLDS2) alongside the original (SLDS1). Salesforce Indicators works with both, and mostly looks and behaves the same either way. You may not have a choice on your org's theme, but there are a few visual differences worth knowing about before you finalize your Bundle design.

{% include toc.html %}

### Known Differences

* **Avatar shape:** Avatars only display as a circle in SLDS2 on desktop, regardless of the **Avatar Indicator Shape** setting - SLDS2 themes have no `square` ("squircle") shape to fall back to. **Avatar Indicator Shape** does work on Mobile, where Avatars can show as base (square) or circle in either theme.
* **Icon color overrides:** Standard and Custom icon colors can't be overridden in SLDS2 on Avatars or Pills - currently only Badges accept a color override in SLDS2. Utility Icons on Avatars are the exception, as their Foreground color still overrides. The same limitation applies to Card Icon colors on an [Indicator Bundle](../setup/indicator-bundle.md). If you need a specific color on a Standard or Custom icon in SLDS2, save it as an SVG or PNG and add it as a Static Resource instead - see [Icon Tips and Colors](icon-tips-and-colors.md).
* **Icon type behavior:** Standard and Custom icons (eg `standard:account`, `custom:custom97`) work best across Avatars, Pills, and Badges in both themes. Utility Icons (eg `utility:people`) display larger than other icon types on Avatars and Pills in both themes, and get cut off by the Circle Avatar shape in SLDS1. Action Icons (eg `action:record`) are cut off on Avatars and Pills in both themes, and are too small to show on a Dynamic Forms Bundle icon - they only display legibly on Badges.
* **Dynamic Forms titles:** Bundle titles don't render correctly with the Dynamic Forms Title Style in SLDS2. Suggestion: don't show a title on Dynamic Forms Bundles while using SLDS2.
* **Badges and Pills:** Badges and Pills show noticeably differently between SLDS1 and SLDS2. The Mobile app only shows the SLDS1 style for Badges and Pills, regardless of your org's desktop theme. If your users are often on Mobile, we suggest sticking with the SLDS1 look for Badges and Pills for now, for a consistent experience. See [Badges and Pills](badges-and-pills.md) for design tips and a gallery of each style.

{: .tip-title}
>Set the Background, Icon, and Text Color Together
>
>If you override only one color, the others come from the theme, and the theme's defaults aren't the same everywhere - on SLDS1, an Avatar with a custom **Icon Background** but no **Icon Foreground** shows a black glyph, and on SLDS2 Dark Mode, a Badge or Pill with a light background and no **Badge/Pill Text Color** can show light text on a light background. Whenever you choose a background, choose the foreground and text color with it, and check the result in Dark Mode before you ship. [SLDS2 Styling Hook Variables](icon-tips-and-colors.md#using-color-values) switch to better colors for light or dark themes automatically.

See [Known Issues](../technical-documentation/known-issues.md#icons-colors-shapes-and-sizes) for GitHub tracking and roadmap status on the color-override limitations above.

## Dark Mode

Salesforce Indicators supports Dark Mode in SLDS2.
Here's how to get Dark Mode:
* Navigate to Setup > Themes and Branding
* Edit an existing SLDS Theme
* Check **Let users enable dark mode.** 
* Save, go back to the app and hard refresh the page. 

Each user can then select Dark Mode via their Profile Menu - just like choosing Cosy or Compact view mode (Compact FTW!).

To get the colors right, see "Set the Background, Icon, and Text Color Together" above for using SLDS2 Styling Hook Variables that switch automatically between light and dark colors.

Remember, Dark Mode is in Beta, so keep checking that everything looks correct as new releases happen. 

## Related Content
{: .no_toc }

* See [Build Glanceable Indicators > Gallery of Indicator Styles and Themes](index.md#gallery-of-indicator-styles-and-themes) for a gallery showing Avatars, Badges, and Pills across both SLDS1, SLDS2, and Dark Mode.



