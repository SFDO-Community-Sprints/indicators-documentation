---
layout: default
grand_parent: Components
parent: Other Solutions to Enhance your Salesforce Org
title: Highlighter - Record Highlighter
nav_order: 3
nav_exclude: true
has_children: false
---


## Highlighter: Record Highlighter

* **Link:** [Appexchange](https://appexchange.salesforce.com/listingDetail?listingId=a0N3u00000QslCeEAJ&tab=d){:target="_blank"}
* **Cost:** $7.99 USD/company/month
* **Type:** Lightning Component (Aura / LWC) / App
* **Level of Effort:** Easy
* **Look and Feel rating:** Good

## Summary

The app allows to highlight certain records based on dynamic criteria that you define. My general opinion is that half of the app is great while the other part is useless. The list view highlighter works fine and it can be used in various situations giving lots of help while the record page background changer is crushing up, so I would not recomennd using it. 

**Strengths:**
- easy set-up (but read instructions first)
- multiple highlights on list view
- easy, conditional formatting
- can be defined by end-user individually
- predefined, light colours

**Weaknesses:**
- record page does not refresh with colours properly (rather randomly) so I would not use it. It stays in the previous colour even if you change the value of the field defined. Also the background colour stays with you in other tabs/records for which it was not defined till the time you refresh the browser. It might be confusing and not convenient 
- when used on too many fields the page layout might be too flashy plus the formulas might get conflicted: eg. if you set up rule for annual revenue and for rating with different colours only one will be used even if both conditions are met - so watch out when setting up rules  


### Setup Notes

**Link to Documentation:**  

1. Documentation is on AppExchange under Resources & Documentation  
2. After installing package follow instructions:  

- add item "BackgroundChangerUtilityBar" into app manager  
![image](https://user-images.githubusercontent.com/122496928/228957913-fb479896-9ca7-4ccb-8e25-a7bf4345a4cc.png)  

- add Background tab to utility bar in the app  
![image](https://user-images.githubusercontent.com/122496928/228958963-a88aa1b6-f479-49db-90ec-bf7ba7bae73f.png)  

- if you really want to (but I do not recommend it) add Background Changer to page layout  
![image](https://user-images.githubusercontent.com/122496928/228958610-695c8799-2fd4-43f6-8386-24c627fe417a.png)

- start creating rules  
![image](https://user-images.githubusercontent.com/122496928/228959346-a882b8dc-6e6d-4526-911f-4cf6cb8864c3.png)  
![image](https://user-images.githubusercontent.com/122496928/228959450-09467a2a-0b40-45df-aa80-eba90ec7f797.png)  
![image](https://user-images.githubusercontent.com/122496928/228959535-29e326b8-4175-4a36-9c16-52418df10d88.png)  
![image](https://user-images.githubusercontent.com/122496928/228959592-6b3e0f3c-c73e-4575-9d43-611f9b4dbaa7.png)  
![image](https://user-images.githubusercontent.com/122496928/228959976-296723e9-a4c1-4f79-a35f-ab85b281caa3.png)  
![image](https://user-images.githubusercontent.com/122496928/228960420-31f8be4b-9e21-4c25-8a6d-49c223ce59b4.png)


## Examples Done for Testing and Evaluation
I've set up rules for different input values in fields Rating and Annual Revenue in Leads and it all works great. I figured out that the most of the app you get on view list while using rules for only one field or rules that do not have a conflict with each other.

## Use
For list view highlights use it's really OK.

**Reviewer:** Maria Śliska