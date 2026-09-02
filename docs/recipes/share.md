---
layout: default
title: Preview and Share Recipes
parent: Salesforce Indicators Recipes
nav_order: 1
has_children: false
---

# Sharing Indicators with Recipe Files

## What is a Recipe File?

A **Recipe** is a single file that describes an Indicator bundle (or a set of unbundled items) that you don't have in your org yet. It's a way for volunteers, evangelists, and other admins to build something useful in their own org and then share it with everyone else — without asking people to hand-build spreadsheets or CSV files themselves.

Recipes are saved as **JSON** files rather than CSV or YAML. A couple of reasons for that:

- A single JSON file is much easier to preview, share, and drop into a blog post or GitHub than four separate CSV files.
- JSON keeps people from hand-editing the file. YAML is more human-readable, but that also makes it tempting to edit by hand — and hand-edited files can have small mistakes that break the import. Recipes are meant to be *generated*, not typed out.

## Previewing a Recipe File

Before you bring someone else's Recipe into your org, you can preview it first — with nothing actually created or changed in your org yet.

1. Get the Recipe (JSON) file — from a blog post, GitHub, or wherever it was shared.
2. Load it into the preview tool.
3. You'll see exactly what the bundle would look like, even though it doesn't exist in your org at all yet.

For example, you might preview a "Lead Health" bundle that isn't in your org — it won't show up anywhere in your existing bundles or unbundled items until you decide to bring it in.

## Saving a Recipe to Your Org

Once you've previewed a Recipe and decide you want it, click **Download**. This exports the Recipe as a **bundle package of four CSV files**, the same four files Inspector Reloaded needs for import:

- Bundle
- Items
- Bundle Items
- Extensions

You don't have to take everything in the Recipe. Before exporting, you can pick and choose which pieces you actually want.

You also get to decide how the imported items connect to bundles in your org:

- **Create a new bundle** for them, or
- **Attach them to a bundle you already have**, or
- **Leave them unbundled**

### Importing the CSV files

Once you have your four CSV files, bring them into your org through **Data Import → Metadata**, importing in this order:

1. **Bundle**
2. **Items**
3. **Bundle Items**
4. **Extensions**

For each file: open it, copy the contents, paste them into the matching import screen, and run the upsert.

{: .warning-title}
>Namespace
>
>**Note for scratch/packaging orgs:** If you're working in a packaging scratch org, the exported files will include a namespace prefix that needs to be stripped before importing. Use Find & Replace (Ctrl+F) to remove the namespace prefix from each file before pasting it in. This isn't necessary outside of a packaging scratch org.


After importing the Bundle and Items files, the bundle won't show any items yet — they'll all sit in **Unbundled** until you also import the **Bundle Items** file, which is what actually links items to the bundle. Once that's imported, refresh Indicator Setup and you'll see the items appear under the bundle.

Import **Extensions** the same way (copy, paste into the Extensions import screen, upsert), then refresh again to see them show up.

## Sharing Your Own Bundle as a Recipe

The same process works in reverse. If you've built something in your org and want to share it with others:

1. From the bundle (or from unbundled items), click **Download**.
2. Choose **JSON Recipe export** instead of CSV.
3. Choose what to include — you don't have to export everything. For example, you could export just your unbundled items.
4. Click **Export** to get your Recipe file.

You can preview your own Recipe the same way anyone else would, and share the resulting JSON file however you like — blog post, GitHub, wherever.

## What's a Recipe File Made Of?

Under the hood, a Recipe includes a version marker and a type for each entry (Bundle, Item, or Extension), so the format can evolve safely if the data model changes later. Items and Extensions in the file carry the same data points as the CSV headers used for import, so the JSON and CSV formats stay in sync with each other.

## Looking Ahead

This Recipe/JSON concept is also the direction the generation skill is being updated to support — so that in addition to producing the CSV files, it can generate the Recipe JSON directly. The goal is to make sharing bundles across the community easier and to give more admins an easy way to adopt indicators someone else has already built.

There's also a longer-term idea of Recipes being passed into a future bundle builder tool, where they could be modified before being imported — but that part isn't built yet.