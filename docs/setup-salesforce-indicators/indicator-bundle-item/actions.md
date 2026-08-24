---
layout: default
title: Indicator Actions
parent: The Indicator Bundle Item
grand_parent: Getting Started with Salesforce Indicators
nav_order: 1
has_children: false
---

Indicators can be clickable - use an Indicator as an Action to:
* Open an external website
* Open another record
* Open a Report
* Open a Quick Action
* Launch a Screen Flow

## Use Cases
* Draw attention to important issues and allow immediate action to correct or update the record. Launching a Flow or Quick Action will also isolate the edits to just the necessary fields. 
* Consolidate important information about the record. These links might be all over the page  and require lot of scrolling or moving to related records. We can highlight those super important links (both websites or other Salesforce records) which is different then related records which are only other Salesforce records. 
* We can create something similar to the [Custom Detail Page Links](https://trailhead.salesforce.com/content/learn/modules/lex_customization/lex_customization_buttons_links){:target="_blank"} that are not yet available for **Dynamic Forms**. 
* Build an excellent solution similar to what [Michael Kolodner built](https://www.freelikeapuppy.tech/post/rollup-and-report-on-who){:target="_blank"}, which is showing numbers created by DLRS in the Indicator, with an **Action** to go to the report showing those records. 


## Tips
* Add some **Hover Text** on the **Indicator Item** to the Show when the value is entered. Hover text can have [Merge Fields](TODO)!
* Add some hover text on the **Inverse Hover Text** on the  **Indicator Item** promoting users to enter a value in the field. Keep the hover text short, in case you want to use the [Badges](TODO) or [Pills](TODO) layout. 


# TODO
* Fields
* Merge Fields - URL only. With Examples
* Combination with Hover Text and Merge Fields
* Why are they on the IBI?
* DO not create long text on Hover with Badges
