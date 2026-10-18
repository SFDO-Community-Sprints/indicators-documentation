---
title: Known Issues
parent: Architecture & Technical Documentation
nav_order: 5
has_children: false
---

{% include reading-time.html %}

## Salesforce Indicators Known Issues

Throughout the site we have listed out some known issues. This page is just a summary of them all, their ℹ️status, and some very unusual edge cases we found whilst doing extensive automated testing. 

### Icons, Colors, Shapes, and Sizes

#### SLDS2 Icon Color Overrides

* Standard and Custom icons cannot have their colors overridden in SLDS2 - use a Utility Icon, or an SVG/PNG Static Resource instead. Color overrides on [Indicator Bundle](../setup/indicator-bundle.md) Card Icons are affected the same way - for now, stick with an SLDS1 Theme if you rely on color overrides. 
* ℹ️ This is [on the Salesforce Roadmap](https://ideas.salesforce.com/s/roadmap/a0V8W00000VMovLUAT/design-systems?c__roadmapItem=a0SHp00000evZ2yMAE){: target="_blank"} to be included in a future release. [Track our progress](https://github.com/SFDO-Community/Salesforce-Indicators/issues/188) on our Github Repo. 

#### Avatar Shapes
* Unfortunately in SLDS2 Themes there are no Square ("squircle") icon shapes and currently no small icons. This is a definite miss from Salesforce, but there must be some accessibility reasons for it. 
* ℹ️ Small Icons is a [requested enhancement](https://github.com/SFDO-Community/Salesforce-Indicators/issues/237) that we may be able to look at when we work on the SLDS2 color overrides. 

#### Badges and Pills Shapes and Icons
* Badges and Pills look vastly different in SLDS1 and SLDS2. This is just a strange design decision by Salesforce. 
* Icons on Badges are very small and you don't get to choose how the small icons look, so you may have to choose a different Icon when displaying Badges. 
* Icons on Badges are not vertically aligned.

#### Badges and Pills Icon Alignment
* Icons on Pills are not vertically centered on Mobile when a [Click Action](../best-practices/actions.md) is added to the Pill. 
* On desktop, Icons on Badges and Pills are not centered vertically either, and Indicators with an icon are taller than Indicators without one. 
* ℹ️ This is built into the Lightning Component itself, so it's not something we can fix. 

#### Mobile Badges and Pills
* The Mobile app only shows the SLDS1 style for Badges and Pills, regardless of your org's desktop theme. We suggest sticking with the SLDS1 look for Badges and Pills if your users are often on Mobile.
* ℹ️ Mobile Sites and Experience sites are [on the Salesforce Roadmap](https://ideas.salesforce.com/s/roadmap/a0V8W00000VMovLUAT/design-systems?c__roadmapItem=a0SHp00000eviYSMAY){: target="_blank"} - add your comment as to why you need it.  
* Good news is that in an upcoming release you can [roll out SLDS2 to groups of users](https://ideas.salesforce.com/s/roadmap/a0V8W00000VMovLUAT/design-systems?c__roadmapItem=a0SHp00000evbJ1MAI){: target="_blank"}, so you can leave mobile users on SLDS1 unless they need to move to SLDS2 for another reason. 

#### Icons on Dynamic Forms Bundles
* Icons on Bundles showing as Dynamic Forms titles do not allow color overrides. 

#### SLDS Icons
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

### Popovers

#### Hover Text Popover Overlap
* When Hover Text is entered on an Avatar Indicator, the Popover displays over the top of the standard Tooltip, rather than replacing it. This is to allow for screen readers to show the name of the Indicator Item that is displaying.

### Badges & Pills

#### Badge Hover Text
* On a [Badge](../setup/add-to-lightning-page/badges-and-pills.md), the hover text for the field name only appears if you hover directly over the icon - if there's no icon on the Badge, the field name won't be shown on hover at all, which may be an issue for screen readers.

### Flows & Actions

#### Flow Modal Flicker
* There's a brief screen flicker when displaying a [Flow](../best-practices/actions.md) in a modal.

### Experience Cloud

#### LWR Icon Color
* In LWR sites, icons currently render in a fixed dark blue rather than their configured color. Icons still look good in LWR sites, just without the color you may have set.


#### Icon CORS Errors
* If you get a CORS error displaying an icon (in either standard or LWR [Experience Cloud](../components/experience-cloud.md) sites), change the icon to something uploaded to your site instead of an external URL. For example, a Logo from `https://login.salesforce.com/logos/Custom/Compass_Grey/logo.png` will error - upload the image as a Static Resource or to your site's Content Asset library and reference that instead. Setting the CSP settings to Relaxed does not resolve this.

## Related Content

See the [Release Notes](../release-notes/index.md) for known issues tied to specific past releases, many of which have been fixed. 

