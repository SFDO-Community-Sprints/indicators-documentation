---
layout: default
title: Indicator Bundle Layout Options
parent: Add the Bundle to the Lightning Page
grand_parent: Set Up Salesforce Indicators
nav_order: 1
has_children: false
---

TODO:
* Badges
* Pills
* Length of Text
* Use Cases
* Icon Issues
    * Static Text does not work for Badges. It does work for Pills but it may not be suitable. 
* Known Issues. 
* Salesforce SLDS Issues
    * The hover of the Field Name only appears if you hover directly over the icon.
    * If there is no Icon on Badges, the Field name will not be displayed on hover, so this may be an issue for screen readers.  
    * The Badge Icons are not centered vertically on the Badge. 
    * If the Badge does not have an Icon the badge is shorter than a badge that has an Icon
    * Not all standard Salesforce Icons have a Utility Icon replacement, and if you have chosen to use Static text or an Image Icon, there will be no Icon shown on the Badge. The suggestion is to create this as a seperate Indicator Icon. 


## Use Cases
* a set of accomplishments that the record has achieved. We could look at the revenue, length of time, referrals, engagement history factors etc. to add a badge such as "Loyal Customer," "Advocator," or "Top Contributor." 

When I see pills together I really think of organization and categorization, not actions or links. I think the core difference is that we can look at multiple fields and then automatically add one of these pill labels/categories etc. So ets say that the industry is chicken, the specialty is organic, and the wait time is 5 minutes- you could have a label "fast food" that populates
