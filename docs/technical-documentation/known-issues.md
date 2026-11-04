---
title: Known Issues
nav_order: 115
has_children: false
---

## Salesforce Indicators Known Issues
{: .no_toc }

Throughout the site we have listed out some known issues. This page is just a summary of them all, their ℹ️status (or 🎫Github Issue), and some very unusual edge cases we found whilst doing extensive automated testing. 

- TOC
{:toc}

### Icons, Colors, Shapes, and Sizes

#### SLDS2 Icon Color Overrides
{: .no_toc }

* Standard and Custom icons cannot have their colors overridden in SLDS2 - use a Utility Icon's Foreground override, or an SVG/PNG Static Resource instead. Color overrides on [Indicator Bundle](../setup/indicator-bundle.md) Card Icons are affected the same way - for now, stick with an SLDS1 Theme if you rely on color overrides. 
* ℹ️ This is [on the Salesforce Roadmap](https://ideas.salesforce.com/s/roadmap/a0V8W00000VMovLUAT/design-systems?c__roadmapItem=a0SHp00000evZ2yMAE){: target="_blank"} to be included in a future release. 🎫[#188](https://github.com/SFDO-Community/Salesforce-Indicators/issues/188). 

#### Set the Background, Icon Color and Text Color Together
{: .no_toc }

* If you override only one color, the others come from the theme, and the theme's defaults are not the same everywhere.
    - On SLDS1, an Avatar icon with a custom **Icon Background** but no **Icon Foreground** shows a black glyph.
    - On SLDS2 dark mode, a Badge or Pill with a light background and no **Badge/Pill Text Color** shows light text on a light background, which is hard to read, so set the background and text to suitable colors if you have enabled dark mode. 
* ℹ️ Whenever you choose a background, choose the foreground and text color with it. Use dark text on light backgrounds and white text on dark backgrounds, and check the result in dark mode before you ship. Also check out using [SLDS2 Styling Hook Variables](../best-practices/icon-colors/#using-color-values) that switch to better colors for light or dark themes automatically. 
* ℹ️ Since SLDS2 currently ignores color overrides, make sure the icon itself carries the meaning, rather than relying only on colors.

#### Avatar Shapes
{: .no_toc }

* Unfortunately in SLDS2 Themes there are no `square` ('squircle') icon shapes. This is a definite miss from Salesforce, but there must be some accessibility reasons for it.
- ℹ️ This one is closed as not planned 🎫[#201](https://github.com/SFDO-Community/Salesforce-Indicators/issues/201){: target="_blank"}

### Badges and Pills

#### Badges and Pills Shapes and Icons
{: .no_toc }

* Badges and Pills look vastly different in SLDS1 and SLDS2. This is just a strange design decision by Salesforce. 
* Icons on Badges are very small and you don't get to choose how the small icons look, so you may have to choose a different Icon when displaying Badges. 
* ℹ️ This is built into the Lightning Components, so these issues are not something we can fix. 

#### Badges and Pills Icon Alignment
{: .no_toc }

* Icons on Pills are not vertically centered on Mobile when a [Click Action](../best-practices/actions.md) is added to the Pill. 
* On desktop, Icons on Badges and Pills are not centered vertically either, and Indicators with an icon are taller than Indicators without one. 
* ℹ️ This is built into the Lightning Component itself, so it's not something we can fix. 

#### Mobile Badges and Pills
{: .no_toc }

* The Mobile app only shows the SLDS1 style for Badges and Pills, regardless of your org's desktop theme. We suggest sticking with the SLDS1 look for Badges and Pills if your users are often on Mobile.
* ℹ️ Mobile Sites and Experience sites are [on the Salesforce Roadmap](https://ideas.salesforce.com/s/roadmap/a0V8W00000VMovLUAT/design-systems?c__roadmapItem=a0SHp00000eviYSMAY){: target="_blank"} - add your comment as to why you need it.  
* Good news is that in an upcoming release you can [roll out SLDS2 to groups of users](https://ideas.salesforce.com/s/roadmap/a0V8W00000VMovLUAT/design-systems?c__roadmapItem=a0SHp00000evbJ1MAI){: target="_blank"}, so you can leave mobile users on SLDS1 unless they need to move to SLDS2 for another reason. 

#### Badge and Pill Label
{: .no_toc }

- The visible label is **Badge/Pill Text**, which is separate from **Hover Text** (Hover Text only feeds the Popover).
- ℹ️ The label comes from the first of these that has a value: a matching Extension's Badge/Pill Text, then the Item's Badge/Pill Text, then the field's value formatted as the user sees it.

#### Boolean Fields and Badges and Pills
- **Boolean Values** don't show on Badges and Pills, ensure **Badge/Pill Text** and **Inverse Badge/Pill Text** are entered. 
- ℹ️ This one is just for your information. 

### The Key and Bundles

#### Icons on Bundles
{: .no_toc }

* The Bundle's header icon is different from an Indicator's Avatar - it *does* show your background and foreground colors on SLDS1, SLDS2, and Dark Mode. 
* Icons on Bundles showing as Dynamic Forms titles do not show as colored, nor do they allow color overrides. This is a design choice to more closely match Dynamic Forms. 
* ℹ️ This is coming in a new release. 🎫[#250](https://github.com/SFDO-Community/Salesforce-Indicators/issues/250){: target="_blank"}

#### Icons on The Key
{: .no_toc }

- The Key always shows the **Card Icon Background** and **Card Icon Foreground** colors, even when the Bundle uses the Dynamic Forms title style.
* ℹ️ This is coming in a new release. 🎫[#250](https://github.com/SFDO-Community/Salesforce-Indicators/issues/250){: target="_blank"}

#### Field Values shown on The Key

- When we changed the behavior of the **Hover Text** to be Popover, it meant that Field Values were no longer shown in the Tooltip when Hover Text was blank. We added a new setting **Show field value in popover when Hover Text is blank** is checked when adding the Bundle to the Lightning Record Page, which will show the Field Value when Hover Text is blank, but The Key still shows that the Field Value will show regardless. 
* ℹ️ This is coming in a new release. 🎫[#250](https://github.com/SFDO-Community/Salesforce-Indicators/issues/250){: target="_blank"}

#### SLDS Icons
{: .no_toc }

{: .tip}
>Continue using SLDS1 until the new color overrides are available, and design Badges so their Icons and Colors look consistent with each other. 

* **Standard and Custom Icons work best:** (eg `standard:account`, `custom:custom97`) Avatars, Pills, and Badges, in both SLDS1 and SLDS2. 
    * In SLDS1, foreground and background color overrides work, and we really recommend these.
    * In SLDS2 the color overrides only work on Badges currently - Avatars and Pills ignore both the foreground and background override
    * Pills and Badges Text color overrides work on in both SLDS1 and SLDS2.
* **Utility Icons are a mixed success:** (eg `utility:people`) The icons are larger on Avatars and Pills in both SLDS1 and SLDS2 
    * In SLDS1 the Circle Avatar shape cuts them off, while the Base shape just shows them oversized - and noticeably larger than other icon types on Badges.
    * Badges display utility icons larger than other icon types, but still legibly.
* **Action Icons just don't work:** (eg `action:record`) : The Icons are cut off on Avatars and Pills, in both SLDS1 and SLDS2. 
    * On a Dynamic Forms Bundle Icon they're too small to even show. 
    * Badges display action icons larger than other icon types, but still legibly. 

* ℹ️ See some [example images](https://github.com/SFDO-Community/Salesforce-Indicators/issues/238) of the Action and Utility Item issues on our Github repo. 

### Blank Values, Fallback Icons, and Empty Icons

#### Hover Text Without an Icon
{: .no_toc }

* If an Avatar has **Hover Text** but no Icon or Image, it displays Salesforce's generic default icon (`standard:default`). 
* ℹ️ This is deliberate: we force a fallback icon so the Popover has something to attach to, rather than showing a Popover on an empty gap.

#### Show When False or Blank With Nothing Configured
{: .no_toc }

* If an Indicator Item has **Show when False or Blank** checked but no Icon, Image or Inverse values configured, it still renders a default icon rather than disappearing. The same happens when an Extension matches but has nothing configured (no Image, Icon, etc.).
* ℹ️ If you don't want anything displayed, leave **Show when False or Blank** unchecked, or configure the Inverse values so the false or blank state shows what you intend.

#### Badges and Pills With a Blank Field
{: .no_toc }

* A Badge or Pill with **Show when False or Blank** checked and no **Inverse Badge/Pill Text** still draws a Badge or Pill, but it shows only the default (or selected) icon, with no words. This can can look bad.
* ℹ️ Add Inverse Badge/Pill Text if the Badge or Pill should say something, such as "No rating yet".

#### Merge Tokens on Blank Fields
{: .no_toc }

* Merge tokens such as `{!AccountNumber}` in **Hover Text** and **Badge/Pill Text** become an empty string when the field is blank, so you get `Number is []`, not the merge token. 
* ℹ️ Write your text so it still reads well when the value is missing, or don't use Merge Tokens of fields that can be blank. 

#### No Validation on Merge Tokens
{: .no_toc }

* Merge tokens such as `{!AccountNumber}` in **Hover Text** and **Badge/Pill Text** have no validation and the text will not show. 
* ℹ️ Ensure you check the popovers to see that the fields are merging correctly. 

### Indicator Item Extensions

#### Extensions Don't Inherit From the Item
{: .no_toc }

* An Extension owns its own look. If you leave Hover Text, Badge/Pill Text, Badge/Pill Text Color or Badge Icon Position blank on an Extension, it does **not** borrow the Indicator Item's values. For Badges and Pills the label falls back to the field value, and there is no custom color. Fill in everything you want on the Extension itself.
- ℹ️ A "Use Standard Values" option on Extensions (similar to `UseStandardPrice` on a Price Book Entry) is a Feature Request 🎫[#241](https://github.com/SFDO-Community/Salesforce-Indicators/issues/241){: target="_blank"}.

#### Extensions Can't Show the Field Value
{: .no_toc }

* **Empty Static Text Behavior** (show the field value or show just the icon) only applies to Indicator Items. Extensions always show the icon and never the field value. Showing the field value on an Extension is not supported.
* ℹ️ If you want to show the field value, you probably don't need an Extension to change the color.

#### Advanced Fields and Extension Rules
{: .no_toc }

* **Advanced Field** is an advanced option, use it with caution. A text rule on the wrong field type, for example **Contains** on a checkbox, can crash the component. A validation rule now stops this for standard Fields, but not for Advanced Fields.
* ℹ️ When an **Advanced Field** fails it may fail silently, or show an error that isn't friendly for your users, especially where permissions are involved. Test thoroughly, with a range of users and profiles, before rolling out.

### Date Ranges and Date Values

#### No Exceptions
{: .no_toc }

* There's no validation that Date Ranges don't overlap - if two Extensions both match, the one with the higher **Priority** value wins and its icon is shown. Order the Extensions to show the most specific or most important Date Range at the highest Priority.
* There is no validation that you have entered the right Date Literal - the Indicator will just not show. 
* ℹ️ This is something you need to take care with. 

#### Text or Date Values Are Free Text
{: .no_toc }

* **Text or Date Value** is a free-text field, so Salesforce can't check that what you've typed is a valid date. You can save an Extension with a **Match Operator** of **Before End** and a value of `Test`, and it will not behave as a date comparison.
* ℹ️ Use a supported relative date such as `TODAY`, `YESTERDAY`, `TOMORROW`, `LAST MONTH`, `THIS MONTH`, `NEXT 30 DAYS` or `THIS YEAR`. Fiscal periods are not supported. Feature Request 🎫[#242](https://github.com/SFDO-Community/Salesforce-Indicators/issues/242){: target="_blank"}

#### Numeric Extensions Need a Minimum
{: .no_toc }

* For an Extension on a numeric field (Number, Currency, Percent), **Minimum** is required. An Extension with only a **Maximum** is never evaluated, so set a Minimum even if you only care about an upper limit. 
* ℹ️ There is now a Validation Rule to support this setting. 

### Popovers

#### Hover Text Popover Overlap
{: .no_toc }

* When Hover Text is entered on an Avatar Indicator, the Popover displays over the top of the standard Tooltip, rather than replacing it. 
* ℹ️ This is to allow for screen readers to show the name of the Indicator Item that is displaying.

#### Popovers Only Show When There's Something to Show
{: .no_toc }

* If an Indicator has no **Hover Text** and no [Action](../best-practices/actions.md), it has no Popover. Avatars still show the name of the Indicator Item as standard alt text, but not the field value.
* ℹ️ To show the field value in a Popover when **Hover Text** is blank, turn on **Show field value in popover when Hover Text is blank** on the [Indicator Bundle component](../setup/add-to-lightning-page/index.md#popovers-for-every-indicator). 

#### Popovers don't show on Boolean Fields
{: .no_toc }

* If **Hover Text** or **Inverse Hover Text** is NOT added to an Indicator Item for a Boolean (Checkbox) field, and if **Show field value in popover when Hover Text is blank** is checked on the [Indicator Bundle component](../setup/add-to-lightning-page/index.md#popovers-for-every-indicator) the Popover does not display. 
* ℹ️ This is an issue to fix 🎫[#247](https://github.com/SFDO-Community/Salesforce-Indicators/issues/247){: target="_blank"}.


### Badges & Pills

#### Badge Hover Text
{: .no_toc }

* On a [Badge](../setup/add-to-lightning-page/index.md#badges), the tooltip for the Indicator name only appears if you hover directly over the icon - if there's no icon on the Badge, the Indicator name won't be shown on hover at all, which may be an issue for screen readers.
* ℹ️ Set up the Badge to have **Badge/Pill Text** displayed.

### Actions

#### Flow Modal Flicker
{: .no_toc }

* There's a brief screen flicker when displaying a [Flow](../best-practices/actions.md) in a modal.
* ℹ️ This is just a regular Salesforce thing. 

#### Actions Are Hidden When False or Blank
{: .no_toc }

- An [Action](../best-practices/actions.md) is hidden when the Indicator is in its false or blank state, unless you also turn on **Show False or Blank Action**.
* ℹ️ This is by design because it is not ideal to show a button that can't do anything. 

#### Confirm Required
{: .no_toc }

- When **Confirm Required** is on, clicking the Indicator itself does nothing. The user must click the button in the Popover.
- ℹ️ The button defaults to **Open** (URL) or **Launch** (Flow). Set **Action Button Label** to say something more specific.

### Experience Cloud

#### LWR Icon Color
{: .no_toc }

* In LWR sites, icons currently render in a fixed dark blue rather than their configured color. Icons still look good in LWR sites, just without the color you may have set.
* ℹ️ This is an issue to fix 🎫[#253](https://github.com/SFDO-Community/Salesforce-Indicators/issues/253){: target="_blank"}.


#### Icon CORS Errors
{: .no_toc }

* If you get a CORS error displaying an icon (in either standard or LWR [Experience Cloud](../components/experience-cloud.md) sites), change the icon to something uploaded to your site instead of an external URL. For example, a Logo from `https://login.salesforce.com/logos/Custom/Compass_Grey/logo.png` will error - upload the image as a Static Resource or to your site's Content Asset library and reference that instead. Setting the CSP settings to Relaxed does not resolve this.
* ℹ️ This is just a regular Salesforce thing. 

### Setup

#### Field List Disappears After a Validation Error
{: .no_toc }

* When the [One Field Mapping Required](../setup/indicator-item/index.md#validation-rules) Validation Rule fails on the first save, standard Salesforce functionality can break the Custom Metadata page and the **Field** dropdown list disappears. 
* ℹ️ This is standard Salesforce behavior in Custom Metadata Types. Change the **sObject** away and back again to make the Field list display again.

## Related Content
{: .no_toc }

See the [Release Notes](../release-notes/index.md) for known issues tied to specific past releases, many of which have been fixed. 
