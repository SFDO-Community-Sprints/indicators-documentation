---
layout: default
grand_parent: Components
parent: Other Solutions to Enhance your Salesforce Org
title: Highlighter - Dynamically highlight, rename, hide fields, conditional formatting
nav_order: 1
nav_exclude: true
has_children: false
---

## Highlighter: Dynamically highlight, rename, hide fields, conditional formatting 

* **Link:** [Appexchange](https://appexchange.salesforce.com/listingDetail?listingId=a0N30000000q4OxEAI&tab=e){:target="_blank"}
* **Cost:** Free
* **Type:** Lightning Component (Aura / LWC) / App
* **Level of Effort:** Easy
* **Look and Feel rating:** Very Good

## Summary

Highlighter for Salesforce allows you to highlight, rename or hide virtually any field on a page using conditional formatting.

**Strengths:**
- free
- easy set-up
- multiple highlight, rename or hide field functions on page layout
- easy, conditional formatting


**Weaknesses:**
- page performance drops down to average 
- when used on too many fields with really bright colours the page layout might be too flashy  
- works only on an object page layout

### Setup Notes

**Link to Documentation:**

1. After installing from AppExchange go to Setup > Installed Packages and click "configuration" next to Highligher  

![image](https://user-images.githubusercontent.com/122496928/228903907-69573dd5-68ce-4583-af41-78c2ec31f619.png)  

2. You might get IO Exception: Unauthorized endpoint - simply follow instructions on the screen:  

![image](https://user-images.githubusercontent.com/122496928/228904014-16f427ba-a342-4d8e-b166-711e551172ac.png)  

3. Start building your functions (click "new"):  

![image](https://user-images.githubusercontent.com/122496928/228906780-036f9108-02b8-4fb6-843b-05bfd134ac60.png)
![image](https://user-images.githubusercontent.com/122496928/228906831-4611305e-0959-4a2b-a740-9223ca77572a.png)
![image](https://user-images.githubusercontent.com/122496928/228906877-cad64edb-e64d-43dc-9752-6d0fa9801ef0.png)
![image](https://user-images.githubusercontent.com/122496928/228906930-1a8ef263-e513-4ff6-a1cb-4681b47ed9eb.png)
![image](https://user-images.githubusercontent.com/122496928/228907006-2deaa664-a6f9-44b2-a660-879d50632498.png)
![image](https://user-images.githubusercontent.com/122496928/228907081-8d64ddec-c796-446a-83d3-4e9bc8f29c26.png)  

4. Edit page layout and drag&drop to page layout:  
 - recordViewWithHighlights (only desktop layout)  
or  
- HighlightDetail (desktop&phone layout)  
![image](https://user-images.githubusercontent.com/122496928/228907588-558d1f2a-1855-43ee-b9ad-0391063ce620.png)


## Examples Done for Testing and Evaluation

- I've set up set of functions with different colours depending on field value for rating and annual revenue to change highlight colour
- function for red highlight Phone field when it's empty
- simply changed name from Rating to Starring  

![image](https://user-images.githubusercontent.com/122496928/228910516-d8571120-fbd7-451e-bf7f-fda24fa53947.png)  
![image](https://user-images.githubusercontent.com/122496928/228911385-8aabfca3-8c4b-44aa-86f2-9e2e1df98aaf.png)
![image](https://user-images.githubusercontent.com/122496928/228910651-a00f177a-e803-459a-a1ec-f40c225ab643.png)  
![image](https://user-images.githubusercontent.com/122496928/228912629-0bff4b32-aa0c-4f93-b070-07651a2e0b1d.png)

All works great.

## Use

In my opinion, apart from the fact that it can slightly slower your page, it's a great app and can be really useful in all kinds of orgs.  
Though, I would rather use Indicators as they are not as "shouty". They do show what is important / missing and do not impact the layout as much.
Specially that the end users will probably not be able to set up their own functions to use highlighter and will be left with functions set up by admin.
I think Indicators are much more user friendly from the "viewer/user" perspective.

**Reviewer:** Maria Śliska