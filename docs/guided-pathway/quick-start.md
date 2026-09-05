---
layout: default
title: "Quick Start: Your First Bundle"
parent: Find Your Path
nav_order: 5
has_children: false
---

## Quick Start: Your First Bundle

A deliberately short version of [Set Up Salesforce Indicators](../setup-salesforce-indicators/index.md), for the first Bundle you ever build. It skips almost every option - go back to the full setup pages once this works and you want to know what else is possible.

1. **Install**, if you haven't already - see [Install Salesforce Indicators](../install-salesforce-indicators/index.md). Say yes to Samples and Training Bundles.
2. **Assign permission sets** - *Indicators Setup Access* to yourself, *Indicators User Access* to anyone who should see the result.
3. **Open the Indicators Setup tab**, and use the *New* button to create one **Indicator Bundle** - give it a Label, an sObject (eg `Contact`), and a Card Icon. Leave everything else blank for now.
4. **Add the Bundle to a Lightning Record Page** for that object. It'll show up empty - that's expected, it just confirms you're on the right page.
5. **Create one Indicator Item** - pick a field that's usually filled in (eg a phone number field), give it a Label, and leave the icon fields blank so it uses the default. Check **Active**.
6. **Create one Indicator Bundle Item** linking that Item to that Bundle.
7. **Refresh the record page.** You should see one icon.

That's a complete, working Indicator. From here:

* Add a second and third Item the same way, to see a Bundle with more than one icon.
* Go to [The Key](../setup-salesforce-indicators/the-key.md) on the record page and click through it - it's the fastest way to understand how a Bundle's setup maps to what's on screen.
* When you're ready for conditional icons (different colors for different values), move on to [Indicator Item Extensions](../setup-salesforce-indicators/item-extension.md).

{: .info-title}
>In Progress
>
>Needs screenshots at each step - this is exactly the kind of page the Preview/Recipe tooling could shortcut in the future, by letting someone download a working one-Item recipe instead of typing these seven steps by hand.
