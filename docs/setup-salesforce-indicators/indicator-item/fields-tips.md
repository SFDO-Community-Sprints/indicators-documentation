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

