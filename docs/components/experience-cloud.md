---
layout: default
parent: Components
title: Experience Cloud Components
nav_order: 3
has_children: false
---


## Using the Indicator Bundle in Experience Cloud

The Experience Cloud version of the Indicator Bundle works the same way as the [Indicator Bundle](../setup-salesforce-indicators/indicator-bundle) on a standard Lightning Record Page, and it uses the same Custom Metadata setup.

### Setup

* The Bundle can only be used on a Record Page in Experience Cloud (not other page types).
* Drag the Indicator Bundle component onto your Experience Cloud Record Page.
* Enter `{!recordId}` in the **Record Id** property so the component knows which record to display Indicators for.
* Choose your Bundle and the other display options the same way as on a [Lightning Page](../setup-salesforce-indicators/add-to-lightning-page).

{: .info-title}
>In Progress
>
>We don't yet have Badges and Pills [Indicator Style](../setup-salesforce-indicators/add-to-lightning-page/badges-and-pills) options available for Experience Cloud, please give us feedback on the beta of Avatars and we will use that feedback in building the new options.

### Conditional Visibility

* Component-level [Conditional Visibility](https://help.salesforce.com/s/articleView?id=sf.lightning_page_components_visibility.htm&type=5){:target="_blank"} is only available in LWR (Lightning Web Runtime) sites, not Aura sites.

{: .warning-title}
>Test Thoroughly Before Going Live
>
>Please test thoroughly so that Indicators do not show anything to an external user that they shouldn't see. Remember that [Field-Level Security](../technical-documentation/permissions-explained) still applies - external users only see Indicators for fields they have read access to - but you should still double-check what each Indicator and its Hover Text reveals to an external audience.

### Known Issues

* **CORS errors on some icons:** If you get a CORS error displaying an icon (in either standard or LWR sites), change the icon to something uploaded to your site instead of an external URL. For example, a Logo from `https://login.salesforce.com/logos/Custom/Compass_Grey/logo.png` will error - upload the image as a Static Resource or to your site's Content Asset library and reference that instead. Setting the CSP settings to Relaxed does not resolve this.
* **LWR icon color:** In LWR sites, icons currently render in a fixed dark blue rather than their configured color. Icons still look good in LWR sites, just without the color you may have set.

## Next Steps

* Set up your [Indicator Bundle](../setup-salesforce-indicators/indicator-bundle), [Indicator Items](../setup-salesforce-indicators/indicator-item), and [Indicator Bundle Items](../setup-salesforce-indicators/indicator-bundle-item) if you haven't already.
* See [Permissions Explained](../technical-documentation/permissions-explained) to confirm what external users can and can't see.

{: .note-title}
>Claude Notes
>
>- The "Test Thoroughly Before Going Live" warning here (external users seeing Hover Text/field values they shouldn't) is a genuinely important, easy-to-miss risk - at minimum cross-linking it from the Indicator Bundle page's "Next Steps" would put it in front of admins who might add the Bundle to Experience Cloud without reading this page first.
>- Both Known Issues here are icon/CORS related - worth cross-linking to icon-tips.md's "External Icons" warning, since it's the same root cause (externally-hosted assets) showing up in two different contexts.

