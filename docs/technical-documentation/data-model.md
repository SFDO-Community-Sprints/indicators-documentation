---
title: Data Model
parent: Architecture & Technical Documentation
nav_order: 1
has_children: false
---

{% include reading-time.html %}

# Data Model

The configurations for the Indicators App are all stored in custom metadata types (CMDT) rather than inside sObjects since the number of records will be relatively small.  Also, this is because the values are best suited to be deployed from a sandbox to production after building and testing (though we anticipate no issues building in production directly).  Similarly, the ability to have this copied from production when creating/refreshing a sandbox improves the user experience.

A specific image/icon (Indicator) is configured as a `Indicator_Item__mdt` (*Indicator Item / Indicator / Item*).  It can be further extended to display a different image/icon based conditional logic stored in a child of the Indicator Item as a `Indicator_Item_Extension__mdt` (*Indicator Item Extension*).

To utilize an Indicator, it must be associated with an `Indicator_Bundle__mdt` (*Indicator Bundle / Bundle*) which is a set of Indicators to be displayed by the LWC.  To connect an Indicator to a Bundle, a record is stored in the junction object between Bundle and Item known as a ``Indicator_Bundle_Item__mdt`` (*Indicator Bundle Item / Bundle Item*).

{% include erd-diagram.html %}

For the code that reads this data, see [Apex Classes](apex-classes.md).

**Contributed by** [Tim Schug](https://github.com/tschug)

