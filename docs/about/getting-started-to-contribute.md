---
parent: About Salesforce Indicators
parent: Getting Involved with Salesforce Indicators
nav_order: 3
has_children: false
---

## Getting Started to Contribute

How to get set up to work with the Salesforce Indicators repo and Salesforce Indicators app.

All contributions to this project are welcome and encouraged. 

If you are coming to a sprint, we don't want you to get discouraged because one quarter of the sprint is taken with getting set up. So it's great if you can get set up before the sprint so you can start working within the first hour. If you have any questions about any of these steps, please get in touch before the Sprint day. 

## Admin Focused Contributions

1. Get to know Salesforce Indicators by reading this Documentation Site. (check the [YouTube video](https://www.youtube.com/watch?v=kHNh1v1CdA4) also).
2. Get an org set up, preferably NPSP.
    * Install Nonprofit Success Pack (NPSP) into a [Trailhead Playground](https://trailhead.salesforce.com/content/learn/projects/install-nonprofit-success-pack-into-a-trailhead-playground).
    * Or create a Scratch Org (with Sample Data) and install NPSP using [Metadeploy](https://install.salesforce.org/products/npsp/latest/install).
3.  [Install Salesforce Indicators](https://install.salesforce.org/products/indicators/latest) in your Trailhead Playground or Scratch Org
  * This will also install the Sample Indicators.
4. Go to a Contact record, modify the Lightning Page, and see that the Indicators Component is on the Page.
5. Modify an Indicator - see the [Indicator Item](../../docs/setup-salesforce-indicators/indicator-item/index.md) help doc. 
6. At one stage during the Sprint we may ask you to download your Custom Metadata, the easiest way is to install [Salesforce Inspector](https://chrome.google.com/webstore/detail/salesforce-inspector/aodjmnfhjibkcdimpodiifdjnnncaafh) Chrome Extension.
7. Ensure you are able to log into the [Github Documentation Repo](https://github.com/SFDO-Community-Sprints/indicators-documentation) (Ask one of the team to be added the Repo first). 
8. Let the team know in the Slack Channel what you would like to work on.
9. Have Fun! 
10. Take it further: 
    * Think about any of these steps you have done (especially installing, and setting up Indicators) and make notes as to how you can improve the help docs, and go ahead and modify the documentation (once you have access and have been shown how to!).
    * For tips for others on how to get any of the rest of this set up, then please modify this document to add any hints and tips.

{: .info-title}
> Documentation Update
> 
> More details on how to modify the documentation pages via a Pull Request.


## Development Contributions
1. Let the team know, so we can do a more in-depth setup with you and ensure you are set up in Github.
2. Get to know Salesforce Indicators by reading this Documentation Site. (check the [YouTube video](https://www.youtube.com/watch?v=kHNh1v1CdA4) also).
3. Ensure you have VSCode set up. 
    * [Trailhead: Set Up Your Workspace and Install Developer Tools](https://trailhead.salesforce.com/content/learn/trails/set-up-your-workspace-and-install-developer-tools)
4. It would be handy to have Cumulus CI installed, but not 100% necessary. 
    * [Trailhead: Build Applications with CumulusCI](https://trailhead.salesforce.com/content/learn/trails/build-applications-with-cumulusci)
5. [Clone the repo](https://github.com/SFDO-Community-Sprints/Salesforce-Indicators) to your local environment. Ensure you use the ```Main``` branch
6. Create a Scratch Org.
    * [Trailhead: Build Apps Together with Package Development](https://trailhead.salesforce.com/content/learn/trails/sfdx_get_started)
7. Optionally install NPSP (not needed for development though).
    * [Trailhead: Install Nonprofit Success Pack (NPSP) into a Trailhead Playground](https://trailhead.salesforce.com/content/learn/projects/install-nonprofit-success-pack-into-a-trailhead-playground)
8. Deploy the repo into your Scratch Org.
    * Include the Samples setup and data ([Unpackaged Folder](https://github.com/SFDO-Community/Salesforce-Indicators/tree/main/unpackaged)) in your deployment.
    * Assign the Permission Set *Indicators Setup Access* to your Salesforce Administrator user - this will show the Indicators Setup Tab for your user.
9. Go to a Contact record, modify the Lightning Page, and see that the Indicators Component is on the Page.
10. Modify an Indicator (see the [Setup Video](https://github.com/SFDO-Community-Sprints/Salesforce-Indicators/wiki/Indicator-Bundle))
11. Ensure you are able to log into the [Github Documentation Repo](https://github.com/SFDO-Community-Sprints/indicators-documentation) and the [Salesforce Indicators Repo](https://github.com/SFDO-Community/Salesforce-Indicators) (Ask one of the team to be added the Repo first).  
11. Grab an issue from the Issues list and assign it to yourself. 
12. Have Fun!
13. Take it further: 
    * Think about any of these steps you have done (especially installing, and setting up Indicators) and make notes as to how you can improve the help docs, and go ahead and modify the documentation (once you have access and have been shown how to!).
    * For tips for others on how to get any of the dev environments set up, then please modify this document to add any hints and tips. 

### Hints and Tips for Devs

To test a branch in a Sandbox, developer, or scratch org, you can download directly from the repo into VSCode and deploy from there, or use this Button to deploy a specific branch to your Salesforce org. Be sure to enter `main` as the branch name or it will deploy the old "master" branch as default. 

<a href="https://githubsfdeploy.herokuapp.com/?owner=SFDO-Community-Sprints&repo=Salesforce-Indicators&ref=main">
  <img alt="Deploy to Salesforce"
       src="https://raw.githubusercontent.com/afawcett/githubsfdeploy/master/deploy.png">
</a>

* If deploying to a scratch org, remember to select the "Deploy to Sandbox" option.
* If you need to uninstall, you need to remove the component and code manually. 

