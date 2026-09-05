---
layout: default
title: Field and Formula Tips
parent: The Indicator Item
grand_parent: Set Up Salesforce Indicators
nav_order: 3
has_children: false
---

## Tips for Fields

* Create a new Boolean Formula Field - eg Is Active (Is_Active__c)
```ISPICKVAL(Status__c,"Active")``` 
  * OR use an Extension to show different Icons based on different Picklist Values - eg Green for Active, Red for Inactive.
* Create a new Text field that returns a 3 character (max) value based on Picklist values eg
```CASE(TEXT(Status__c),"Oh Hold","HLD","Waiting","WT!","Cancelled","X","ACT")``` 
  * OR use an Extension for each Picklist value with a three character *Static Text*.
* Create a Formula for Is High Value Donor (Is_High_Value_Donor__c) and use $$$ as the text or the green money bag icon.
```npo02__TotalOppAmount__c > $CustomMetadata.ReportingSettings__mdt.HighValueDonor.Amount__c``` 
  * OR use an Extension to add value ranges for different levels of Donors (it will depend on if you want to store the values in Indicators CMDT or your own CMDTs).
* You can traverse to parent field relationships by entering for example ```Account.IsActive__c``` in the **Advanced Field** field on an Indicator Icon for a Contact. Don't enter anything in the *Field* field.

{: .note-title}
>Claude Notes
>
>- This page is a great example of the "opinionated, not just reference" voice the rest of the site is missing - each tip states a goal ("Is High Value Donor") before the formula, not just the formula. Worth treating as the template for similar tips pages elsewhere.
>- No mention yet of DLRS here even though it's referenced as a formula-field enabler on other pages (setup-salesforce-indicators/index.md, item-extension.md) - a cross-link would tie this together for someone trying to roll up a count/sum for use in a field-tip formula.
>- Short page - could absorb 1-2 more worked examples (eg a Case SLA breach formula, given the new Case recipes) before it feels complete rather than like a stub with three examples.


