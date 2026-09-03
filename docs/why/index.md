---
title: Why Salesforce Indicators
nav_order: 10
has_children: false
---

# Why Use Salesforce Indicators

Indicators give users an at-a-glance read on a record - the things they'd otherwise have to scan through all the fields on the page, scroll related lists, or run reports to find out. Here are the main reasons to use Indicators.

## The Reasons

| Category | What it does |
|---|---|
| **Informational** | Indicators surface key facts about a record at a glance, so users don't have to open fields or related lists just to know what's true right now. |
| **Soft Exceptions** | Indicators quietly flag records that deserve a second look, not urgent enough for a hard validation rule, but worth noticing before you act. |
| **Next Up** | Indicators point to what should happen next on a record, guiding users toward the right action without them having to remember a process. |
| **Quantitative** | Indicators turn a number or a date, a count, a total, a threshold, or how long ago something happened, into something you register in an instant rather than something you have to calculate. |
| **Qualitative** | Indicators translate a status or condition into an immediate visual read, so users sense the state of a record before they consciously think about it. |
| **Multiple** | A single field can render as a whole set of icons at once, like every product an Account has ever bought, so the full picture shows up in one glance. |
| **Actions** | Indicators aren't visual, they can put the next step (a button, a link, a task) right where the user already noticed something needed doing. |

## Choosing a Display Style: Avatar, Badge, or Pill

Avatar is the default display component. Use Badge or Pill when it makes sense for that bundle.

| Component | Best for | Why |
|---|---|---|
| **Avatar** (default) | Icons and colors that mean something to your users | A simple, compact way to show an icon or value without implying a status |
| **Badge** | Soft validation states — success, info, warning | Badge is built to carry a validation-style message at a glance |
| **Pill** | Anywhere you need the icon *and* the text together | Useful when the icon alone isn't enough to identify what's being shown |

## Adding Actions: Which Component Makes Sense?

Actions can be attached to an Avatar, a Badge, or a Pill. Which one to use depends on what the action is doing:

**Avatar + Action**
Best when the indicator itself doubles as the trigger — the icon alone communicates enough that a label isn't needed, and clicking it should just "go." Good for compact, single-purpose actions where the context is already obvious (for example, clicking a phone icon to launch a call).

**Badge + Action**
Best when the action resolves the state the Badge is flagging. Since a Badge already carries a validation-style message, pairing it with an action turns "here's a problem" into "here's the fix" (for example, a "No recent activity" Badge with an attached action to log a call or schedule a follow-up).

**Pill + Action**
Best when the action needs to be about one specific, named item. Since a Pill already shows an icon and text together, adding an action lets a user act on that exact thing rather than something generic (for example, a "Contract Expiring" Pill with an attached "Renew" action).

**Rule of thumb:** Avatar for single-click, self-evident actions. Badge for resolving a flagged exception. Pill for acting on a specific named item.

## Examples on an Account Record

**Informational**
Show the Account's Industry and Type fields as icons on the record page, so reps immediately know what kind of business they're looking at without opening the detail panel.

**Soft Exceptions**
Use a formula field checking whether Last Activity Date is more than 60 days ago, and show a warning indicator reading "No recent activity" — not a blocker, just a nudge that the Account may be going cold.

**Next Up**
Use a formula field (or a rollup) based on the Stage of the most recent related Opportunity to show "Next Step: Schedule renewal call" as a static text indicator, so the rep knows what to do without digging into the Opportunity.

**Quantitative**
Use a rollup counting Open Opportunities related to the Account, displayed as "3 Open Deals" — an instant read on pipeline volume without running a report.

**Qualitative**
Use the Account's Rating field (Hot/Warm/Cold) mapped to a colored indicator so the temperature of the relationship registers before anyone reads a word.

**Multiple**
Use a rollup that concatenates all distinct Product Family values from related Opportunity Line Items, and display each as its own icon, so an Account that's bought Software, Hardware, and Support shows three icons in a row, giving the full purchase history at a glance.

**Actions**
For an Account flagged as "Contract Expiring within 30 Days" (using a date literal like NEXT_N_DAYS:30 against a Contract End Date field), show an action button reading "Renew Contract" that launches a flow or navigates to a new Opportunity.