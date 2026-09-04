---
layout: default
title: Indicator Actions
parent: The Indicator Bundle Item
grand_parent: Getting Started with Salesforce Indicators
nav_order: 1
has_children: false
---

An **Action** lets users click on an indicator to do something. Instead of an indicator just being something you look at, it becomes something you can interact with. Use an Indicator as an Action to:
* Open an external website
* Open another record 
* Open a Report 
* Open a [Quick Action](https://trailhead.salesforce.com/content/learn/modules/lex_customization/lex_customization_actions){:target="_blank"}
* Launch a Screen Flow 

## Use Cases
* Draw attention to important issues and allow immediate action to correct or update the record. Launching a Flow or Quick Action will also isolate the edits to just the necessary fields. 
* Consolidate important information about the record. These links might be all over the page  and require lot of scrolling or moving to related records. We can highlight those super important links (both websites or other Salesforce records) which is different then related records which are only other Salesforce records. 
* We can create something similar to the [Custom Detail Page Links](https://trailhead.salesforce.com/content/learn/modules/lex_customization/lex_customization_buttons_links){:target="_blank"} that are not yet available for **Dynamic Forms**. 
* Build an excellent solution similar to what [Michael Kolodner built](https://www.freelikeapuppy.tech/post/rollup-and-report-on-who){:target="_blank"}, which is showing numbers created by DLRS in the Indicator, with an **Action** to go to the report showing those records. 

## Where Actions Are Set Up

Actions are set up on the [Indicator Bundle Item](../indicator-bundle-item/index.md) — not on the Indicator itself. This matters because it means the same Indicator can behave differently depending on which bundle it's showing in.

For example: the same Indicator might appear in a bundle visible to the Marketing team, where its action links to a marketing-focused report. That same indicator could also appear in a bundle for the Donations team — where it might link to a different report, or have no action at all for the Donations team. Setting the action at the bundle-item level gives you that flexibility.

### To set up an action on an existing bundle:

1. Open the Indicator Key for the bundle.
2. Click **Edit Bundle**.
3. From the bundle screen, go to the **Indicator Bundle Items**.
4. Enter the action details on the item you want.

## The Action Fields

There are five fields to fill in:

| Field | What it does |
|---|---|
| **Action Type** | Choose **Flow (Modal)** or **URL**. Flow opens in a popup modal; URL (for an external site, a report, another record, or a Quick Action) opens a new browser tab or console tab for internal Salesforce links in Console Apps |
| **Action Button Label** | The text shown to the user when they hover over the Indicator. Use a verb — eg *Open Report*, *Open URL*, *Open Web Page* |
| **Action Target** | The API name of the flow, or the full URL to open. Supports **merge fields**, so you can pull in values from the record (see example below) |
| **Action Help Text** | Explanatory text shown in the ℹ️ icon when the indicator is hovered over, to help the user understand what the action does |
| **Action Confirmation Required** | Controls whether clicking the indicator itself launches the action immediately, or whether the user must hover and click the action button specifically|
| **Show Action When False or Blank** | Controls whether the Action is shown at all when the underlying field is false or blank |

### Action Confirmation Required

- **Unchecked (default):** once a user knows the indicator has an action, they can click the indicator directly to launch it.
- **Checked:** the user must hover over the indicator and click the action button itself each time. This is useful when you don't want someone to accidentally launch a flow just by clicking around the screen.

### Show Action When False or Blank

- **False (default):** if the underlying field has no value, or the value returns false, there's often no reason to show a clickable action. For example, if an account has no ticker symbol entered, there's nothing to link to — so the indicator won't be clickable.
- **True:** the action always shows, even when the field value is false or blank.

## Example 1: Account Ticker Symbol URL

This example sets up an indicator so that clicking it opens the company's stock quote on Yahoo Finance, using the account's ticker symbol.

- **Action Type:** URL
- **Action Target:** `https://finance.yahoo.com/quote/{!TickerSymbol}`
  The `{!FieldName}` syntax is the same merge field syntax used in Visualforce pages and elsewhere in Salesforce. Here it pulls in the record's Ticker Symbol field — so for Salesforce (ticker: CRM), the link opens the CRM quote page on Yahoo Finnance.
- **Action Button Label:** Open Yahoo Finance
- **Action Help Text:** Show the latest market rates for this company.
- **Action Confirmation Required:** Not checked
- **Show Action When False or Blank:** Not checked

After saving, refresh the Account record page (a full refresh is needed since an action on the Indicator changed). With a **Ticker Symbol** entered on the Account, the Indicator now shows a small click icon over the avatar — this signals the indicator is clickable, including on mobile!

### What the User Sees

- Hovering over the Indicator shows the regular hover text (unrelated to the action).
- Below that, the action button appears with the label you entered, plus an ℹ️ icon that reveals the action help text.
- The user can either:
  - Click the Indicator itself, **or**
  - Hover and click the action button (eg "Open Yahoo Finance")

Both open the target URL in a new tab.

## Example 2: Contact Board Attendance Report

This example sets up an Indicator so that clicking it opens a report that lists the Campaign Member records for Board Meeting Campaigns where the status is 'Attended'. This information is visible in the related list view for Campaigns, but a report would provide more information.

On the Indicator Bundle Item for an Indicator on Contact record that shows when the `Is_Board_Member__c` field is true.

- **Action Type:** URL
- **Action Target:** `/lightning/r/Report/00OXx00000XyzyzXXX/view?fv0={!Id}` (Only relative URL required)
  The `{!Id}` must be typed as Id not ID or id
- **Action Button Label:** Open Board Attendance Report
- **Action Help Text:** Show the list of attendances for this Board Member to Board Meetings.
- **Action Confirmation Required:** Not checked
- **Show Action When False or Blank:** Not checked

After saving, refresh the Contact record page (a full refresh is needed since an action on the Indicator changed). With the Contact set up as a Board Member, the Indicator now shows a small click icon over the avatar.

## Example 3: Lead Take Control Flow

This example sets up an Indicator so that clicking it opens a Flow Modal that displays the three fields that must be updated when a user claims a Lead as thier own.

On the Indicator Bundle Item for an Indicator on Lead record that shows when the `LeadStatus` field =_New_.

- **Action Type:** Flow Modal
- **Action Target:** `Lead_TakeContol` (The Flow API name)
- **Action Button Label:** Take Control of Lead
- **Action Help Text:** Set yourself as the Owner, Set the Status of Open, and write a comment for Chatter.
- **Action Confirmation Required:** Not checked
- **Show Action When False or Blank:** Not checked

After saving, refresh the Lead record page (a full refresh is needed since an action on the Indicator changed). With a new Lead created, the Indicator now shows a small click icon over the avatar.

❗**Things to Note:**
The Flow should update the **Lead Status** to _Open_, the **Lead Owner** to the user who opened the Flow, and then post a Chatter message about their Next Action that they enter on the Flow Screen. This flow can (and probably should) also be an Action Button on the record, but having the Indicator with the same Action keeps the user focused on the Actions they need to do right now to move the Lead along. 

## Example 4: Case Update Contact

This example sets up an Indicator so that clicking it opens a Quick Action that allows the user to quickly update the Contact Phone or Email from the Case record.

On the Indicator Bundle Item for an Indicator on Case record that shows when any details about the Contact are entered.

- **Action Type:** URL
- **Action Target:** `/lightning/action/quick/Contact.Update_Contact_Details?objectApiName=Contact&context=RECORD_DETAIL&recordId={!ContactId}` 
- **Action Button Label:** Update Contact
- **Action Help Text:** Update the Contact record related to this Case.
- **Action Confirmation Required:** checked
- **Show Action When False or Blank:** Not checked

After saving, refresh the Case record page (a full refresh is needed since an action on the Indicator changed). On the Case, if the Case has a Contact, the Indicator now shows a small click icon over the Contact avatar.

❗**Things to Note:**
* This Action can (and probably should) also be an Action Button on the record, but having the Indicator with the same Action keeps the user focused on the Actions they need to do right now to move the Case along. 
* This could also be a Flow, but why create a Flow when a simple Quick Action can do the job. 
* This can be displayed on a Contact Indicator Bundle displayed on the Case Lightning Page Layout
* There is one tip to make the Action URL on the Indicator work, that is different to creating a Detail Page Button. in a Detail Page Button the Case record Id will be {!Case.Id}, in the Indicator Bundle Item URL, just use {!Id}.
* See [The Art of URL Hacking](https://medium.com/@vishwakarmaas27/the-art-of-url-hacking-in-salesforce-part-iii-quick-actions-global-object-specific-4b8c5c43e439){:target="_blank"} or add a quick action to a button on the page, open the Quick Action and see where the URL goes to, then replace the hard coded IDs with merge fields. 


## 💡Tips
* Add some **Hover Text** on the **Indicator Item** to show when the value is entered. Hover Text is separate from the Action - it needs to be more generic than the **Action Help Text**, since it displays with or without a button being present.
* Add some **Inverse Hover Text** on the **Indicator Item** promoting users to enter a value in the field. Keep the Hover Text short, in case you want to use the [Badges or Pills](../add-to-lightning-page/badges-and-pills) layout.
* If a user edits the record in a way that changes the merge field value used in an Action (eg updating the Account Ticker), that change won't take effect until the page is refreshed.

❗**Things to Note:**
* Don't use **Show when False or Blank** on the underlying **Indicator Item** if the Action should still be usable when the field is blank - the click button will still be visible even though the Indicator itself is hidden, which can confuse users.
* There's a brief flicker when displaying a Flow modal - this is a known issue.


