---
layout: default
title: Icon Colors
parent: The Indicator Item
grand_parent: Set Up Salesforce Indicators
nav_order: 2
has_children: false
---

{: .new-title}
>NEW! Utility Icon Color Overrides in SLDS2
>
>**Icon Background** and **Icon Foreground** now override the color of Utility Icons (eg `utility:favorite`) even in SLDS2, where Standard and Custom icons can't have their colors overridden. If you need a specific color on an icon in SLDS2, either use a Utility Icon, or see [Icon Tips](icon-tips) for using an SVG or PNG Static Resource instead. See [SLDS1 and SLDS2](../add-to-lightning-page/slds2) for more on the differences between the themes.

## Where do we find the Icon Colors?

* Use Color Picker tool like [Eye Dropper](https://eyedropper.org/){:target="_blank"} on [SLDS Icons](https://www.lightningdesignsystem.com/icons/){:target="_blank"} page to pick the color of the icon you want. 
* Use Chrome (or your browser of choice) dev tools to inspect the SLDS icons page and copy the hex color code from the source.
* Search through the SLDS Code for [Standard Icons](https://github.com/salesforce-ux/design-system/blob/main/design-tokens/bg-standard.yml){:target="_blank"} or [Custom Icons](https://github.com/salesforce-ux/design-system/blob/main/design-tokens/bg-custom.yml){:target="_blank"} for the name of the object you want - eg ACCOUNT = #7F8DE1.

## Getting Similar Colors

{: .tip}
>
> Unless you are an artist or a color theorist, don't attempt this yourself, get someone else to look over it too! 

* Use a tool like [Adobe Color](https://color.adobe.com/create/color-wheel{:target="_blank"}) and find a shade of the color or another color that works well with your preferred icon color. 
 * Adobe Color has a color picker, so have SLDS icons or Salesforce in one screen and Adobe Color in another screen and pick the color from the Icon directly
* Paste the hex colorcode into the Chrome search bar and the Chrome color picker will be displayed.
* Use a tool like [ColorHex.com](https://www.color-hex.com/){:target="_blank"} and paste in the hex color to see shades, tints, and other color variations.
* Coolers is another tool like the above tools, but it also includes a contrast checker and an excellent pallette visualiser [Coloors.co](https://coolors.co/){:target="_blank"}
  

## Accessibility
As we know by the changes to the Salesforce colors in Summer '23 (that orange is terrible!), accessibility for different vision levels is really important, and colors are one of the big culprits of making things less accessible. So use the excellent website [whocanuse.com](https://www.whocanuse.com/){:target="_blank"} to find out if your favorite color is going to be OK for all your users. Set the font to at least 30px and bold to simulate what an icon would look like. Another option is to take a screen shot of your page, stick it in a public google doc, and run the whole page through [https://www.toptal.com/designers/colorfilter](https://www.toptal.com/designers/colorfilter){:target="_blank"}.

{: .note-title}
>Claude Notes
>
>- The Accessibility section here is currently the *only* accessibility guidance on the whole site, and it's scoped narrowly to color contrast. Given there's no accessibility specialist on the team, this is a good spot to add (or link to) a short, explicit statement of what the product can and can't guarantee, and that accessibility is the admin's responsibility to their own users - see docs/about/structural-improvements.md #7 for the fuller recommendation.
>- "Unless you are an artist or a color theorist, don't attempt this yourself, get someone else to look over it too!" is a great, honest line - worth reusing that exact tone if/when a dedicated color-theory section gets built out under Philosophy.
>- This page and badges-and-pills.md's "Suggested Color Scheme" table both hand out specific hex values for similar purposes (semantic color meaning) but don't cross-reference each other - worth linking them so an admin picking Extension colors here knows the Badge-safe palette already exists.


