---
source:
  type: url
  url: 'https://genai.owasp.org/llmrisk/llm042025-data-and-model-poisoning/'
  hash: sha256:b58db8a7b3ef9e45685d957125795b2ba3ce223f662e23cc1d75006b7619d4da
  license: 'CC-BY-SA-4.0'
  lang: 'en'

schema:
status: generated
last_generated_at: "2026-10-19"
extracted_tokens: 4254
generated_pages:
  - .wikicommit/entity/en/DefinedTerm/data-poisoning.md
  - .wikicommit/entity/en/DefinedTermSet/owasp-top-10-for-llm-applications.md
failed_pages: []
---


## Summary

OWASP's entry LLM04:2025 Data and Model Poisoning, from the 2025 edition of the Top 10 for LLM applications, describes data poisoning as the manipulation of pre-training, fine-tuning or embedding data to introduce vulnerabilities, backdoors or biases, calls it an integrity attack, and notes that models distributed through shared repositories can also carry malware, for example through malicious pickling, and that a poisoned backdoor can leave a model behaving normally until a trigger turns it into a "sleeper agent". It lists five common examples of the vulnerability, ten prevention and mitigation strategies (from tracking data provenance with OWASP CycloneDX or ML-BOM to monitoring training loss and red teaming), five example attack scenarios, and the related MITRE ATLAS technique AML.T0018 Backdoor ML Model and the NIST AI Risk Management Framework.

## Generation Notes

The page .wikicommit/entity/en/DefinedTerm/data-poisoning.md written in this run does not answer reader question 2 (who first proposed the term data poisoning).
