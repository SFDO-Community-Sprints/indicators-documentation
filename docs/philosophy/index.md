---
layout: default
title: Philosophy
nav_order: 3
has_children: false
---

# Why Indicators: The Philosophy Behind the Feature

Most Salesforce documentation tells you *how* to use a feature. This page is about *why* Indicators exists at all — the problem it's actually solving, before you build a single Indicator Item.

{: .tip-title}
>Looking for setup instructions instead?
>
>This page is about the thinking behind Indicators, not the fields and buttons. For that, see [Set Up Salesforce Indicators](../setup-salesforce-indicators/index.md). For a decision guide on which display style, category, or Action pattern fits your situation, see [Indicator Patterns](../why/index.md).

## The problem: your record page is lying to your users

Every record in Salesforce is a wall of fields. Somewhere in that wall is the one fact your user actually needs right now — but it's sitting in the same visual weight as forty other facts they don't. Nothing on the page tells them where to look first.

We know from decades of eye-tracking and usability research that people don't read screens, they scan them. Users read at most a quarter of the words on a typical page, and they decide whether something matters in a fraction of a second — long before they've read a single sentence properly. That's not laziness. It's how attention works. Your users are not failing to read the record. The record is failing to tell them what matters.

Colour and shape don't have that problem. The human visual system registers a colour, an icon, or a pattern almost instantly — before conscious, word-by-word reading even kicks in. That's the entire premise Indicators is built on: **stop asking your users to read the record. Let them see it.**

## What Indicators actually does

Salesforce Indicators is a Custom Metadata-driven Lightning Web Component. Underneath the philosophy is a simple structure:

- An **Indicator Item** defines what to display — an icon or value tied to a field.
- An **Indicator Item Extension** lets that same Item change its face depending on the data — a different icon for Hot, Warm, or Cold, for example.
- An **Indicator Bundle Item** places an Item into a Bundle and controls its order — the same Item can live in multiple Bundles.
- An **Indicator Bundle** groups Items together for one object and one purpose, and sits on the Lightning Record Page.

None of that is the point, though. The point is what it lets you *stop doing*: stop making users hunt through fields to understand a record, and start letting them see it in the first half-second on the page.

## Before you build anything: think about meaning, not fields

- Before creating your first Indicator Bundle or Indicator Item, consider the data that will drive your indicators — not the field, the *meaning* the field carries.
- Design your fields to be multi-use wherever possible. A formula field returning true/false, or a text field returning three or four short results, can drive an Indicator *and* still be useful in a report or list view. Good field design pays for itself twice.
- Ask yourself: what do I want my user to know the instant they land on this record? Not what the field says — why the field matters. Indicators isn't about surfacing a field value into the top-right corner of the page. It's about giving that value meaning.
- Creating Indicators is an art, not a science. You know your org better than we do — that's why Indicators is built to be flexible. Start simply. Let it grow as your users start asking for more.

## What "at-a-glance" actually solves

For your users, at-a-glance means walking onto a record already knowing which persona to bring to it — which playbook applies, before they've read a single field. Colour and icon do that grounding work instantly, the way a uniform tells you someone's role before they say a word.

For you as the Admin, it means the record can answer three questions before anyone opens it: **What is this record worth to the organisation? What does it need? What should happen next?** That's the value Indicators is built to deliver — not decoration, orientation.

## Five ways this shows up in practice

**1. Grounding the user in the right persona.**
An Account with four different brands and six different contract types looks identical on the page layout — same fields, same labels — until an Indicator shows the brand and contract type as colour at a glance. The user doesn't read their way into the right mindset for that Account. They see it.

**2. Flagging what must never be missed.**
A *Do Not Contact* or *Do Not Call* Indicator on a Contact turns a compliance risk that lives quietly in a checkbox into something that's impossible to miss. This is the clearest case for Indicators: some facts are too important to depend on someone reading the whole page.

**3. Showing where someone sits in a relationship over time.**
A *Donation Recency* or *Membership Status* Indicator turns a date field into an instant read on lifecycle: lapsing, active, at risk. The Admin doesn't have to remember what "142 days since last gift" means. The Indicator has already done that thinking for them.

**4. Answering "why does this record matter?" before anyone asks.**
An *Organisation Giving Level* Indicator on an Account answers the value question immediately — this is a leadership-level funder, treat the record accordingly. That's the "what is this record worth to the organisation" question, solved in the corner of the page instead of a report someone has to go run.

**5. Signalling that a different process applies here.**
An *Account Type*, *Industry*, or *Is Government* Indicator tells a user, before they touch a field, that this record plays by different rules — different approval paths, different language, different expectations. It's a heads-up, not a data point.

**6. Making preferences impossible to override by accident.**
A *Communication Preferences* Indicator shows a Contact's preferred channel and any restrictions at a glance, so a well-meaning user doesn't have to open Edit mode and read three fields before deciding whether to pick up the phone.

## A boundary worth keeping

Everything above is a reason to add an Indicator. It's just as important to know when to stop. Salesforce Indicators is completely open-ended — any icon, any colour, any text, any Action — which means it's entirely possible to build something that no longer looks or feels like Salesforce at all. Sticking close to the SLDS colour palette, keeping Actions to the handful of cases where they genuinely replace something Salesforce can't already do well, and asking "does this still orient the user, or is it just decoration now?" are what keep a page's worth of Indicators reading as **one considered system**, not a pile of unrelated icons that happened to get added over time.

## The short version

Indicators isn't about making the record page prettier. It's an admission that nobody reads the whole record, and a decision to stop pretending they will. Give your users the two or three things they truly need to know, make those things visible before they're readable, and let everything else stay exactly where it belongs — in the fields, for when someone actually needs to dig in.
