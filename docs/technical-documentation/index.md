---
title: Architecture & Technical Documentation
nav_order: 100
has_children: true
---

## Architecture & Technical Documentation

How Salesforce Indicators is built, and what it needs to run.

- [**Data Model**](data-model.md) &mdash; how Indicators stores its configuration in custom metadata types (Indicator Item, Item Extension, Bundle and Bundle Item), with a diagram of how they relate.
- [**Apex Classes**](apex-classes.md) &mdash; the Apex behind the app: `Build` for test data, `Cmdt` for reading custom metadata in code and tests, `IndicatorController` for the LWCs, and `IndicatorListBundleSelector` for choosing a Bundle.
- [**Lightning Web Components**](lightning-web-components.md) &mdash; the components users see, including the Indicator Bundle, Configuration Manager and Key, how they fit together, and the custom permission that controls extra access.
- [**Permissions Explained**](permissions-explained.md) &mdash; the Salesforce permissions needed to set up and view Indicators, and the Indicators Setup Access and User Access permission sets.

{: .info-title}
>IN PROGRESS
>
>We have an excellent team of developers that have worked on Indicators, but our technical documentation is lagging behind. We would love a developer with great LWC skills to run a GenAI over our code and do a PR with some more comprehensive technical documentation. 

