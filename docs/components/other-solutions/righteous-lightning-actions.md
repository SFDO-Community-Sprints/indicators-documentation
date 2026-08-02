---
layout: default
grand_parent: Components
parent: Other Solutions to Enhance your Salesforce Org
title: Righteous Lightning Actions
nav_order: 5
nav_exclude: true
has_children: false
---

## Righteous Lightning Actions

* **Link:** [Appexchange](https://appexchange.salesforce.com/appxListingDetail?listingId=a0N3A00000FMpajUAD&tab=d){:target="_blank"}
* **Cost:** Free
* **Type:** Lightning App with Aura Components
* **Level of Effort:** High
* **Look and Feel rating:** Good

## Summary

This is a pretty amazing app. It can do so much. Built by Mihir Gohel from Germany. 
It's main feature is to replace Buttons on the page with nice looking customizable buttons, that have colored icons, hover text, and can navigate to Records, Flows, and externally to Salesforce. 

But then it adds to that with highly customizable messages that can be displayed on the page... The Messages are similar to our Indicators. 

**Strengths:**
- Free
- Highly configurable
- You can even use the configuration and code your own UI
- Action buttons AND messages
- Excellent language translation options
- Can use on App Home Pages, and Record Pages
- Nice looking documentation 
- The complex Labels functionality looks overly complex, but it needs to be to allow for the amazing features of merge fields in the labels!
- Being able to have conditions that reference other fields is amazing = eg show the Action or Message when Payment Amount < Amount

**Weaknesses:**
- High learning curve
- Documentation missing a few things
- Can only use on core CRM Objects and User so that is very very limiting
- The focus on Translations makes it unnecessarily hard to set it up simply at first
- Lots and lots of setup required to get a simple scenario set up 
- It's not set up as CMDT (I can see why, but it means it's more difficult to deploy, and they will not be in your developer sandboxes)
- There is no field validation so it's easy to type the wrong field in and not know about it except your message or Action does not display

**Weird Things and Missteps:**
- When you just set up Messages, there are a few fields visible that only relate to Actions. 
- No tooltip on Messages other than the tooltip for the Severity Icon
- Why have severity icon as a required field?
- The green font is weird, and it doesn't look like Salesforce, and I may want red font for exceptions!
- I would like an Icon on the Message Group
- The panel the messages are in looks weird and not like Salesforce (It's the shadows). I would like some other options for how to display the messages
- It's weird to crate a Page Message as "Lightning Action"
- The documentation for the Apex Validation is not easy to follow
- There is no documentation for how to navigate to a Component
- Field Validations need a simple Is Null or Blank option
- There needs to be a way to hide the page messages if all the messages are hidden (or create a message saying everything looks good)
- It needs a "deep clone" option to clone the field and conditions


### Setup Notes

**Link to Documentation:** https://appexchange.salesforce.com/partners/servlet/servlet.FileDownload?file=00P4V00000wFztmUAC

1. Follow the documentation carefully
1. Then play with a use case that you want to achieve
1. Add the Objects you will use with Actions and Messages to the Righteous Lightning Actions App so you don't have to go back and forth
1. Set up one icon or message, make sure it looks and behaves like you want, then clone from there.
1. Have the Fields for the Object you are working on open in a separate tab so you can copy the field names 

**Gotchas and things to note:**
- Remember to add a Label Name and Label Value - or the Label won't display
- I thought wow, it would be good if the icons colored for the severity - eg I can use standard:email but with a severity of warning and it colors it orange... but it does that! Just use the utility icons instead! 

## Examples Done for Testing and Evaluation

![2023-06-14_21-32-03](https://github.com/SFDO-Community-Sprints/Salesforce-Indicators/assets/2966583/66baa17c-eccc-47b7-9734-e9f2890b8a33)

* The set up allows for the message to be displayed for no phone number if Home Phone OR Mobile Phone is not entered. As soon as one is entered, then the message disappears
* There is a success message displaying once all data is entered. This is good, but it does take a lot of setup to re-create all the conditions as the opposite

## Use

Look I really love this app, despite it's complexity. I would really love a combination of this app and our app for our Exceptions component. I love the way you can have formatting and links in messages. I think the UI could be tweaked a bit or made a bit more configurable (except that just makes the configuration even more challenging). I know our app is complex to set up to, but in both apps the complexity in setting this up with no code, is overshadowed by how much benefit this app (and our app) can bring to your users.

**Reviewer:** Jodie Miners