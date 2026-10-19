---
title: "OWASP Top 10 for LLM Applications"
type: "schema:DefinedTermSet"
lang: en
aliases: ["OWASP Top 10 for Large Language Model Applications"]
tags: [ai-security, large-language-models, application-security]
sources:
  - type: url
    url: 'https://owasp.github.io/www-project-top-10-for-large-language-model-applications/assets/PDF/OWASP-Top-10-for-LLMs-2023-v1_1.pdf'
    hash: sha256:92cca25ec39d1565bc045171be6c1289167e0f91017bc7d2a9f71d16de9b8542
    license: CC-BY-SA-4.0
  - type: url
    url: 'https://genai.owasp.org/llmrisk/llm01-prompt-injection/'
    hash: sha256:93f90a5f53b13a4fbdaac9b0b8cb62257f813d905947d6f15928e7bd9a723306
    license: CC-BY-SA-4.0
  - type: url
    url: 'https://genai.owasp.org/llmrisk/llm022025-sensitive-information-disclosure/'
    hash: sha256:07bfba7694772094ab6dd6441e6670012f26cd498adb5c980f0274ed2564fffc
    license: CC-BY-SA-4.0
  - type: url
    url: 'https://genai.owasp.org/llmrisk/llm032025-supply-chain/'
    hash: sha256:171dcf164d41cd9cd31b423b99f910373c1ae2a6ee148661ceef6297837d6986
    license: CC-BY-SA-4.0
review_status: pending
generated_at: "2026-10-19"
generated_by: "claude-opus-5-5[1m]"
generated_with: "0.11.0"

properties:
  description: "A list, published by OWASP, of the ten most critical security vulnerabilities in applications that use large language models, from LLM01 Prompt Injection to LLM10 Model Theft. Each entry gives a description, common examples, prevention and mitigation strategies, example attack scenarios and reference links."
  publisher: "[[Organization/owasp]]"
  version: "1.1"
  datePublished: "2023-10-16"
  hasDefinedTerm:
    - "[[DefinedTerm/prompt-injection|LLM01: Prompt Injection]]"
    - "LLM02: Insecure Output Handling"
    - "[[DefinedTerm/data-poisoning|LLM03: Training Data Poisoning]]"
    - "LLM04: Model Denial of Service"
    - "LLM05: Supply Chain Vulnerabilities"
    - "LLM06: Sensitive Information Disclosure"
    - "LLM07: Insecure Plugin Design"
    - "LLM08: Excessive Agency"
    - "LLM09: Overreliance"
    - "LLM10: Model Theft"
  url: "https://LLMtop10.com"
---

The OWASP Top 10 for LLM Applications is a list of the ten most critical security vulnerabilities in applications built on large language models (LLMs), published by [[Organization/owasp|OWASP]]. It is written for developers, data scientists and security experts who design and build applications and plug-ins that use LLMs, and aims to give them practical, actionable and concise security guidance. Version 1.1 was published on 16 October 2023. OWASP's site also presents a "Top 10 for 2025", a 2025 edition whose entries carry codes such as LLM01:2025, alongside the 2023/24 list.

The list arose, by its own account, because development teams adopted LLMs after the release of mass-market pre-trained chatbots in late 2022 faster than comprehensive security protocols were established, leaving many applications exposed to high-risk issues while guidance for developers was scattered.

## The ten entries

Each entry has a code from LLM01 to LLM10. The list summarises them as follows.

