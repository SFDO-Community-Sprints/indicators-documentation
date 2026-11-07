---
layout: default
title: Icon Tips and Colors
summary: "Where to find icons and load them, and how to pick colors that work together and match the SLDS palette."
parent: Build Glanceable Indicators
nav_order: 10
has_children: false
---

{% include reading-time.html %}

## Icon Tips and Colors
{: .no_toc }

Getting just the right Icon is the "art" of Indicators. The possiblities are endless, and below is a list of many places to get Icons. But in this game it's not "Gotta Catch 'Em All".  

{% include toc.html %}

## SLDS Icons

Standard Icons are from the [SLDS Icons](https://v1.lightningdesignsystem.com/icons/){:target="_blank"} gallery and they are entered using the icon name. SLDS Icons can show the Icon with the image, or show some static text on top of the Icon. 

{: .tip-title}
>SDLS2 Icons
>
>We've linked to the SLDS1 Icons page above, because it's much easier to quickly find the icon you want. However there are some new Icons on the [SLDS2 Icons page](https://www.lightningdesignsystem.com/2e1ef8501/p/19e451-icons){:target="_blank"}  

[SFDC Tools Icons Search](https://sfdctools.dev/slds-icons){:target="_blank"} is useful to search for icons by the visual style, eg searching for `house` will return `custom:custom107` which is a house, but it
Just about any other icon can be used by using the _Image_ field option.

## Picking a Good Icon

* **Avoid icons already in use:** Don't use Icons that are in use in your Salesforce org elsewhere. Eg if you have Field Service installed, then don't use the `standard:service_crew` or `standard:service_crew_member` on Contact, as that will be confusing.
* **Don't be too literal:** Just pick an icon that looks good, or use a few characters instead of the Icon. Your users will get used to which icons mean what, and they have the hover text to help them know what the icon means.
* **Don't get too colorful:** You can really make a mess. But use specific brand icons or colors for different brands in your company for example.
* **Give icons meaning:** Don't group exception Indicators in together with informational Indicators. With Badges and Pills now, there are many more options to separate Indicators into different Bundles that do different things. 
* Zero Value Handling with the setting of `Treat Zeros as Blanks` works great for DLRS or NPSP Rollup fields where the field value will always be 0 or more. eg Count of Open Opportunities for an Account used in an Indicator to show that the Account has Open Opportunities.  
* ❗**Go easy on emojis:** Too many emojis is just visual clutter. If you need to add more than one emoji, google `emoji to svg converter`. find [Emojis](https://emojipedia.org){:target="_blank"} here to add some fun to your Indicators.

{: .issue-title}
> SLDS1 and SLDS2
>
> See [Known Issues](../technical-documentation/known-issues.md) for important notes about the Icon differences between SLDS1 and SLDS2.

## Icons via URL

* Salesforce [Icons](https://login.salesforce.com/icons){:target="_blank"} and [Logos](https://login.salesforce.com/logos){:target="_blank"} for more icons and logos that you can use - enter Logo URL in the Image field 
* There are a number of built-in icons, and the classic Sample Icons for Flag Green, Flag Red etc. See [this website](https://www.vermanshul.com/2017/10/quick-tips-salesforce-default-images.html){:target="_blank"} for a list of them all, or [this website](http://salesforce-stuff.blogspot.com/2012/01/salesforce-images.html){:target="_blank"}.
* Grab the URL of the Logo from your company's website and use that.
* [Graphics Pack Salesforce Labs App](https://appexchange.salesforce.com/appxListingDetail?listingId=a0N30000004cfIcEAI){:target="_blank"} however the icons don't look so great when on the SLDS colored background.

## Icon Sites

There are many third party icon sites. You can usually download these icons as PNGs or SVGs. Most of these icons, if they are allowed to be used for commercial use require Attribution, so be sure to follow their attribution guidelines, or pay for the icons you want to use. 

* [Da Button Factory](https://www.clickminded.com/button-generator/){:target="_blank"}
* [Icons8](https://icons8.com){:target="_blank"}
* [Flat Icon](https://www.flaticon.com/){:target="_blank"}
* [Icon Scout](https://iconscout.com/){:target="_blank"}
* [The Noun Project](https://thenounproject.com/){:target="_blank"}
* [Font Awesome](https://fontawesome.com/){:target="_blank"} (use SVG Downloads only)
* [Streamline](https://www.streamlinehq.com/){:target="_blank"} (use SVG or PNG Downloads only)
* [OpenMoji](https://openmoji.org/library/){:target="_blank"} (Test these work in your org though, or download as SVG).

### Using Icons via links
{: .no_toc }

When viewing an Icon in Icons8, you can click Download, and choose the Link (CDN) option. Choose 96x96 for a Large Indicators Bundle. In the "Paste this fragment into your HTML" box, just copy the URL and paste that into the Image field. This option is good because you can color the icons to the color you want. 

Da Button Factory also allows you to copy a URL.

{: .warning-title}
> External Icons
>
> Using icons directly linked from external sites, even Salesforce may break or cause slowness in your Salesforce. Use with caution! 
> If in doubt download the icon as an SVG and create it as a Static Resource or PNG as a document.
>
> See [Known Issues](../technical-documentation/known-issues.md) for other known issues about external icons. 

### SVG Downloads
{: .no_toc }

You can do SVG downloads from most icon sites. Streamline and Icons8 allows you to download SVGs with color (see attribution). 

To use and SVG file, download the SVG from the Icon site, then create a **Static Resource** In Salesforce Setup, upload the SVG file and name it YourIconSVG or similar. Then click View File and grab the URL after /resource/ eg `/resource/1668327958000/MyIconSVG` and paste that into the image field. 

{: .tip}
>
> Remember to deploy the Static Resources when deploying the CMDT from Sandbox to Prod.

### PNG Downloads
{: .no_toc }

You can use PNG Downloads similar to SVG, or use Documents (switch to Classic first), and upload the images into a new folder named Icons (or similar).

{: .note-title}
> Salesforce Files
>
> We do not recommend using Salesforce Files as it is 3 extra steps to get the URL of the icon to use. 

### Attribution
{: .no_toc }

Please check the website you get the icons from for what attribution is required. See [Flaticon](https://support.flaticon.com/s/article/Attribution-How-when-and-where-FI){:target="_blank"} [Icons8](https://icons8.com/license){:target="_blank"}, [Streamline](https://www.streamlinehq.com/license-free){:target="_blank"}, [Font Awesome](https://fontawesome.com/license/free){:target="_blank"}, and [The Noun Project](https://help.thenounproject.com/hc/en-us/sections/200137528-Icon-Credit-Requirements){:target="_blank"} attribution requirements. Eg stick a rich text on the home page of your Salesforce in small font. 

Most of these sites will not require attribution if you pay for the premium icons.

## Icon Colors

Once you've picked an icon, here's how to choose colors that work well together and match the SLDS palette.

### Where do we find the Icon Colors?
{: .no_toc }

* Use Color Picker tool like [Eye Dropper](https://eyedropper.org/){:target="_blank"} on [SLDS Icons](https://www.lightningdesignsystem.com/icons/){:target="_blank"} page to pick the color of the icon you want. 
* Use Chrome (or your browser of choice) dev tools to inspect the SLDS icons page and copy the hex color code from the source.
* Search through the SLDS Code for [Standard Icons](https://github.com/salesforce-ux/design-system/blob/main/design-tokens/bg-standard.yml){:target="_blank"} or [Custom Icons](https://github.com/salesforce-ux/design-system/blob/main/design-tokens/bg-custom.yml){:target="_blank"} for the name of the object you want - eg ACCOUNT = #7F8DE1.

### Using Color Values
{: .no_toc }

The following color values are valid:
* HTML Color Codes - eg `black`, `white`, `red`
* Hex Color Codes - eg `#FFFFFF`, `#000000`
* SLDS Styling Hook variables (💎 SLDS2 only) - eg `var(--slds-g-color-info-container-1)`, `var(--slds-g-color-neutral-base-100)`.
    * For an excellent resource of all the SLDS Styling Hooks see the [SLDS2 Documentation](https://www.lightningdesignsystem.com/2e1ef8501/p/98b493-styling-hook-index){:target="_blank"} or [SFDC Tools CSS Vars](https://sfdctools.dev/slds-styling-hooks){:target="_blank"} or [SFDC Tools SLDS Colors](https://sfdctools.dev/slds-colors){:target="_blank"}.

### Getting Similar Colors
{: .no_toc }

{: .tip}
>
> Unless you are an artist or a color theorist, don't attempt this yourself, get someone else to look over it too! 

* Use a tool like [Adobe Color](https://color.adobe.com/create/color-wheel){:target="_blank"} and find a shade of the color or another color that works well with your preferred icon color. 
 * Adobe Color has a color picker, so have SLDS icons or Salesforce in one screen and Adobe Color in another screen and pick the color from the Icon directly
* Paste the hex colorcode into the Chrome search bar and the Chrome color picker will be displayed.
* Use a tool like [ColorHex.com](https://www.color-hex.com/){:target="_blank"} and paste in the hex color to see shades, tints, and other color variations.
* Coolers is another tool like the above tools, but it also includes a contrast checker and an excellent pallette visualiser [Coloors.co](https://coolors.co/){:target="_blank"}
* Over on [Badges and Pills](badges-and-pills.md#badge-color-tips) we've given the color values for Success, Warning, and Error icons. 

### Color Accessibility
{: .no_toc }

* See [Accessibility Tips](accessibility-tips.md) for ways to understand how your Users may see the colors you choose. 

## Related Content
{: .no_toc }

* [Build Glanceable Indicators](index.md) for more tips and tricks.

