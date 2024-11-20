---
layout: default
title: Release Notes
nav_order: 60
has_children: false
---

## Release Notes

Below are version release notes. Each release note will capture **Highlights** and **Known Issues**. We will always try to link **Known Issues** to the **_Issues_** log on Github, as well as link any new features to their documentation.

## 0.4.0.8

### Upgrade Steps

None required; please review new features.

### Highlights

- Resolved (hopefully) reported issues trying to deploy Lightning Record Pages (Flexipages) that have the Indicators LWC on them.
- Resolved Installing Sample Indicators from Metadeploy install page.
- Display individual Indicators in Flow with the [Indicator Item Component](/docs/setup-salesforce-indicators/indicator-flow.md)!
- Allow an Indicator Bundle to be based on a [Lookup Field](/docs/setup-salesforce-indicators/add-to-lightning-page.md) on the record.
  - Added new property attribute to use a lookup field API Name rather than the default Record Id of the displayed record.
  - Added a property attribute to enable/disable a footer informing the user that this Bundle is from a Related Record.
- Style fixes.
  - A new option in the Property Editor to select the usage of the Bundle on the Page - either Standard Lightning (default) or [Dynamic Forms](/docs/setup-salesforce-indicators/add-to-lightning-page.md). If Dynamic Forms is chosen it changes the header of the Bundle to a look more in keeping with Dynamic Forms. This allows the Bundle to be displayed in between field sections if that is more useful to display icons near the fields they relate to.
  - Corrected CSS style hooks to address hover colors and utility icon colors.
  - Removed the "forced" uppercase for static text.
  - Changed the layout of the buttons so they can be displayed in the same top right hand corner if there is full title and description, no title, no description or no title or description.
  - Changed the buttons to be base style to match the other buttons on the page.
  - Changed the icon spacing in the heading to more closely match the standard components.
  - Added extra vertical space between Indicator Items so when the Items wrap within the card, there is vertical space between the icons.

### Bug Fixes/Requests Closed

