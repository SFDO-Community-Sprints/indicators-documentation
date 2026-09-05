---
layout: default
title: SUGGESTED Structural Improvements
parent: About Salesforce Indicators
nav_order: 10
has_children: false
nav_exclude: false
---

## Structural Improvements

An internal working document, written by Claude after a full read-through of this site, in response to a request to think about instructional design and structure rather than individual page content.

## 1. Two different kinds of help doc are currently mixed together

Almost every existing page answers *"what does this field do"* - which is necessary, but it's only one of two jobs a help site like this needs to do:

| Kind | Question it answers | Example on this site today |
|---|---|---|
| **Reference** (Salesforce Help style) | What does this field/button do, and what's the result? | [Indicator Item Fields](../setup-salesforce-indicators/indicator-item/index.md) table |
| **Opinionated / instructional** (Trailhead style) | Given my goal, what should I actually do, and what should I avoid? | [Why Salesforce Indicators](../why/index.md) - "Rule of thumb: Avatar for single-click..." |

Right now the second kind exists almost nowhere outside the *Why* page and scattered "💡 Design Tips" boxes. That's the gap the [Find Your Path](../guided-pathway/index.md) hub and the two guided paths try to start filling, but it's a pattern worth applying deliberately, not just in those new pages: every reference page could carry a short, clearly-labeled "When to use this" note distinct from its field table, the way [Add the Bundle to the Lightning Page](../setup-salesforce-indicators/add-to-lightning-page/index.md) already separates "Setup Tips" from "Design Tips" in its callouts.

## 2. Trailhead-style structure: what actually exists, and what doesn't

Two direct questions were asked: is there a Trailhead on how to build a Trail, and is there a Trailhead on instructional design. Short answer to both: **no dedicated public module for either.** What does exist:

