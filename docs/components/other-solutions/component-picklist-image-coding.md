---
layout: default
grand_parent: Components
parent: Other Solutions to Enhance your Salesforce Org
title: Highlighter - Picklist Image Coding Component
nav_order: 2
nav_exclude: true
has_children: false
---

## Highlighter: Picklist Image Coding Component

* **Link:** [Appexchange](https://appexchange.salesforce.com/listingDetail?listingId=a0N3A00000FKAzgUAH&tab=d){:target="_blank"}
* **Cost:** $500 USD/company/year
* **Type:** Lightning Component (Aura / LWC) / App
* **Level of Effort:** High
* **Look and Feel rating:** 0

## Summary
"Make record status clear with images on your Lightning Record Page."  
It is supposed to display images next to the picklist based on the value of the picklist. The image should change when you change the value of the field.  

Theoretically it should look like this:  
![image](https://user-images.githubusercontent.com/122496928/228659356-c70a8078-633e-433b-a76e-da8c6d502e70.png)  

What it does, it does pick up the value and changes it in the component field but the image never shows up.  The instructions how to use it is not clear. I did everything as they said: downloaded images in png and put them into folders properly named, than uploaded it as a static resource, but it just doesn’t want to work. The set up is horrible. 

I tried few different ways of filling in the “Picklist value image one coded” and each time I get either error message that field does not exist or it doesn’t show the image.

**Strengths:**
- none 
 
**Weaknesses:**
- only picklist fields
- only three values from the picklist
- only png images can be displayed (if they are displaying)
- no predefined image set – you need to build a set of your images from scratch
- it takes ages to set up
- it does not work properly

### Setup Notes

**Link to Documentation:**

- Add custom images by adding a static resource named DvPicc. 
- The resource should be a zipped folder having folders named Custom_One, Custom_Two and so on. 
- The folders should contain images named image01.png, image02.png and image03.png. 
- Then when configuring the component with image coding selector select for example "Custom One".

## Examples Done for Testing and Evaluation
- I've installed a package from AppExchange
- I've created and uploaded zipped folder with images  
![image](https://user-images.githubusercontent.com/122496928/228663734-f1d3b84c-b396-441a-a8a7-4407b515e1c0.png)  

- I've tried to configure page layout according to steps  
![image](https://user-images.githubusercontent.com/122496928/228664124-386e8844-0154-4c1f-96a3-98b9199fc708.png)  

- the result was no images showing up:  
![image](https://user-images.githubusercontent.com/122496928/228664254-b899afc4-2bac-49e8-991d-e14c853a8b91.png)  

- I tried naming the values in the field image01.png; image01, all variations of {!$Label.customLabel.Name} using different values – always the same effect – none  
![image](https://user-images.githubusercontent.com/122496928/228665657-227d7e91-90bb-43f1-9c2b-5915ae2f0ebc.png)  
![image](https://user-images.githubusercontent.com/122496928/228665712-7a404eed-9beb-477a-8328-e2af9af49ba4.png)  

- I tried to add a custom field that should display the image but it didn’t work either.

### Use

I do not know how to make it work, so I do not feel like using it at all.

**Reviewer:** Maria Śliska