- [Error on installing Sample Page Layouts](https://github.com/SFDO-Community/Salesforce-Indicators/issues/169)
- [Hover text color](https://github.com/SFDO-Community/Salesforce-Indicators/issues/143)
- [Utility Icons Seemingly Don't Allow for Colour Overides](https://github.com/SFDO-Community/Salesforce-Indicators/issues/165)
- [Do not enforce capitalization on Static Text](https://github.com/SFDO-Community/Salesforce-Indicators/issues/166)
- [Move The Key and Refresh buttons to the right of the Icons](https://github.com/SFDO-Community/Salesforce-Indicators/issues/171)
- [Add styling option to more closely match Dynamic Forms](https://github.com/SFDO-Community/Salesforce-Indicators/issues/173)
- [Extra vertical space between icons](https://github.com/SFDO-Community/Salesforce-Indicators/pull/170)
- [The indicator icons lack vertical spacing between them](https://github.com/SFDO-Community/Salesforce-Indicators/issues/146)

### Developer Log

None

### Known Issues

- Mapped fields are case-sensitive for their API names. It appears that when trying to use id as the mapped API name, it will not generate an error illustration nor will it display any data. Other combinations were tested and appeared to be cache issues, but id has consistently resulted in this scenario.

## 0.3.0.3

### Upgrade Steps

None

### Highlights

Maintainence release for non-feature fixes

### Bug Fixes

- [Install Sample Page Layouts fails](https://github.com/SFDO-Community/Salesforce-Indicators/issues/163)
- [Reconfigure Sample Locations](https://github.com/SFDO-Community/Salesforce-Indicators/issues/162)

### Developer Log

- Ordered `getBudles` method by label
- Updated CCI file to add English names for MetaDeploy
- `.forceignore` file causes scratch org retrieve issues because of `unpackaged` line

### Known Issues

Still having deployment issues of Lightning Record Pages.

## 0.2.0.5

### Upgrade Steps

#### Indicator Item Page Layout: Add the Display Multiple field

- Navigate to Setup
- Quick Find Search for Custom Metadata Types
- Select the Indicator Item by clicking the name (not Manage Records)
- Scroll to the Page Layouts section at the bottom and click Edit next to the layout
- Add the Display Multiple checkbox to the page

{: .note-title}
>Recommendation
>
>Recommended to replace the blank space in the first column with the Display Multiple checkbox

#### Indicator Item Extension Page Layout: Add the Text Operator field

- Navigate to Setup
- Quick Find Search for Custom Metadata Types
- Select the Indicator Item by clicking the name (not Manage Records)
- Scroll to the Page Layouts section at the bottom and click Edit next to the layout
- Add the Text Operator picklist to the page

{: .note-title}
>Recommendation
>
>Recommended to add a blank space above the Active Checkbox in the second column, then add the Text Operator field under the Active Checkbox, and move the Contains Text field from the first column to the second column under the Text Operator just added

### Highlights

✨ **Extension Text Matching Logic**: 

Used to specify conditions for a field value to match the criteria of the extension. Note that the default (when left blank) will remain "contains" so it does not have to be set when upgrading the package. [Feature](https://github.com/SFDO-Community/Salesforce-Indicators/issues/111)

New options are:
- Contains (default)
- Does Not Equal
- Equals
- Starts With

See [Indicator Item Extension](../setup-salesforce-indicators/item-extension.md) for more details

✨ **Multiple Extension Matching**: 

Used to display multiple extensions when a field value matches the criteria of one or more extensions. Note that the default "has any value" will not be matched in this situation and will only display when no matches are found and it does not meet the the display false or blank. [Feature](https://github.com/SFDO-Community/Salesforce-Indicators/issues/110)

See [Indicator Item Extension](../setup-salesforce-indicators/item-extension.md) for more details

**Updates to the Indicator Bundle Component**:

- Various spacing and UI adjustments
- Removed help icon when no Bundle assigned
- Resized the error image whe no Bundle assigned

**Updates to the Key Component**: 

- Multiple Extension Matching is indicated next to the Display Criteria column header with a help icon/text if this feature is enabled for a specific Indicator Item.
- Object Name has been added to the details of the Bundle for more clarity
- Enhanced the Fill Type descriptions to better articulate metadata configurations
- Corrected the hardcoded empty static text to reflect user experience


✨ **Metadeploy / Installation Updates**:

- Optional sample Account & Contact indicators and respective Lightning Record Pages [Feature](https://github.com/SFDO-Community/Salesforce-Indicators/issues/135)
- Optional set of Training indicators to teach functionality and configuration

### Bug Fixes

- [Contains logic was not case sensitive](https://github.com/SFDO-Community/Salesforce-Indicators/issues/147)
- [Static text was displaying more than 3 characters](https://github.com/SFDO-Community/Salesforce-Indicators/issues/144)
- [Awkward space rendered when no card icon assigned to a Bundle](https://github.com/SFDO-Community/Salesforce-Indicators/issues/138)
- [Certain settings for overriding the foreground/background would result in an icon/indicator not rendering](https://github.com/SFDO-Community/Salesforce-Indicators/issues/142)
- [Fixed Spacing that changed in SLDS in Winter '24](https://github.com/SFDO-Community/Salesforce-Indicators/issues/132)


### Developer Log

- Release steps / notes document
- Removed comments/console logs
- Sample data through Snowfakery
- Converted CSS from sds to slds
- Removed miscellaneous, unused files from the package repo
- Updates the GitHub issues template

### Known Issues

The sample Account and Contact indicators will not deploy with the Metadeploy installer (install.salesforce.org) because of a retired Lightning Page Layout component.

## 0.1.0.3

Initial release of the package in a stable form.

### Highlights

Package includes:
- Setup page and tab using Indicators Setup LWC
- Record Page Indicators LWC with Help Key LWC
- Custom Metadata Type objects for configuration
- Manager permission set
- User permission set

### Known Issues

Not applicable for first release.