| Code | Entry | What it is |
| --- | --- | --- |
| LLM01 | [[DefinedTerm/prompt-injection\|Prompt Injection]] | Crafted inputs manipulate an LLM into unintended actions. Direct injections overwrite system prompts; indirect ones manipulate inputs from external sources |
| LLM02 | Insecure Output Handling | LLM output is accepted without scrutiny and passed to backend systems, which can lead to XSS, CSRF, SSRF, privilege escalation or remote code execution |
| LLM03 | [[DefinedTerm/data-poisoning\|Training Data Poisoning]] | Training data is tampered with, introducing vulnerabilities or biases that compromise security, effectiveness or ethical behaviour |
| LLM04 | Model Denial of Service | Attackers cause resource-heavy operations on an LLM, degrading service or raising costs |
| LLM05 | Supply Chain Vulnerabilities | Vulnerable components or services — third-party datasets, pre-trained models and plugins — compromise the application lifecycle |
| LLM06 | Sensitive Information Disclosure | An LLM reveals confidential data in its responses, leading to unauthorised data access, privacy violations and security breaches |
| LLM07 | Insecure Plugin Design | LLM plugins have insecure inputs and insufficient access control, which makes them easier to exploit, up to remote code execution |
| LLM08 | Excessive Agency | An LLM-based system takes actions with unintended consequences because it was granted excessive functionality, permissions or autonomy |
| LLM09 | Overreliance | People or systems depend on LLMs without oversight and are exposed to misinformation, miscommunication, legal issues and security vulnerabilities from incorrect or inappropriate output |
| LLM10 | Model Theft | Proprietary LLM models are accessed, copied or exfiltrated without authorisation, with economic losses, lost competitive advantage and possible access to sensitive information |

## The 2025 edition

In the 2025 edition Prompt Injection remains LLM01. Sensitive Information Disclosure (LLM06 in version 1.1) and Excessive Agency (LLM08 in version 1.1) appear under new codes, and System Prompt Leakage, Vector and Embedding Weaknesses, Misinformation and Unbounded Consumption are names that do not appear in version 1.1's list:

| Code | Entry | Summary as given on OWASP's site |
| --- | --- | --- |
| LLM01:2025 | [[DefinedTerm/prompt-injection\|Prompt Injection]] | Occurs when user prompts alter the LLM's behaviour or output in unintended ways |
| LLM02:2025 | [[DefinedTerm/sensitive-information-disclosure\|Sensitive Information Disclosure]] | Sensitive information, including personal identifiable information (PII) and financial details, can affect both the LLM and its application context |
| LLM03:2025 | [[DefinedTerm/llm-supply-chain-vulnerabilities\|Supply Chain]] | LLM supply chains are susceptible to vulnerabilities that can affect the integrity of training data, models and deployment |
| LLM04:2025 | Data and Model Poisoning | Pre-training, fine-tuning or embedding data is manipulated to introduce vulnerabilities, backdoors or biases |
| LLM05:2025 | Improper Output Handling | Insufficient validation, sanitisation and handling of the outputs generated by large language models |
| LLM06:2025 | Excessive Agency | Concerns the degree of agency, such as the ability to call functions, that a developer grants an LLM-based system |
| LLM07:2025 | System Prompt Leakage | The risk of leakage of the system prompts or instructions used with LLMs |
| LLM08:2025 | Vector and Embedding Weaknesses | Security risks in systems that use retrieval-augmented generation (RAG) with LLMs |
| LLM09:2025 | Misinformation | LLMs produce false information, a core vulnerability for applications relying on them |
| LLM10:2025 | Unbounded Consumption | Concerns the process by which an LLM generates outputs from input queries |

The LLM01:2025 entry relates prompt injection to three MITRE ATLAS techniques: AML.T0051.000 (LLM Prompt Injection: Direct), AML.T0051.001 (LLM Prompt Injection: Indirect) and AML.T0054 (LLM Jailbreak Injection: Direct).

## How the entries are written

Every entry of version 1.1 follows the same structure: a description, common examples of the vulnerability, prevention and mitigation strategies, example attack scenarios, and reference links. Some of the measures the version 1.1 entries recommend:

