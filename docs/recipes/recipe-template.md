---
layout: default
title: Recipes
parent: Recipe Template
nav_order: 100
has_children: false
nav_exclude: true
---


_This is a work in progress!_


# Bundles
_Page Heading_ Object: Name - Bundle Name eg Account: Default Indicators

## Description
> A Description of this Bundle

## Image

## Fields

| Fields | Value | Description |
|-----------|-----------|--------------------------|
|Field Name|`Value`|Notes|

## Indicator Items
1. Links to Indicator Items

## Contributed By
Name, Link

# Indicator Items
_Page Heading_ Object: Name - Indicator Name Name eg Account: Account Rating

## Description
> Details of what this Indicator Item does

## In Bundle
* [[Link To Bundle]]

## Images 

## Fields

| Fields | Value | Description |
|-----------|-----------|--------------------------|
|Field Name|`Value`|Notes|

## Extensions

| Fields | Value | Description |
|-----------|-----------|--------------------------|
|Field Name|`Value`|Notes|

## Preparation
Details of any formula fields needed for this Indicator. 

**IsActive**
```OR(ISPICKVAL(Status,"Active"),ISPICVAL(Status,"Expiring"))```

_Hint Create a DLRS Recipe or link to a DLRS recipe if using a DLRS rollup. OR just note something like ```Rollup Count of Case.ID to Contact.NumCases__c```_

## Contributed By
Name, Link





















