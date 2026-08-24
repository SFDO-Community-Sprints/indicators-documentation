---
parent: About Salesforce Indicators
title: Geting Ready to Contribute
nav_order: 3
has_children: false
---

## Get Ready to Contribute

How to get set up to work with the Salesforce Indicators repo and Salesforce Indicators app.

All contributions to this project are welcome and encouraged. 

If you are coming to a sprint, we don't want you to get discouraged because one quarter of the sprint is taken with getting set up. So it's great if you can get set up before the sprint so you can start working within the first hour. If you have any questions about any of these steps, please get in touch before the Sprint day. 

## Admin Focused Contributions

1. Get to know Salesforce Indicators by reading this Documentation Site. (check the [YouTube video](https://www.youtube.com/watch?v=kHNh1v1CdA4){:target="_blank"} also).
1. Get an org set up, preferably NPSP.
    * Install Nonprofit Success Pack (NPSP) into a [Trailhead Playground](https://trailhead.salesforce.com/content/learn/projects/install-nonprofit-success-pack-into-a-trailhead-playground){:target="_blank"}.
    * Or create a Scratch Org (with Sample Data) and install NPSP using [Metadeploy](https://install.salesforce.org/products/npsp/latest/install){:target="_blank"}.
1.  [Install Salesforce Indicators](https://install.salesforce.org/products/indicators/latest) in your Trailhead Playground or Scratch Org
  * This will also install the Sample Indicators.
1. Go to a Contact record, modify the Lightning Page, and see that the Indicators Component is on the Page.
1. Modify an Indicator - see the [Indicator Item](../../docs/setup-salesforce-indicators/indicator-item/index.md) help doc. 
1. At one stage during the Sprint we may ask you to download your Custom Metadata, the easiest way is to install [Salesforce Inspector](https://chrome.google.com/webstore/detail/salesforce-inspector/aodjmnfhjibkcdimpodiifdjnnncaafh){:target="_blank"} Chrome Extension.
1. Ensure you are able to log into the [Github Documentation Repo](https://github.com/SFDO-Community-Sprints/indicators-documentation){:target="_blank"} (Ask one of the team to be added the Repo first). 
1. Let the team know in the Slack Channel what you would like to work on.
1. Have Fun! 
1. Take it further: 
    * Think about any of these steps you have done (especially installing, and setting up Indicators) and make notes as to how you can improve the help docs, and go ahead and modify the documentation (once you have access and have been shown how to!).
    * For tips for others on how to get any of the rest of this set up, then please modify this document to add any hints and tips.

{: .info-title}
> Documentation Update
> 
> More details on how to modify the documentation pages via a Pull Request.


## Development Contributions
1. Let the team know, so we can do a more in-depth setup with you and ensure you are set up in Github.
1. Get to know Salesforce Indicators by reading this Documentation Site. (check the [YouTube video](https://www.youtube.com/watch?v=kHNh1v1CdA4){:target="_blank"} also).
1. Ensure you have VSCode set up. 
    * [Trailhead: Set Up Your Workspace and Install Developer Tools](https://trailhead.salesforce.com/content/learn/trails/set-up-your-workspace-and-install-developer-tools){:target="_blank"}
1. Ensure you have a good knowledge of [Cumulus CI for Scratch Orgs](https://cumulusci.readthedocs.io/en/stable/scratch-orgs.html){:target="_blank"} before asking to work on development of Indicators. 
    * [Trailhead: Build Applications with CumulusCI](https://trailhead.salesforce.com/content/learn/trails/build-applications-with-cumulusci){:target="_blank"}
1. [Clone the repo](https://github.com/SFDO-Community-Sprints/Salesforce-Indicators) to your local environment. Ensure you use the ```Main``` branch
1. Create a Scratch Org.
    * [Trailhead: Build Apps Together with Package Development](https://trailhead.salesforce.com/content/learn/trails/sfdx_get_started){:target="_blank"}
1. Optionally install NPSP (not needed for development though).
    * [Trailhead: Install Nonprofit Success Pack (NPSP) into a Trailhead Playground](https://trailhead.salesforce.com/content/learn/projects/install-nonprofit-success-pack-into-a-trailhead-playground){:target="_blank"}
1. Deploy the repo into your Scratch Org.
    * Include the Samples setup and data ([Unpackaged Folder](https://github.com/SFDO-Community/Salesforce-Indicators/tree/main/unpackaged){:target="_blank"}) in your deployment.
    * Assign the Permission Set *Indicators Setup Access* to your Salesforce Administrator user - this will show the Indicators Setup Tab for your user.
1. Go to a Contact record, modify the Lightning Page, and see that the Indicators Component is on the Page.
1. Modify an Indicator (see the [Setup Video](../setup-salesforce-indicators/indicator-item/index.md)) 
1. Grab an issue from the Issues list and assign it to yourself. 
1. Have Fun!
1. Take it further: 
    * Think about any of these steps you have done (especially installing, and setting up Indicators) and make notes as to how you can improve the help docs, and go ahead and modify the documentation (once you have access and have been shown how to!).
    * For tips for others on how to get any of the dev environments set up, then please modify this document to add any hints and tips. 

{: .info-title}
> Documentation Update
> 
> More details on creating Scratch Orgs with Github Actions.