---
title: "ChatGPT search indirect prompt injection (2024)"
type: "schema:Event"
lang: en
tags: [prompt-injection, large-language-models]
sources:
  - type: url
    url: 'https://en.wikipedia.org/wiki/Prompt_injection'
    hash: sha256:c229191a7b2a9d15a3c7405303827c9904388e9cff8d2723b87052ea670b02da
    license: CC-BY-SA-4.0
review_status: pending
generated_at: "2026-10-18"
generated_by: "claude-opus-5-5"
generated_with: "0.11.0"

properties:
  description: "A vulnerability of OpenAI's ChatGPT search tool to indirect prompt injection, reported in December 2024, in which hidden webpage content could manipulate its responses."
  startDate: "2024-12"
---

OpenAI's ChatGPT search tool was reported in December 2024 to be vulnerable to indirect [[DefinedTerm/prompt-injection|prompt injection]] attacks, in which hidden content on a webpage could manipulate the tool's responses.

## What was found

Testing showed that invisible text on a page could override negative reviews with artificially positive assessments, potentially misleading users. Security researchers cautioned that such vulnerabilities, if left unaddressed, could facilitate misinformation or the manipulation of search results.

## Why it counts as indirect injection

In an indirect injection the prompt sits in external data — here, the webpages the search tool retrieves — rather than coming from the user, and it contains instructions the model mistakes for legitimate ones.
