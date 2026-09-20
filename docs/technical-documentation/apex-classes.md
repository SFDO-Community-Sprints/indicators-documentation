---
title: Apex Classes
parent: Architecture & Technical Documentation
nav_order: 2
has_children: false

---

<details open markdown="block">
  <summary>
    Page contents
  </summary>
  {: .text-delta }
- TOC
{:toc}
</details>

{% include reading-time.html %}

# Apex Classes
{: .no_toc }

The Apex behind Salesforce Indicators. For how the configuration is stored, see [Data Model](data-model.md); for the components these classes serve, see [Lightning Web Components](lightning-web-components.md).

## Build

The `Build` class is a test class used to make it easier to create test data using predefined values and methods to build objects.

Various Apex methods are used to generate random strings or numbers when sample/test data is needed but is not required to be meaningful..

Inner classes are used as object builders with methods that serve to assign values to the object properties/fields.  These are paired with a method to return the inner class.

In its simplest form, it would appear as:
```apex 
Indicator_Bundle__mdt genericBundle = Build.aBundle().build();
```

Or as detailed as:
```apex
Indicator_Bundle__mdt specificInactiveBundle = Build.aBundle()
     .asInactive()
     .withDevname('demo_inactive_bundle')
     .withCardIcon('custom:custom10')
     .withCardText('This was an example of an inactive bundle')
     .withCardTitle('Demo Inactive')
     .withSObject('MyCustomObject__c')
     .build();
```

## Cmdt

Custom metadata types (CMDT) are retrieved via methods or maps through the `Cmdt` class.

Since custom metadata types cannot be created during tests because the metadata api or deployment is not possible and because this app will not package any custom metadata types, this approach is being taken.

Upon calling the `Cmdt` class in both the actual classes and test classes, the static method will instantiate and initialize the maps; however, when running tests, these maps are cleared of any existing CMDT values so as not to negatively impact testing.

When creating tests, using the setter methods are used to add values to the maps to mimic the data that is retrieved upon calling the `Cmdt` class.

Using the getter methods, other methods, or referencing the maps directly, running code can access CMDT values and perform correctly even when running tests.  

## IndicatorController

The `IndicatorController` class is used as a wrapper class and controller for the LWCs to display a specific Indicator using the `getIndicatorBundle( String bundleDevName )` method.

The `getNewCmdtUrls()` method is being used to return URLs for the CMDT objects in order to direct a user to the correct area of Setup. It is a temporary method until new LWCs are built to interface with the CMDT objects in order to create and edit CMDT values to eliminate the need for users to navigate through Setup to manage the CMDT values.

## IndicatorListBundleSelector

The `IndicatorListBundleSelector` is used to create a list of selectable Bundles on the property editor and it is also used to create a wrapper to display a list of selectable Bundles for one of the LWCs.

**Contributed by** [Tim Schug](https://github.com/tschug)