* Trailhead's own content model is public knowledge even without a "meta" module: **trail → module → unit**, each unit short (10-15 minutes), ending in a knowledge check or a hands-on challenge in a Trailhead Playground. That three-level structure, applied to this site, maps roughly to **path → guided-path page → individual doc page** - which is what the new [Find Your Path](../guided-pathway/index.md) hub tries to be a first pass at.
* [Trailhead Basics: Get Started with Trailhead](https://trailhead.salesforce.com/content/learn/modules/trailhead_basics/get-started-with-trailhead){:target="_blank"} explains the learner-facing side of trails/modules/units, but not how to author one.
* **myTrailhead** is Salesforce's product for building your own branded Trailhead-style content, but it's a separate paid product, not a public "how to write a trail" guide.
* There's no equivalent of a general "instructional design 101" Trailhead module. The closest public content is Trailhead's own **Explore Learning Paths & Salesforce Skills** framing (content organized by role, level, and goal) - which is exactly the pattern Tim's three (now four) audience split is already doing.

Practical takeaway: there's no off-the-shelf template to copy. The useful instructional-design principles to borrow, without needing a course on it, are:

* **State the goal before the steps.** Several pages already do this ("An Indicator Item is setup to display an individual icon...") - keep that pattern everywhere.
* **Checkpoint after each stage** - "you should now see X" - so a reader can tell they're on track before moving on. The new [Quick Start](../guided-pathway/quick-start.md) page does this at the end; it's worth doing after *each* numbered step, not just at the end.
* **Separate "how" from "why you'd want to."** This is the Reference vs. Opinionated split from section 1.
* **One trail, one persona, one outcome.** Trailhead trails don't try to serve two audiences in one flow - which is exactly why Path 1/2/3(/4) need to stay as separate pages rather than one page with branches.

Sources: [The Design of Trailhead](https://medium.com/illumination/trailhead-the-making-of-a-learning-platform-1753a964ebcc){:target="_blank"}, [Trailhead best practices and FAQ](https://help.salesforce.com/s/articleView?id=000388013&language=en_US&type=1){:target="_blank"}, [Explore Learning Paths & Salesforce Skills](https://trailhead.salesforce.com/content/learn/modules/trailhead_basics/get-started-with-trailhead){:target="_blank"}.

## 3. Yes, Just the Docs supports content reuse via Jekyll includes

Direct answer to the question raised during this review: **yes**, and this site already leans on the mechanism in one place (`{% raw %}{% include recipe-list.html %}{% endraw %}`, `_includes/recipe-card.html`, `_includes/recipe-image.html`).

Two Liquid tags are available:

* **`{% raw %}{% include filename.html %}{% endraw %}`** - pulls in a file from `_includes/`, from anywhere on the site, with optional parameters (`{% raw %}{% include foo.html param="value" %}{% endraw %}`, read inside the include as `include.param`). This is the one to use for reuse *across* different sections of the site.
* **`{% raw %}{% include_relative path/to/file.md %}{% endraw %}`** - resolves relative to the *including* file's own folder, and can't reach outside it with `../`. More useful for splitting one long page into files that live alongside it than for sharing content between distant pages.

As a working proof of concept from this review, the near-identical "Go to the Indicators Setup tab → Open the Setup Menu → click New" block that was duplicated across the Indicator Item, Indicator Bundle, Indicator Bundle Item, and Indicator Item Extension pages has been extracted into `_includes/open-indicator-setup.html` and is now included with `{% raw %}{% include open-indicator-setup.html new="Indicator Item" %}{% endraw %}` (etc.) on all four pages. One thing to know: **image paths inside an include must be site-root-relative** (written through the `relative_url` filter, as `recipe-image.html` already does), not page-relative `../../images/...` - a page-relative path baked into a shared include will be wrong on some of the pages that include it, since they don't all sit at the same folder depth.

What this unlocks, worth doing deliberately rather than page-by-page:

* Small, repeated **callout boxes** (eg the "Stuck? Use a Sample Bundle" tip, or a standard "Field-Level Security applies" warning) are good include candidates - they're currently either copy-pasted with slight drift, or only appear on one of the several pages that could use them.
* Whole **paragraphs of philosophy or narrative prose** are a worse fit for includes - they read better maintained in one place and *linked to* (as the Guided Pathway pages do) than transplanted verbatim into a second page, since an included paragraph loses the surrounding context that made it make sense.
* This is the mechanism to use once a page needs to say "this works the same as it does over there" instead of re-explaining it - which will come up constantly once the philosophy/opinionated content below has a real home.

## 4. The philosophy content is fragmented, and part of it doesn't exist here yet

Four things were named during this review as "the philosophy section," and only some of them could be found in this repository:

1. **The "Why Salesforce Indicators" section on the home page** ([index.md](../../index.md#why-salesforce-indicators)) - three short bullet points (Information at a Glance, Enhanced Decision-Making, Consistent Approach). Found.
2. **The `docs/why/index.md` page** - despite the name, this page is *not* philosophy prose; it's a structured reference table of the six-plus reasons to use an Indicator (Informational, Soft Exceptions, etc.), plus the Avatar/Badge/Pill and Actions decision guidance. Found - and it's actually the strongest opinionated content on the whole site; it's just filed under a name ("Why") that undersells what it is.
3. **A "Philosophy" page that used to exist and was folded into the home page.** The `TODO.md` checklist in the repo root confirms this: *"Why page - move content from home. Also add other Philosophy section from Claude and then rationalise it."* Found the TODO reference; did **not** find the actual retired page content anywhere in this repo, its git history, or its branches - it most likely exists only in an external doc, chat, or the old GitHub wiki mentioned on the home page.
4. **"Another section of philosophy"** that was meant to be supplied to Claude for input into a page structure. Not found anywhere in this repo - this is content only Jodie has, and it needs to be pasted in before any restructuring of it can happen.

**Recommendation:** don't try to write the missing philosophy content from scratch - guessing at someone else's retired prose would likely produce something that doesn't match the original voice. Instead:

* Rename/reposition `docs/why/index.md` to be explicit about what it already is: the opinionated "how to think about this" page, distinct from setup reference. It may deserve promotion to its own top-level nav item split from "Why," e.g. **Philosophy** for the reasoning (this page) vs. a leaner **Why Salesforce Indicators** kept on the home page as the pitch.
* Create one landing page (`docs/why/index.md` could become that, or a new `docs/philosophy/index.md`) that explicitly gathers: the home page's three bullets, this page's six-reasons table, and a placeholder section clearly marked for the two missing pieces, so that when Jodie supplies them there's a single obvious slot rather than another round of "which of the four philosophy things is this."
* Color theory and "where to find icons" (currently [Icon Tips](../../setup-salesforce-indicators/indicator-item/icon-tips.md) and [Icon Colors](../../setup-salesforce-indicators/indicator-item/icon-colors.md)) were named as belonging to this same "art, not science" territory. They currently live under the Indicator Item reference tree, which is reasonable for discoverability, but a short cross-link from the future Philosophy page ("the art side of this: icons and color") would tie the two together without moving the content.

## 5. Recipes need opinionated "best practice" content, not just individual indicators

The recipe cookbook (`_recipes/*.md`, browsed via `docs/recipes/*.md`) is strong on **individual indicators** but thin on:

* **Bundle-level composition advice** - which indicators belong together, and why. The one hint that exists today is a single "Bundle" tip box in the recipe template asking contributors to *"suggest which other indicators to group this one with"* - that's a per-recipe nudge, not a standalone best-practices page.
* **Badges vs. Pills in practice** - the design guidance exists ([Indicator Bundle Layout Options](../../setup-salesforce-indicators/add-to-lightning-page/badges-and-pills.md)), but no recipe currently demonstrates it end-to-end.
* **A stated position on Actions.** Given the concern raised about Actions being powerful enough to duplicate (badly) things Salesforce already does natively, the recipes for Actions should model the two specific, endorsed use cases discussed in this review - replacing a Custom Detail Page Link that Dynamic Forms can't show, and a single contextual "next step" - rather than open-ended examples that invite scope creep. `actions.md` already includes several worked examples; what's missing is a short, explicit "here's what we recommend you use this for, and here's where it starts working against you" framing at the top of that page, ahead of the examples.

**Recommendation:** a new page - `docs/recipes/best-practices.md` or similar - covering: how to decide what belongs in one Bundle vs. several, when a Bundle should be Avatar/Badge/Pill, and the "don't let this stop looking like Salesforce" guardrail from section 6. Individual recipes then link *up* to it instead of repeating the reasoning per-recipe.

## 6. The "still looks like Salesforce" guardrail deserves to be explicit, not implied

Scattered through several pages already: *"don't use too many colors,"* *"don't get too colorful,"* *"stick with the SLDS color palette."* These are all the same underlying principle - Indicators is unrestricted enough that a org can build something that no longer reads as Salesforce at all - stated independently on each page rather than once, clearly, as a named principle other guidance can then reference. This belongs in the Philosophy home from section 4, with the Actions guardrail from section 5 as its most concrete example.

## 7. Accessibility: name the responsibility, don't try to own the expertise

Confirmed during this review: there's no accessibility specialist on the team, and the honest position is that Indicators can be built accessibly or not depending entirely on how an org configures it - the product doesn't and can't force good choices (color contrast, meaningful hover/alt text, not relying on color alone). That's a reasonable position to state directly rather than avoid. A short, explicitly-labeled **Accessibility** section (candidate location: alongside or inside the Philosophy page from section 4) saying exactly that - this is a shared responsibility, here's what we can control (hover text as a non-color-dependent fallback, the `whocanuse.com` contrast-check tip already on the [Icon Colors](../../setup-salesforce-indicators/indicator-item/icon-colors.md) page) and here's what's on you as the admin - is more useful to a reader than the current pattern of a stray accessibility mention on one or two setup pages. If an accessibility designer is ever recruited to the volunteer team (see [How to Volunteer](../how-to-volunteer.md)), this is the page they'd expand.

## 8. The new-UI transition needs a seam, not a rewrite

The concern raised: a future point-and-click Bundle builder will create Bundle + Items + Extensions together in one flow, whereas the CMDT-based docs currently teach them as four separate, sequential objects (Bundle → Item → Bundle Item → Extension). That's a real mismatch, not just a wording issue - a future "build it in the new UI" doc genuinely can't be a section-by-section swap-in for the current setup docs.

**Recommendation, so this is less painful when it happens:** keep the *reference* pages (what each field does) separate from the *procedural* pages (click this, then this). The reference tables barely change when the UI changes - a field is still a field. It's the step-by-step "Add a new X" procedures (several of which are now the shared `open-indicator-setup.html` include from section 3) that will need to be swapped wholesale for a new-UI equivalent. Structuring new content with that seam in mind now - so a future doc can replace "Add a new Indicator Item" without also having to rewrite the "Indicator Item Fields" table two sections below it - is the cheapest thing to do today against a rewrite that's still "a while away."

## 9. Scope note on this review

This document and the accompanying per-page `<!-- -->` comment blocks cover the core guide pages (Home, Why, Install, Getting Started, Set Up Salesforce Indicators and its sub-pages, Components, Technical Documentation, FAQs, Release Notes, About and its sub-pages) plus the recipe *system* pages (Recipes index, Find a Recipe, Contribute a Recipe, Preview and Share, Indicators Ideas). It does **not** include line-by-line review of the ~80 individual recipe files (`_recipes/*.md` and the legacy `docs/recipes/account/*.md` / `docs/recipes/contact/*.md` pages) - those are example content rather than structural documentation, and reviewing each one individually wasn't a good use of a structural pass. The one recipe-system issue worth flagging here: `docs/recipes/index.md` currently links to Account and Contact recipes two different ways - the new card-based browse pages (`Account.md`, `Contact.md`) *and* a manual bullet list pointing at the older individual full-page recipes (`docs/recipes/account/*.md`) that predate the card system. Those old pages look increasingly like the duplicate system Structural Improvement #3 warns against, and are a candidate for retiring once every recipe on them has an equivalent card in `_recipes/`.

**Contributed By**: Claude
{: .contributed-by }