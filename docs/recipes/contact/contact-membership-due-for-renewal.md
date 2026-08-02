---
layout: default
title: Contact - Membership Due for Renewal
parent: Contact Recipes
grand_parent: Recipes
has_children: false
nav_exclude: true
---

# Description

This indicator will show a coloured icon when a membership is either due for renewal or is soon to be due for renewal. It will be required to create a custom field indicating whether the membership renewal threshold has been met based on the business rules. For example, whether the member should be contacted after their membership has ended, two weeks, or two months beforehand.

***

# Fields


| Fields | Value |
|-----------|-----------|
sObject | Contact
Field | Membership expired
Active | TRUE
Description | Indicates to contact for membership renewal
Empty   Static Text Behavior | Use   Icon Only
Show   False or Blank | FALSE
Hover Text | Email the member for membership renewal
Icon Value | standard:email
Icon Background | Green
Icon Foreground | White
Show When False or Blank | TRUE
Inverse Hover Text | Membership is active
Inverse Icon Value | standard:email
Inverse Icon Background | Blue
Inverse Icon Foreground | White

