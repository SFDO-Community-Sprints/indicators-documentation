---
layout: default
title: The Indicator Item Extension
parent: Set Up Salesforce Indicators
nav_order: 4
has_children: false
---

{% include reading-time.html %}

{% include step-progress.html parent="Set Up Salesforce Indicators" max_steps=5 %}

## Indicator Item Extension

See [Indicator Item](indicator-item) to set up the **Indicator Item** and [Indicator Bundle Item](indicator-bundle-item) to set up the **Indicator Bundle Item** before setting up **Indicator Item Extensions**.

{% include erd-diagram.html focus="ie" %}

## Indicator Item Extension

An Indicator Item Extension allows more icons to be configured for one field that displays when the field has different values. For example, *Industry* = `Accounting` or *Industry* = `Communications`. Extensions can be based on text field values, numeric or monetary ranges, or 🆕date values with Date Literals. An Indicator can be set up to display multiple icons for all Extensions.

{: .tip-title}
>Newbie Tip
>
>If you are new to Indicators, start with the basic configurations just in **Indicator Item** on a simple field value, then expand to Extensions when you've got the hang of how Indicators work. See [Path1: New to Indicators](../guided-pathway/new-to-indicators.md) in our Guided Paths. 

## A Simple Usage example

An item for a Donor Status with a criteria of "contains" might have the following extensions:
* "Donor Status under $10k"
  * a pale green icon for total donations $0 to $9,999
* "Donor Status $10k - $50k"
  * a dark green icon for total donations $10,000 to $49,999
* "Donor Status $50k - $100k"
  * a pale yellow icon for total donations $50,000 to $99,999
* "Donor Status over $100k"
  * a dark yellow icon for total donations $100,000 or greater

## Add a new Indicator Item Extension
{% include open-indicator-setup.html new="Indicator Item Extension" %}

## Edit an existing Indicator Item

* Go to the *Indicator Settings* Tab
  * Choose the Indicator Bundle that the Indicator Item is on (or the Item will be in *Unbundled Items* if the Item is not on a Bundle yet). 
  * Click the *Edit* button next to the Extension to edit.

OR, alternatively:

* Edit the Settings in CMDT:
  * Navigate to Salesforce *Setup* > *Custom Metadata Types*
  * Scroll to *Indicator Item Extensions*, and click *Manage Records*
  * Click *Edit* next to the Extension you want to edit

## Indicator Item Extension Fields

