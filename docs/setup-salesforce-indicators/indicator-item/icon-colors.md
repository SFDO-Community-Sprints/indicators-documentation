---
layout: default
title: Icon Colors
parent: The Indicator Item
grand_parent: Set Up Salesforce Indicators
nav_order: 2
has_children: false
---

## Where do we find the Icon Colors?

* Use Color Picker tool like [Eye Dropper](https://eyedropper.org/) on [SLDS Icons](https://www.lightningdesignsystem.com/icons/) page to pick the color of the icon you want. 
* Use Chrome (or your browser of choice) dev tools to inspect the SLDS icons page and copy the hex color code from the source.
* Search through the SLDS Code for [Standard Icons](https://github.com/salesforce-ux/design-system/blob/main/design-tokens/bg-standard.yml) or [Custom Icons](https://github.com/salesforce-ux/design-system/blob/main/design-tokens/bg-custom.yml) for the name of the object you want - eg ACCOUNT = #7F8DE1.

## Getting Similar Colors

{: .tip}
>
> Unless you are an artist or a color theorist, don't attempt this yourself, get someone else to look over it too! 

* Use a tool like [Adobe Color](https://color.adobe.com/create/color-wheel) and find a shade of the color or another color that works well with your preferred icon color. 
 * Adobe Color has a color picker, so have SLDS icons or Salesforce in one screen and Adobe Color in another screen and pick the color from the Icon directly
* Paste the hex colorcode into the Chrome search bar and the Chrome color picker will be displayed.
* Use a tool like [ColorHex.com](https://www.color-hex.com/) and paste in the hex color to see shades, tints, and other color variations.
* Coolers is another tool like the above tools, but it also includes a contrast checker and an excellent pallette visualiser [Coloors.co](https://coolors.co/)
  

## Accessibility
As we know by the changes to the Salesforce colors in Summer '23 (that orange is terrible!), accessibility for different vision levels is really important, and colors are one of the big culprits of making things less accessible. So use the excellent website [whocanuse.com](https://www.whocanuse.com/) to find out if your favorite color is going to be OK for all your users. Set the font to at least 30px and bold to simulate what an icon would look like. Another option is to take a screen shot of your page, stick it in a public google doc, and run the whole page through [https://www.toptal.com/designers/colorfilter](https://www.toptal.com/designers/colorfilter).

