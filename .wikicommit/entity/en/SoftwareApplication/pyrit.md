---
title: "PyRIT"
type: "schema:SoftwareApplication"
lang: en
tags: [red-teaming, generative-ai, ai-security-tools]
sources:
  - type: url
    url: 'https://arxiv.org/html/2501.07238'
    hash: sha256:8f1d2d2ab1bc67f9dea9ead0be580b649ae2880d70472cf998878e131708b4b8
    license: CC-BY-4.0
review_status: pending
generated_at: "2026-10-19"
generated_by: "claude-opus-5-5[1m]"
generated_with: "0.11.0"

properties:
  description: "An open-source Python framework for AI red teaming and security professionals, developed by the Microsoft AI Red Team. It provides prompt datasets, prompt converters, automated attack strategies and scorers, so that red teams can test generative AI systems at a larger scale than manual probing allows."
  applicationCategory: "AI red teaming framework"
  featureList: ["prompt datasets", "prompt converters", "automated attack strategies", "scorers for multimodal outputs"]
  author: ["Microsoft AI Red Team"]
---

PyRIT is an open-source Python framework for AI red teaming and security professionals, developed by the Microsoft AI Red Team (AIRT) and used heavily by its operators. It is described in [[ScholarlyArticle/lessons-from-red-teaming-100-generative-ai-products|Lessons From Red Teaming 100 Generative AI Products]], where the team explains that the growing number of Microsoft products needing red teaming, and the wider scope of what red teaming has to cover, made fully manual testing impractical and pushed it to scale up its operations with automation.

## What it provides

According to the team, PyRIT offers components that users combine around an adversarial objective:

- **prompt datasets**;
- **prompt converters**, such as various encodings;
- **automated attack strategies**, including TAP, PAIR and Crescendo; and
- **scorers**, including for multimodal outputs, among them LLM-based judges of other models' outputs.

The framework is flexible and extensible: if an attack technique or target is not already available, users can implement the necessary interfaces themselves.

## How it is used

PyRIT uses multimodal models both for helpful tasks, such as generating variations of a seed prompt or scoring the outputs of other models, and to automatically jailbreak a target model using uncensored versions of powerful models such as GPT-4. The team says this dual use reflects the idea that any tool can be used for good or ill, and that in both cases PyRIT benefits from advances in the state of the art. Testing at scale with it also helps red teams account for the non-deterministic nature of AI models and estimate how likely a particular failure is to occur. AIRT uses PyRIT's tools for responsible AI probing and scoring, combining manual and automated methods.

## What it does not replace

The team says PyRIT has enabled a major shift in its operations from fully manual probing to red teaming supported by automation, and has helped it find impactful vulnerabilities more quickly and cover more of the risk landscape by augmenting human judgment and creativity. It stresses, however, that tools like PyRIT should not be used with the intention of taking the human out of the loop. PyRIT's LLM-based scoring works well for simple tasks such as identifying whether a response contains hate speech or explicit sexual content, but is less reliable in specialised domains such as medicine, cybersecurity and chemical, biological, radiological and nuclear (CBRN) weapons, where the team relies on subject matter experts.
