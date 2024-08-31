---
title: Salesforce Indicators Developer Guide
parent: Architecture & Technical Documentation
nav_order: 1
has_children: false

---

## Data Model 
The configurations for the Indicators App are all stored in custom metadata types (CMDT) rather than inside sObjects since the number of records will be relatively small.  Also, this is because the values are best suited to be deployed from a sandbox to production after building and testing (though we anticipate no issues building in production directly).  Similarly, the ability to have this copied from production when creating/refreshing a sandbox improves the user experience.

A specific image/icon (Indicator) is configured as a `Indicator_Item__mdt` (*Indicator Item / Indicator / Item*).  It can be further extended to display a different image/icon based conditional logic stored in a child of the Indicator Item as a `Indicator_Item_Extension__mdt` (*Indicator Item Extension*).

To utilize an Indicator, it must be associated with an `Indicator_Bundle__mdt` (*Indicator Bundle / Bundle*) which is a set of Indicators to be displayed by the LWC.  To connect an Indicator to a Bundle, a record is stored in the junction object between Bundle and Item known as a ``Indicator_Bundle_Item__mdt`` (*Indicator Bundle Item / Bundle Item*).

![Salesforce Indicators Data Model](../images/setup/DataStructure.png){: width="590"}

## Apex Summary
### Build
The `Build` class is a test class used to make it easier to create test data using predefined values and methods to build objects.

Various Apex methods are used to generate random strings or numbers when sample/test data is needed but is not required to be meaningful..

Inner classes are used as object builders with methods that serve to assign values to the object properties/fields.  These are paired with a method to return the inner class.

In its simplest form, it would appear as:
```Indicator_Bundle__mdt genericBundle = Build.aBundle().build();```


Or as detailed as:
```
Indicator_Bundle__mdt specificInactiveBundle = Build.aBundle()
     .asInactive()
     .withDevname('demo_inactive_bundle')
     .withCardIcon('custom:custom10')
     .withCardText('This was an example of an inactive bundle')
     .withCardTitle('Demo Inactive')
     .withSObject('MyCustomObject__c')
     .build();
```
### Cmdt
Custom metadata types (CMDT) are retrieved via methods or maps through the `Cmdt` class.

Since custom metadata types cannot be created during tests because the metadata api or deployment is not possible and because this app will not package any custom metadata types, this approach is being taken.

Upon calling the `Cmdt` class in both the actual classes and test classes, the static method will instantiate and initialize the maps; however, when running tests, these maps are cleared of any existing CMDT values so as not to negatively impact testing.

When creating tests, using the setter methods are used to add values to the maps to mimic the data that is retrieved upon calling the `Cmdt` class.

Using the getter methods, other methods, or referencing the maps directly, running code can access CMDT values and perform correctly even when running tests.  

### IndicatorController
The `IndicatorController` class is used as a wrapper class and controller for the LWCs to display a specific Indicator using the `getIndicatorBundle( String bundleDevName )` method.

The `getNewCmdtUrls()` method is being used to return URLs for the CMDT objects in order to direct a user to the correct area of Setup. It is a temporary method until new LWCs are built to interface with the CMDT objects in order to create and edit CMDT values to eliminate the need for users to navigate through Setup to manage the CMDT values.

### IndicatorListBundleSelector
The `IndicatorListBundleSelector` is used to create a list of selectable Bundles on the property editor and it is also used to create a wrapper to display a list of selectable Bundles for one of the LWCs.

## Custom Permission
To help manage access, a custom permission was set up and is used inside of the LWCs to grant additional access to users with the Manage Indicator Key permission.

## Lightning Web Components

### Illustration
An image and inline text that work in tandem to communicate a state in a more friendly way. Use within other components, such as cards, to express the state of the component.

### Illustration Image
The image portion of the Illustration component. Expands to fill the width of its container.

### Indicator Bundle
Displays at-a-glance visual representations of status, values, and key details about a record. Utilizes the Illustration component to display more information.

### Configuration Manager
Displays a picklist of all Bundles and renders the respective Key component upon selection.

### Key
The details portion of the Indicator Bundle Key and Configuration Manager components.

### Indicator Key Row
The row portion for each Indicator Item or Indicator Item Extension within the Key component.

### Indicator Bundle Key
The modal used to display the Key component associated with the Indicator Bundle component.

### Indicator Bundle Item
The image/avatar depicting a field value used by the Indicator Bundle and the Indicator Key Row components. 

![Salesforce Indicators Configuration Manager LWC Layout](../images/technical/ConfigurationManagerLWCGuide.png){: width="590"}
![Salesforce Indicators Indciator Bundle LWC Layout](../images/technical/IndicatorBundleLWCGuide.png){: width="590"}

Created by [Tim Schug](https://github.com/tschug)

