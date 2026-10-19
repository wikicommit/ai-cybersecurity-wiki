---
wikicommit:
  base: https://schema.org/DefinedTermSet
  provenance: generate-interactive
  granularity:
    - "Create a new page for a named framework, taxonomy, classification scheme or ranked list that a source treats as its subject (a top-ten list of risks, an attack matrix, a taxonomy of attacks), with its items listed on that page. One page per framework, not one per edition — the page says which edition is current and what changed between editions, as the sources state, and each edition's source is cited on the same page"
    - "An item of the set (one entry of a top-ten list, one tactic of a matrix) is a row or section of the set's page. It gets a page of its own, typed by what it is (usually schema:DefinedTerm), only when a source treats that item as its subject; where such a page exists, the set's page links to it rather than repeating it"
    - "Boundary — DefinedTermSet is for a scheme whose substance is the set of items and how they are grouped. It is not for a single term (prefer schema:DefinedTerm), for a law or other instrument issued with governmental authority (prefer schema:Legislation, even when the instrument contains a list of categories), or for the organisation that publishes the set (prefer schema:Organization, which names and links the set)"
title: ""
type: "schema:DefinedTermSet"
lang: ""
sources: []
tags: []

properties:
  description: ""
  publisher: ""
  version: ""
  datePublished: ""
  hasDefinedTerm: []
  url: ""
---

```text
READER QUESTIONS (DefinedTermSet)
Readers: practitioners, security teams and researchers who have met the framework's name or
one of its item codes and want to know what it covers and how to use it.
1. What is this framework — who publishes it, for whom, and what it sets out to classify?
2. What are its items — each one's code or name and what it means (a table when there are
   several along the same dimensions)?
3. How was it made — how the items were chosen, ordered or grouped?
4. Which edition is current, and what changed between editions?
5. How is it meant to be used — in design, testing, threat modelling or assessment?
6. How does it relate to other frameworks, taxonomies or standards it builds on or maps to?
```
