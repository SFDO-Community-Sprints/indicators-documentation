---
layout: default
title: Icon Tips
parent: The Indicator Item
grand_parent: Set Up Salesforce Indicators
nav_order: 1
has_children: false
---

## Icon Tips

Standard Icons are from the [SLDS Icons](https://www.lightningdesignsystem.com/icons){:target="_blank"} gallery and they are entered using the icon name. SLDS Icons can show the Icon with the image, or show some static text on top of the Icon. 

Just about any other icon can be used by using the _Image_ field option.

## Icons via URL

* Salesforce [Icons](https://login.salesforce.com/icons){:target="_blank"} and [Logos](https://login.salesforce.com/logos){:target="_blank"} for more icons and logos that you can use - enter Logo URL in the Image field 
* There are a number of built-in icons, and the classic Sample Icons for Flag Green, Flag Red etc. See [this website](https://www.vermanshul.com/2017/10/quick-tips-salesforce-default-images.html){:target="_blank"} for a list of them all, (but this website doesn't show you the images) or [this website](http://salesforce-stuff.blogspot.com/2012/01/salesforce-images.html){:target="_blank"} (fewer, but the images are visible) or [this website](https://www.xbaf.com/salesforce-icons#slds){:target="_blank"}, but many are ugly Classic style icons
* Grab the URL of the Logo from your company's website and use that
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

### Using Icons via links

When viewing an Icon in Icons8, you can click Download, and choose the Link (CDN) option. Choose 96x96 for a Large Indicators Bundle. In the "Paste this fragment into your HTML" box, just copy the URL and paste that into the Image field. This option is good because you can color the icons to the color you want. 

Da Button Factory also allows you to copy a URL.

{: .warning-title}
> External Icons
>
> Using icons directly linked from external sites, even Salesforce may break or cause slowness in your Salesforce. Use with caution! 
> If in doubt download the icon as an SVG and create it as a Static Resource or PNG as a document.

### SVG Downloads

You can do SVG downloads from most icon sites. Streamline and Icons8 allows you to download SVGs with color (see attribution). 

To use and SVG file, download the SVG from the Icon site, then create a **Static Resource** In Salesforce Setup, upload the SVG file and name it YourIconSVG or similar. Then click View File and grab the URL after /resource/ eg `/resource/1668327958000/MyIconSVG` and paste that into the image field. 

{: .tip}
>
> Remember to deploy the Static Resources when deploying the CMDT from Sandbox to Prod.


### PNG Downloads

You can use PNG Downloads similar to SVG, or use Documents (switch to Classic first), and upload the images into a new folder named Icons (or similar).

{: .info-title}
> Salesforce Files
>
> We do not recommend using Salesforce Files as it is 3 extra steps to get the URL of the icon to use. 

### Attribution

Please check the website you get the icons from for what attribution is required. See [Flaticon](https://support.flaticon.com/s/article/Attribution-How-when-and-where-FI){:target="_blank"} [Icons8](https://icons8.com/license){:target="_blank"}, [Streamline](https://www.streamlinehq.com/license-free){:target="_blank"}, [Font Awesome](https://fontawesome.com/license/free){:target="_blank"}, and [The Noun Project](https://help.thenounproject.com/hc/en-us/sections/200137528-Icon-Credit-Requirements){:target="_blank"} attribution requirements. Eg stick a rich text on the home page of your Salesforce in small font. 

Most of these sites will not require attribution if you pay for the premium icons.