|Field|Example Value|Description|Tip|
|----------|----------|-------------------|--------------------------|
|**Details Section**|
|Label|`High Donation Value`|Give it a descriptive name|Include the Object Name
|Indicator Item Extension Name|`High_Donation_Value`|The API name
|Active|`true`||Leave this unchecked until the Indicator is ready to be added to a Bundle
|Priority|`2`|Priority rules: If the first extension priority rule is met then further rules are ignored|Optional
|Minimum (>=)|`10000`|The minimum value required|Optional
|Maximum (<)|`1000000`|The maximum value required|Optional
|Match Operator||options are: `Contains` (Will default to Contains if the field is empty), `Does Not Equal`, `Equals`, `Starts With`, `Before Start`, `After End`, `Before End`, `After Start`|The Start and End values are for Date Ranges
|Text or Date Value||The field contains this text, or use this combined with the date Match Operators and use Date Literals|Salesforce [Date Literals](https://developer.salesforce.com/docs/atlas.en-us.soql_sosl.meta/soql_sosl/sforce_api_calls_soql_select_dateformats.htm){:target="_blank"}. See Below for date examples. 💎Don't use this field when using Min and Max values|
|**Description Section**|
|Description|`The Contact is a high value donor - in the range of $10,000 to $1M`||Write something useful here, your future self will thank you
|**Configuration Section**|
|Hover Text|`The Contact has a Donation Value of {!npe01__Lifetime_Giving_History_Amount__c}`|Text to display when the user hovers over the icon|Leaving the Hover Text blank will show the field value as the hover text
|Static Text||Text to display instead of a field value, icon, or image URL (only the first 3 characters or emojis will display)|Copy and paste Emojis here for some fun Indicators
|Image||The URL to the image of the Indicator when being used instead of Field, Text, or Icon|eg link to a Static Resource, File, or Document in your Org. The use of an Image overrides any Icon settings
|Icon Value|`custom:custom17`|The Lightning Design System icon when being used instead of Field, Text, or Image URL|If Static text is entered, the Icon color will be used, with the static text in white
|Icon Background||Override the default background of the Indicator's icon|💎SLDS1 Only
|Icon Foreground||Override the default foreground of the Indicator's icon|💎SLDS1 Only
|🆕**Badge/Pill Section**
|Badge/Pill Text| |The text to display on the Badge or Pill|Can use Merge Fields eg {!Name}|
|Badge Text Color| | The color of the text shown on a Badge|
|Badge Icon Position|`Start`| Show the badge icon at start or end|

## Custom Metadata Page Layout

![Indicator Bundle Extension Layout](../../images/setup/layout-extension.png){: width="800"}

## Validation Rules
Extensions have many 🆕Validation Rules to try to make sure that every extension can be shown. 

* **Icon syntax must match SLDS** - **Icon Value** must start with `standard:`, `custom:`, `utility:`, `doctype:`, or `action:`, followed by a colon and the icon's API name.
* **Fallback icon required with an Image** - If you enter an **Image**, also enter an **Icon Value** as a fallback in case the image source fails to load.
* **No Extensions on Checkbox fields** - A checkbox has no text or number to match, so it can't have an Extension. Use the Indicator Item's own **Show when False or Blank** (Inverse) settings instead.
* **Match Operator and Text or Date Value go together** - Set both, or set neither - a **Match Operator** with no **Text or Date Value** (or the other way round) will cause a Validation Rule to fire.
* **Date and Date/Time fields need a date value and a date operator** - On a Date or Date/Time field, **Text or Date Value** needs a date value (a relative date such as `TODAY` or `NEXT 30 DAYS`, or a fixed date as `YYYY-MM-DD`). Match Operators of `Contains` and `Starts With` are for text values only and are ignored on a date or date/time.
* **Text and Picklist fields need a Text or Date Value** - On a text field (Text, Text Area, Picklist, Multi-Select Picklist, Phone, Email, URL, and similar), **Text or Date Value** is required.
* **Numeric fields need a Minimum** - On a numeric field (Number, Currency, Percent), **Minimum** is required. An Extension with only a **Maximum** is never evaluated, so set a Minimum even if you only care about an upper limit.
* **Don't mix Minimum/Maximum with Text or Date Value** - Set either **Minimum** and/or **Maximum**, or **Match Operator** with a **Text or Date Value** - not a combination of both.

{: .new-title}
>🆕 Date Ranges
>
>A long-awaited feature: Indicator Item Extensions now support Date Ranges. Set up the Indicator Item on a Date field and use [Date Literals](https://developer.salesforce.com/docs/atlas.en-us.soql_sosl.meta/soql_sosl/sforce_api_calls_soql_select_dateformats.htm){:target="_blank"} to perform comparisons on the date value. *Eg the date is after the start of last month*.

## Text or Date Value
There are multiple ways to use **Text or Date Value**.

Text Values:
- **Contains**: (Will default to Contains if the field is empty). Eg *Title* Contains `CEO` 
- **Does Not Equal**: Eg *Title* Does Not Equal `System Administrator`
- **Equals**: Eg *Title* Equals `President`
- **Starts With**: Eg *Title* Starts with `Vice President`

Date Values:
- **Before Start**: eg *LastActivityDate* is before `LAST_N_MONTHS:2` (there has not been any activity in the past two months)
- **After End**: eg *LastActivityDate* is after  `LAST_YEAR` (There has been activity on the record this year)
- **Before End**: g *NextAppointmentDate__c* is after  `THIS_MONTH` (there is an appointment scheduled for next month or later)
- **After Start**: g *NextAppointmentDate__c* is after `TODAY` (There is a future appointment set) 

See [Salesforce Date Literals](https://developer.salesforce.com/docs/atlas.en-us.soql_sosl.meta/soql_sosl/sforce_api_calls_soql_select_dateformats.htm){:target="_blank"} for all the values to use in **Text or Date Value**.

### Date Rules

- Date Extensions compare a record's Date or Date/Time field with a relative date.
- **Equals** matches when the record's date is inside the range, and **Does Not Equal** matches when it is outside the range.
- **Before Start** matches when the date is before the range begins, and **After Start** matches when it is on or after the range's first day.
- **After End** matches when the date is after the range ends. The end day itself is **not** inside the range for this operator.
- **Before End** matches when the date is before the range's end, so it includes the whole range.
- `NEXT 30 DAYS` starts **tomorrow**, not today.
- "Today" is the date of the **user viewing the record**, in their org time zone, not the browser's clock. Two users in different time zones can see different results around midnight.
- A record with no date never matches an Extension, and shows the Indicator Item's false or blank (Inverse) state instead.

{: .issue-title}
>No Exceptions
>
>There's no checking that Date Ranges don't overlap - if two Extensions both match, the one with the higher **Priority** value wins and its icon is shown. Order the Extensions to show the most specific or most important Date Range at the highest Priority.
>
>There is no checking that you have entered the right Date Literal - the Indicator will just not show, so please test all date possibilities for the Indicator you want to show. 

## Related Content

* Create more **Indicator Item Extensions** as needed.
* Add the Bundle to your [Lightning Page](add-to-lightning-page/index.md) and check [The Key](the-key.md).
* 🧭 **[Path 2](../guided-pathway/enhance-your-indicators.md) >** [Badges and Pills](../setup/add-to-lightning-page/index.md#indicator-style)
