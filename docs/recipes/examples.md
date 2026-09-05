---
layout: default
title: Indicators Ideas
parent: Recipe Ideas and Examples
nav_order: 100
has_children: false
nav_exclude: false
---

## Indicator Examples

These are some examples of Indicators we've built. See [Recipes](../recipes/index.md) for more examples and steps for how to build specific Indicators. 

![image](https://user-images.githubusercontent.com/2966583/199662739-961930e1-9abe-49f8-bad2-3d0f9569685a.png)

_Hover Text shown_

### Icon Styles
![image](https://user-images.githubusercontent.com/2966583/199662784-399cc868-9b8f-4c13-a378-0d9de78e3779.png)

_Large Round Icons_

![image](https://user-images.githubusercontent.com/2966583/199662803-715179e0-9dae-47e3-b6a3-844c6af0c342.png)

_Small Square Icons (no heading)_

![image](https://user-images.githubusercontent.com/2966583/199662853-e16bcd29-5e2b-4d42-b284-296f8e935eb1.png)

_Strip - Small Round Icons, no Heading, no Title, no Icon_

### Pushing the Limits

![image](https://user-images.githubusercontent.com/2966583/199662971-e072dc12-ace3-4c83-a299-db372690a608.png)

_Long Strip_

![image](https://user-images.githubusercontent.com/2966583/199663004-764e81fa-cb97-4580-9376-bd6f652f8401.png)

_Lots of Icons_

![image](https://user-images.githubusercontent.com/2966583/199663025-9b4f5ef6-3422-4e20-8378-6e8e084d3a8f.png)

_But is this going too far?_

![image](https://user-images.githubusercontent.com/2966583/199663057-3cd44d12-9833-486a-bcba-087c48ad75cd.png)

_Funky icons to tell a story. Icons from https://icons8.com/_

![image](https://user-images.githubusercontent.com/2966583/199663142-91be06a0-0f23-4aa7-8918-baaeb5441caf.png)

_Serious business icons. Icons from https://icons8.com/_


## Recipe Ideas

* High Value Client / Donor

* Is Active

* Is Subscriber / Type of Subscriber

* On Credit Hold!

* Has Cases

* High Rating

* Is Local (eg in your State / Country, or the opposite)

* High Value Opportunity

* Opp near Close Date

* Contract due for Renewal

* SLA Level

* Is Email Subscriber

* Is Event Attendee

* Funds in (eg Donor)

* Funds out (eg Grant Recipient)

* Contact missing key information

* Should this Contact exist? (eg has no valid information)

* Anything from [this blog post](https://dandonin.com/2017/07/06/customer-account-health-indicators/)

## Common Indicators by Object

Ideas collected for four objects that come up constantly. Case and Opportunity now have worked recipes - see [Case Recipes](Case.md) and [Opportunity Recipes](Opportunity.md). Lead and Campaign are listed as ideas only; nobody's built and shared a full recipe for them yet - see [Contribute a Recipe](recipe-template.md) if you build one.

**Case**
- Priority (color icon per Low/Medium/High) - see [Case: Priority](Case.md#case-priority)
- Status as a Badge - see [Case: Status](Case.md#case-status)
- Escalated flag (soft exception) - see [Case: Escalated](Case.md#case-escalated)
- Origin (Email/Phone/Web) - see [Case: Origin](Case.md#case-origin)
- Age / SLA breach (days since CreatedDate or a Milestone due date, using a Date Range Extension)
- Has open Child Cases (a rollup of related Cases still open)

**Lead**
- Lead Status (New/Working/Qualified) as a Badge or Pill
- Lead Source, as an at-a-glance icon
- Lead Score or Rating (Hot/Warm/Cold)
- Response time exception - flag a Lead that's been New for more than N hours/days (Soft Exception, Date Range Extension)
- Is Converted (mostly useful on list views/reports rather than the Lead page itself, since a converted Lead is usually not being worked anymore)
- Next Up: "Take Control of Lead" Action for an unassigned or newly-routed Lead (see [Example 3](../setup-salesforce-indicators/indicator-bundle-item/actions.md#example-3-lead-take-control-flow) on the Actions page)

**Opportunity**
- Stage as a Pill - see [Opportunity: Stage](Opportunity.md#opportunity-stage)
- High Value Deal - see [Opportunity: High Value Deal](Opportunity.md#opportunity-high-value)
- Close Date Approaching - see [Opportunity: Close Date Approaching](Opportunity.md#opportunity-close-date-approaching)
- Stalled deal (no recent Activity) - see [Opportunity: Stalled](Opportunity.md#opportunity-stalled)
- Probability, as a Quantitative Badge/Pill
- Days in current Stage (needs a rollup or automation to capture the stage-change date first)

**Campaign**
- Campaign Status (Planned/In Progress/Completed) as a Badge
- Campaign Type, as an at-a-glance icon
- Is Active (based on Start Date/End Date, using Date Range Extensions)
- Budget vs. Actual Cost - a Soft Exception when Actual Cost exceeds Budgeted Cost
- Response Rate tier (needs a rollup of Campaign Members by status first, eg via [DLRS](https://sfdo-community-sprints.github.io/DLRS-Documentation/){:target="_blank"})
- Days until/since Start Date, for planning at-a-glance

## Other Use Cases for Indicators

* [Use Case for Indicators for Monitoring and Evaluation](https://sfdo-community-sprints.github.io/indicators-documentation/docs/recipes/Use-Case-Indicators-for-Monitoring-&-Evaluation/)
* [Use Case for Program and Case Management](https://sfdo-community-sprints.github.io/indicators-documentation/docs/recipes/Use-Case-Program-and-Case-Management/)

{: .note-title}
>Claude Notes
>
>- Title says "Indicators Ideas" but the front matter title/parent say "Recipe Ideas and Examples" - the flat bullet "Recipe Ideas" list (High Value Client, Is Active, etc.) now overlaps with the new object-organized "Common Indicators by Object" section added above it. Worth merging the two eventually so an idea only lives in one list - the flat list currently has some ideas (Is Local, SLA Level, Funds in/out) not yet folded into the by-object section.
>- The screenshot gallery ("Icon Styles," "Pushing the Limits") is genuinely useful for calibrating taste ("but is this going too far?") - this is exactly the kind of opinionated content that belongs cross-linked from a future Philosophy/guardrails page as the visual half of "don't stop looking like Salesforce."
>- The two "Other Use Cases" links point at hardcoded full URLs (including the domain) instead of relative links to the pages sitting right next to this one in the same folder - worth switching to relative links so they survive a domain or baseurl change.
