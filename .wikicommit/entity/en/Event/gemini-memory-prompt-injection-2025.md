---
title: "Gemini long-term memory prompt injection (2025)"
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
  description: "A February 2025 report by Ars Technica of indirect prompt injection attacks on Google's Gemini AI that manipulated its long-term memory, demonstrated by security researcher Johann Rehberger."
  startDate: "2025-02"
---

In February 2025, *Ars Technica* reported vulnerabilities in Google's Gemini AI to indirect [[DefinedTerm/prompt-injection|prompt injection]] attacks that manipulated its long-term memory. Security researcher Johann Rehberger demonstrated how hidden instructions in documents could be stored and later triggered by user interactions.

## How the attack worked

The exploit relied on delayed tool invocation: the injected prompts were stored and the AI acted on them only after a later user interaction activated them.

## Assessments

| Party | What it said |
| --- | --- |
| Google | Rated the risk as low, citing the need for user interaction and the system's notifications when memory is updated |
| Researchers | Cautioned that manipulated memory could result in misinformation or influence the AI's responses in unintended ways |
