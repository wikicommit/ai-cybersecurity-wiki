---
source:
  type: url
  url: 'https://genai.owasp.org/llmrisk/llm062025-excessive-agency/'
  hash: sha256:ec80549842c29f482927f09f5b8cc58884028bb7d8ff475834dc6e835bde03b7
  license: 'CC-BY-SA-4.0'
  lang: 'en'

schema:
status: generated
last_generated_at: "2026-10-19"
extracted_tokens: 5013
generated_pages:
  - .wikicommit/entity/en/DefinedTerm/excessive-agency.md
  - .wikicommit/entity/en/DefinedTermSet/owasp-top-10-for-llm-applications.md
failed_pages: []
---


## Summary

OWASP's entry LLM06:2025 Excessive Agency, from the 2025 edition of the Top 10 for LLM applications, describes the vulnerability that enables damaging actions to be performed in response to unexpected, ambiguous or manipulated outputs from an LLM-based system that has been granted agency through extensions such as tools, skills or plugins, whatever causes the model to malfunction, and traces its root cause to excessive functionality, excessive permissions or excessive autonomy. It gives six common examples across those three causes, eight prevention strategies (from minimising extensions and their permissions to human approval of high-impact actions and complete mediation in downstream systems) plus two damage-limiting measures, and an example attack scenario in which an indirect prompt injection in an incoming email makes a mailbox-summarising assistant forward sensitive information to an attacker.

## Generation Notes

The page .wikicommit/entity/en/DefinedTerm/excessive-agency.md written in this run does not answer reader question 2 (who proposed the term and where it comes from).
