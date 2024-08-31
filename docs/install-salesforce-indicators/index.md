---
layout: default
title: Install Salesforce Indicators
nav_order: 2
has_children: false
---
# Install Salesforce Indicators

[Salesforce Indicators Appexchange Page](https://appexchange.salesforce.com/appxListingDetail?listingId=192aeb3a-1476-4028-a25c-954d48560eba){: .noicon .btn .btn-green }{:target="_blank"}

* Click **Get It Now** on the Appexchange page.
* Install the latest version of the managed package from the [Install Page](https://install.salesforce.org/products/indicators/latest){:target="_blank"}. 
* See the [Release Notes](../release-notes) for the updates included in the latest version.

## Using Metadeploy to Install

Salesforce Indicators is a managed package and has been security reviewed by Salesforce. Installation, along with many other great Salesforce.org Open Source Commons applications, is done through Salesforce.org's [MetaDeploy installer](https://github.com/SFDO-Tooling/MetaDeploy){:target="_blank"}.

* On the Metadeploy page, log into your org. You will be asked to give the Metadeploy tool access to your org. This is necessary for installation.
* Click the *Install Salesforce Indicators - View Details* button.
* You will be presented with multiple options:
    * For **Production Orgs** we recommend to not install Samples, Layouts, and Training Bundles
    * For Developer Orgs, Trial Orgs, Scratch Orgs, or Trailhead Playground Orgs, we recommend to install Samples, Layouts and Tranining Bundles

![Install Options](../images/setup/InstallPage.png){: width="590"}

* Click *Install*
* Confirm the Product Terms of Use and Licences around the use of the Open Source licence. 
* The install will begin, you can expand the Steps section to see the progress of the Install. 
* When the Installation is successful, click *View Org* to open your org. 

As with all managed packages, the installed package is visible in *Setup* > *Installed Packages*.

## Using Samples
See [Getting Started with Salesforce Indicators](../getting-started/index.md) for a guide to the Samples that are installed. 

# Post Install Steps

## Assign Permission Sets

* Assign the Permission Set *Indicators Setup Access* to your Salesforce Administrator user.
* See 📘 [Permissions Explained](../technical-documentation/permissions-explained.md) for Salesforce permissions needed, and more technical information.

![Assign Permission Set](../images/setup/AssignPermissionSet.png){: width="590"}

* Assign the Permission Set *Indicators User Access* to your Users who will be viewing the Indicators. 
* Using the App Launcher button (9 dots), search for *Indicators Setup* and open the Indicators Setup tab. 

## Set Up Indicators

![Open Indicators Setup](../images/setup/OpenIndicatorsSetup.png){: width="590"}

You are now ready to start setting up Salesforce Indicators for your org.

# Next Steps

* [Set Up Salesforce Indicators](../setup-salesforce-indicators) 
