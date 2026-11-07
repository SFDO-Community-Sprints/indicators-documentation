---
layout: default
title: Field and Formula Tips
summary: "Formula field ideas for driving Indicators from your data."
parent: Build Glanceable Indicators
nav_order: 50
has_children: false
---
{% include reading-time.html %}

## Field and Formula Tips
{: .no_toc }

The Fields used to show Indicators can be multi-use - have it both show an Indicator and be visible on a Report or List View. 

{% include toc.html %}


## Formula Examples

* **Is Active:** Create a new Boolean Formula Field - eg Is Active (Is_Active__c)
`ISPICKVAL(Status__c,"Active")` 
  * OR use an Extension to show different Icons based on different Picklist Values - eg Green for Active, Red for Inactive.
* **Short status codes:** Create a new Text field that returns a 3 character (max) value based on Picklist values eg
`CASE(TEXT(Status__c),"Oh Hold","HLD","Waiting","WT!","Cancelled","X","ACT")` 
  * OR use an Extension for each Picklist value with a three character *Static Text*.
* **Is High Value Donor:** Create a Formula for Is High Value Donor (Is_High_Value_Donor__c) and use $$$ as the text or the green money bag icon.
`npo02__TotalOppAmount__c > $CustomMetadata.ReportingSettings__mdt.HighValueDonor.Amount__c` 
  * OR use an Extension to add value ranges for different levels of Donors (it will depend on if you want to store the values in Indicators CMDT or your own CMDTs).
* **Parent fields:** You can traverse to parent field relationships by entering for example `Account.IsActive__c` in the **Advanced Field** field on an Indicator Icon for a Contact. Don't enter anything in the *Field* field.
* **Rollups:** Need a count or a total from child records? Use [DLRS](https://sfdo-community-sprints.github.io/DLRS-Documentation/){:target="_blank"} to roll it up into a field on the parent record, then point your Indicator at that field.

{% include dlrs-tip.html %}

## Tips for Indicator Item Extension Numeric and Date Ranges 

### A Simple Usage example
{: .no_toc }

An item for a Donor Status with a criteria of "contains" might have the following extensions:
* "Donor Status under $10k"
  * a pale green icon for total donations $0 to $9,999
* "Donor Status $10k - $50k"
  * a dark green icon for total donations $10,000 to $49,999
* "Donor Status $50k - $100k"
  * a pale yellow icon for total donations $50,000 to $99,999
* "Donor Status over $100k"
  * a dark yellow icon for total donations $100,000 or greater

This example uses a field that returns the string "Donor Status...", which means this field can be used in List Views and Reports also. The other way to achieve this is to do Value Ranges on each extension. 

* Minimum: 0, Maximum: 9999
  * a pale green icon for total donations $0 to $9,999
* Minimum: 1000, Maximum: 49999
  * a dark green icon for total donations $10,000 to $49,999
* Minimum: 50000, Maximum: 99999
  * a pale yellow icon for total donations $50,000 to $99,999
* Minimum: 100000
  * a dark yellow icon for total donations $100,000 or greater

### Text Values
{: .no_toc }

There are multiple ways to use **Text Values**.

- **Contains**: (Will default to Contains if the field is empty). Eg *Title* Contains `CEO` 
- **Does Not Equal**: Eg *Title* Does Not Equal `System Administrator`
- **Equals**: Eg *Title* Equals `President`
- **Starts With**: Eg *Title* Starts with `Vice President`

### Date Ranges
{: .no_toc }

{: .new-title}
>🆕 Date Ranges
>
>A long-awaited feature: Indicator Item Extensions now support Date Ranges. Set up the Indicator Item on a Date field and use [Date Literals](https://developer.salesforce.com/docs/atlas.en-us.soql_sosl.meta/soql_sosl/sforce_api_calls_soql_select_dateformats.htm){:target="_blank"} to perform comparisons on the date value. *Eg the date is after the start of last month*.

Example Date Ranges:
- **Before Start**: eg *LastActivityDate* is before `LAST_N_MONTHS:2` (there has not been any activity in the past two months)
- **After End**: eg *LastActivityDate* is after  `LAST_YEAR` (There has been activity on the record this year)
- **Before End**: g *NextAppointmentDate__c* is after  `THIS_MONTH` (there is an appointment scheduled for next month or later)
- **After Start**: g *NextAppointmentDate__c* is after `TODAY` (There is a future appointment set) 

See [Salesforce Date Literals](https://developer.salesforce.com/docs/atlas.en-us.soql_sosl.meta/soql_sosl/sforce_api_calls_soql_select_dateformats.htm){:target="_blank"} for all the values to use in **Text or Date Value**.

#### Rules for Date Ranges
{: .no_toc }

- Date Extensions compare a record's Date or Date/Time field with a relative date.
- **Equals** matches when the record's date is inside the range, and **Does Not Equal** matches when it is outside the range.
- **Before Start** matches when the date is before the range begins, and **After Start** matches when it is on or after the range's first day.
- **After End** matches when the date is after the range ends. The end day itself is **not** inside the range for this operator.
- **Before End** matches when the date is before the range's end, so it includes the whole range.
- `NEXT 30 DAYS` starts **tomorrow**, not today.
- "Today" is the date of the **user viewing the record**, in their org time zone, not the browser's clock. Two users in different time zones can see different results around midnight.
- A record with no date never matches an Extension, and shows the Indicator Item's false or blank (Inverse) state instead.

{: .tip-title}
>Indicator Configuration
>
>If you create **Indicator Item Extensions** to cover all required variations, the **Indicator Item** does not need to have the Icon fields entered.
>Eg values are Hot, Warm and Cold, and there is an Extension create for each value. There is no need to enter anything in the Configuration Section of [Indicator Items](../setup/indicator-item.md). 

{: .issue-title}
>Known Issues for Date Ranges
>
>See [Known Issues](../technical-documentation/known-issues.md#date-ranges-and-numeric-values) for full details on the things to know there being no validations for Date Ranges and Date Literals. 

## Related Content
{: .no_toc }

* [Build Glanceable Indicators](index.md) for more tips and tricks.