| Entry | Measures the list recommends, among others |
| --- | --- |
| Prompt Injection | Privilege control on the LLM's access to backend systems, a human in the loop for privileged operations, separating external content from user prompts, and treating the LLM as an untrusted user across trust boundaries. The entry states that there is no fool-proof prevention within the LLM, because LLMs do not separate instructions from external data |
| Insecure Output Handling | Treating the model as any other user in a zero-trust approach, validating its responses before they reach backend functions, and encoding output returned to users, following the OWASP Application Security Verification Standard (ASVS) |
| Training Data Poisoning | Verifying the supply chain of training data, sandboxing to stop the model scraping unintended data sources, filtering and anomaly detection on training data, and testing trained models for signs of poisoning |
| Model Denial of Service | Input validation, capping resource use per request, API rate limits, limits on queued actions, monitoring resource use, and input limits based on the context window |
| Supply Chain Vulnerabilities | Vetting data sources and suppliers, using reputable plugins, keeping a Software Bill of Materials (SBOM), model and code signing, and a patching policy. The entry notes that at the time of writing SBOMs did not cover models, their artefacts or datasets |
| Sensitive Information Disclosure | Data sanitisation to keep user data out of training data, input validation, and not training a model on information that the highest-privileged user can access when it may be shown to a lower-privileged user |
| Insecure Plugin Design | Strictly parameterised, type-checked inputs, ASVS input validation and access control guidance, authentication such as OAuth2, and manual user confirmation for actions taken by sensitive plugins |
| Excessive Agency | Limiting the plugins and tools an LLM agent can call, the functions they implement and the permissions they hold; human approval of actions; and authorisation in downstream systems rather than in the LLM |
| Overreliance | Monitoring and cross-checking LLM output, automatic validation against known facts, communicating the risks and limits of LLMs, and secure coding practices when LLMs are used in development |
| Model Theft | Strong access controls and authentication for model repositories and training environments, restricting the LLM's access to network resources, monitoring access logs, rate limiting, and watermarking |

## How the entries relate

The list draws several lines between its own entries:

- **Insecure Output Handling and Overreliance** — Insecure Output Handling concerns LLM output before it is passed downstream; Overreliance concerns the broader dependence on the accuracy and appropriateness of that output.
- **Excessive Agency and Insecure Output Handling** — Excessive Agency is about damaging actions an LLM-based system can take whatever caused it to malfunction (hallucination, prompt injection, a malicious plugin, a poorly-performing model), and differs from Insecure Output Handling, which concerns insufficient scrutiny of the output.
- **Insecure Plugin Design and Supply Chain Vulnerabilities** — Insecure Plugin Design covers writing LLM plugins; the risks of using third-party plugins fall under Supply Chain Vulnerabilities.
- **Prompt Injection and Training Data Poisoning** — prompt injection can be an attack vector for training data poisoning when client input to an LLM application is used to train the model without enough sanitisation and filtering.

## How the list was made

The list was built by an international team of nearly 500 experts, with over 125 active contributors from AI companies, security companies, ISVs, cloud hyperscalers, hardware providers and academia. During a month of brainstorming, team members wrote up 43 distinct threats; several rounds of voting reduced them to the ten most critical. Dedicated sub-teams then refined each entry, with its examples, prevention tips, attack scenarios and references, and put it to public review.

## Use and relation to other OWASP lists

The list includes a high-level architecture diagram of a hypothetical LLM application, with the areas of risk from each entry overlaid on the application flow, as a visual guide to how the risks affect the overall application ecosystem.

It shares vulnerability types with other OWASP Top 10 lists, but its stated aim is not to repeat them: it examines their particular implications in applications that use LLMs, how conventional vulnerabilities may pose different risks or be exploited in new ways, and how developers must adapt traditional remediation. Several entries point to other OWASP material for the conventional part of the problem — the ASVS for input validation, output encoding and access control, category A06:2021 (Vulnerable and Outdated Components) of the OWASP Top Ten for supply chain components, and the OWASP Top 10 API Security Risks – 2023 for plugins, which are typically REST APIs.
