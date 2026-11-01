---
title: Known Issues
nav_order: 115
has_children: false
---

TODO: THIS PAGE IS A MESS AND NEEDS LOTS OF CLEANUP

## Salesforce Indicators Known Issues
{: .no_toc }

Throughout the site we have listed out some known issues. This page is just a summary of them all, their ℹ️status (or 🎫Github Issue), and some very unusual edge cases we found whilst doing extensive automated testing. 

- TOC
{:toc}

### Icons, Colors, Shapes, and Sizes

#### SLDS2 Icon Color Overrides
{: .no_toc }

* Standard and Custom icons cannot have their colors overridden in SLDS2 - use a Utility Icon, or an SVG/PNG Static Resource instead. Color overrides on [Indicator Bundle](../setup/indicator-bundle.md) Card Icons are affected the same way - for now, stick with an SLDS1 Theme if you rely on color overrides. 
* ℹ️ This is [on the Salesforce Roadmap](https://ideas.salesforce.com/s/roadmap/a0V8W00000VMovLUAT/design-systems?c__roadmapItem=a0SHp00000evZ2yMAE){: target="_blank"} to be included in a future release. 🎫[#188](https://github.com/SFDO-Community/Salesforce-Indicators/issues/188). 

#### Set the Background, Icon Color and Text Color Together
{: .no_toc }

* If you override only one color, the others come from the theme, and the theme's defaults are not the same everywhere.
    - On SLDS1, an Avatar icon with a custom **Icon Background** but no **Icon Foreground** shows a black glyph.
    - On SLDS2 dark mode, a Badge or Pill with a light background and no **Badge/Pill Text Color** shows light text on a light background, which is hard to read. In SLDS1 and SLDS2 light mode the text is dark and readable.
* ℹ️ Whenever you choose a background, choose the foreground and text color with it. Use dark text on light backgrounds and white text on dark backgrounds, and check the result in dark mode before you ship. Also check out using [SLDS2 Styling Hook Variables](../best-practices/icon-colors/#using-color-values) that switch to better colors for light or dark themes automatically. 
* ℹ️ Since SLDS2 currently ignores color overrides, make sure the icon itself carries the meaning, rather than relying only on colors.

#### Avatar Shapes
{: .no_toc }

* Unfortunately in SLDS2 Themes there are no `square` ('squircle') icon shapes. This is a definite miss from Salesforce, but there must be some accessibility reasons for it. 🎫[#201](https://github.com/SFDO-Community/Salesforce-Indicators/issues/201){: target="_blank"}

### Badges and Pills

#### Badges and Pills Shapes and Icons
{: .no_toc }

* Badges and Pills look vastly different in SLDS1 and SLDS2. This is just a strange design decision by Salesforce. 
* Icons on Badges are very small and you don't get to choose how the small icons look, so you may have to choose a different Icon when displaying Badges. 

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

### The Key and Bundles

#### Icons on Bundles
{: .no_toc }

* The Bundle's header icon is different from an Indicator's Avatar - it *does* show your background and foreground colors on SLDS1, SLDS2, and Dark Mode. 
* Icons on Bundles showing as Dynamic Forms titles do not show as colored, nor do they allow color overrides. 

#### Icons on The Key
{: .no_toc }

- The Key always shows the **Card Icon Background** and **Card Icon Foreground** colors, even when the Bundle uses the Dynamic Forms title style.

#### Field Values shown on The Key

- When we changed the behavior of the **Hover Text** to be Popover, it meant that Field Values were no longer shown in the Tooltip when Hover Text was blank. We added a new setting **Show field value in popover when Hover Text is blank** is checked when adding the Bundle to the Lightning Record Page, which will show the Field Value when Hover Text is blank, but The Key still shows that the Field Value will show regardless. 🎫[#250](https://github.com/SFDO-Community/Salesforce-Indicators/issues/250){: target="_blank"}

---

#### SLDS Icons
{: .no_toc }

This is a list of what happens for each icon type. 

{: .tip}
>Continue using SLDS1 until the new color overrides are available, and design Badges so their Icons and Colors look consistent with each other. 

|Icon Type|Theme |Settings|Icon Issue|Icon Foreground Color|Icon Background Color|Text Color|
|-----|-----|-----------|--------|-------|--------|--------|
|SLDS Icons eg `standard:account` `custom:custom97`|SLDS1|Bundle Icon - Lightning Card|OK|✔️|✔️||
| |SLDS1|Bundle Icon - Dynamic Forms|OK|❌|❌||
| |SLDS1|Avatar|OK|✔️|✔️||
| |SLDS1|Pill|OK|✔️|✔️|✔️|
| |SLDS2|Avatar|OK|❌|❌||
| |SLDS2|Pill|OK|❌|❌|✔️|
| |SLDS1,SLDS2|Badge|OK|✔️|✔️|✔️|
|SLDS Action eg `action:record`|SLDS1|Bundle Icon - Lightning Card|Avatar too large|✔️|✔️||
| |SLDS2|Bundle Icon - Lightning Card|Avatar too large|❌|❌||
| |SLDS1,SLDS2|Bundle Icon - Dynamic Forms|Too Small, no Icon|❌|❌||
| |SLDS1|Avatar|Too large and cut off|✔️|✔️||
| |SLDS1|Pill|Too large and cut off|✔️|✔️|✔️|
| |SLDS2|Avatar|Too large and cut off|❌|❌||
| |SLDS2|Avatar|Too large and cut off|✔️|❌||
| |SLDS2|Pill|Too large and cut off|✔️|❌|✔️|
| |SLDS1,SLDS2|Badge|Larger than other Icons|✔️|✔️|✔️|
|SLDS Utility eg `utility:people`|SLDS1|Bundle Icon - Lightning Card|OK|✔️|✔️||
| |SLDS1|Bundle Icon - Dynamic Forms|OK|❌|❌||
| |SLDS1|Avatar-Base|Too large|✔️|✔️| |
| |SLDS1|Avatar-Circle|Too large and cut off|✔️|✔️||
| |SLDS1|Pill|Too large and cut off|✔️|✔️|✔️|
| |SLDS2|Avatar|Too Large and cut off|✔️|❌||
| |SLDS2|Pill|Too Large and cut off|✔️|❌|✔️|
| |SLDS1,SLDS2|Badge|Larger than other Icons|✔️|✔️|✔️|

* ℹ️ See some [example images](https://github.com/SFDO-Community/Salesforce-Indicators/issues/238) of the Utility Item issues on our Github repo. 

{: .info-title}
>In Progress
>
>It would be great to have images of all of these options. 

---

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

#### Zero Values and Static Text
{: .no_toc }

* A field value of `0` is treated as false or blank in the code, so it skips the Static Text you configured and follows the blank path instead. You will see a generic fallback icon rather than your Static Text (or a literal "0").
- ℹ️ We're still testing this behavior and will update this entry.

#### Merge Tokens on Blank Fields
{: .no_toc }

* Merge tokens such as `{!AccountNumber}` in **Hover Text** and **Badge/Pill Text** become an empty string when the field is blank, so you get `Number is []`, not the merge token. 
* ℹ️ Write your text so it still reads well when the value is missing, or don't use Merge Tokens of fields that can be blank. 

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

#### Text or Date Values Are Free Text
{: .no_toc }

* **Text or Date Value** is a free-text field, so Salesforce can't check that what you've typed is a valid date. You can save an Extension with a **Match Operator** of **Before End** and a value of `Test`, and it will not behave as a date comparison.
* ℹ️ Use a supported relative date such as `TODAY`, `YESTERDAY`, `TOMORROW`, `LAST MONTH`, `THIS MONTH`, `NEXT 30 DAYS` or `THIS YEAR`. Fiscal periods are not supported. Feature Request 🎫[#242](https://github.com/SFDO-Community/Salesforce-Indicators/issues/242){: target="_blank"}

#### Numeric Extensions Need a Minimum
{: .no_toc }

* In version 0.4, a numeric Extension is only evaluated when **Minimum** is set. An Extension with only a **Maximum** never matches, so set a Minimum even if you only care about an upper limit.

### Popovers

#### Hover Text Popover Overlap
{: .no_toc }

* When Hover Text is entered on an Avatar Indicator, the Popover displays over the top of the standard Tooltip, rather than replacing it. This is to allow for screen readers to show the name of the Indicator Item that is displaying.

#### Popovers Only Show When There's Something to Show
{: .no_toc }

* If an Indicator has no **Hover Text** and no [Action](../best-practices/actions.md), it has no Popover. Avatars still show the name of the Indicator Item as standard alt text, but not the field value.
* ℹ️ To show the field value in a Popover when **Hover Text** is blank, turn on **Show field value in popover when Hover Text is blank** on the [Indicator Bundle component](../setup/add-to-lightning-page/index.md#popovers-for-every-indicator). 

### Badges & Pills

#### Badge Hover Text
{: .no_toc }

* On a [Badge](../setup/add-to-lightning-page/index.md#badges), the hover text for the field name only appears if you hover directly over the icon - if there's no icon on the Badge, the field name won't be shown on hover at all, which may be an issue for screen readers.

### Actions

#### Flow Modal Flicker
{: .no_toc }

* There's a brief screen flicker when displaying a [Flow](../best-practices/actions.md) in a modal.

#### Actions Are Hidden When False or Blank
{: .no_toc }

- An [Action](../best-practices/actions.md) is hidden when the Indicator is in its false or blank state, unless you also turn on **Show False or Blank Action**.

#### Confirm Required
{: .no_toc }

- When **Confirm Required** is on, clicking the Indicator itself does nothing. The user must click the button in the Popover.
- ℹ️ The button defaults to **Open** (URL) or **Launch** (Flow). Set **Action Button Label** to say something more specific.

### Experience Cloud

#### LWR Icon Color
{: .no_toc }

* In LWR sites, icons currently render in a fixed dark blue rather than their configured color. Icons still look good in LWR sites, just without the color you may have set.

#### Icon CORS Errors
{: .no_toc }

* If you get a CORS error displaying an icon (in either standard or LWR [Experience Cloud](../components/experience-cloud.md) sites), change the icon to something uploaded to your site instead of an external URL. For example, a Logo from `https://login.salesforce.com/logos/Custom/Compass_Grey/logo.png` will error - upload the image as a Static Resource or to your site's Content Asset library and reference that instead. Setting the CSP settings to Relaxed does not resolve this.

### Setup

#### Field List Disappears After a Validation Error
{: .no_toc }

* When the [One Field Mapping Required](../setup/indicator-item/index.md#validation-rules) Validation Rule fails on the first save, standard Salesforce functionality can break the Custom Metadata page and the **Field** dropdown list disappears. 
* ℹ️ This is standard Salesforce behavior in Custom Metadata Types. Change the **sObject** away and back again to make the Field list display again.

## Related Content
{: .no_toc }

See the [Release Notes](../release-notes/index.md) for known issues tied to specific past releases, many of which have been fixed. 



TODO: No Hovers on Boolean Fields. 