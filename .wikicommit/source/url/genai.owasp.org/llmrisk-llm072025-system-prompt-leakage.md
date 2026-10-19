---
source:
  type: url
  url: 'https://genai.owasp.org/llmrisk/llm072025-system-prompt-leakage/'
  hash: sha256:bcc665f235bd2bc4d1366e2e621084d65331c9b64e186ea3475885a7843ab1d1
  license: 'CC-BY-SA-4.0'
  lang: 'en'

schema:
status: generated
last_generated_at: "2026-10-19"
extracted_tokens: 3776
generated_pages:
  - .wikicommit/entity/en/DefinedTerm/system-prompt-leakage.md
  - .wikicommit/entity/en/DefinedTermSet/owasp-top-10-for-llm-applications.md
failed_pages: []
---


## Summary

OWASP's entry LLM07:2025 System Prompt Leakage, from the 2025 edition of the Top 10 for LLM applications, describes the risk that the system prompts or instructions used to steer a model contain sensitive information that was not meant to be discovered, and stresses that the system prompt should be treated neither as a secret nor as a security control: the real risk lies in the underlying elements, such as sensitive data stored in the prompt or authorisation delegated to the LLM. It gives four common examples (exposure of sensitive functionality, internal rules, filtering criteria, and permissions and user roles), four prevention strategies centred on keeping sensitive data out of system prompts and enforcing guardrails and security controls outside the LLM, two example attack scenarios, and the related MITRE ATLAS technique AML.T0051.000.

## Generation Notes

The page .wikicommit/entity/en/DefinedTerm/system-prompt-leakage.md written in this run does not answer reader question 2 (who proposed the term and where it comes from).
