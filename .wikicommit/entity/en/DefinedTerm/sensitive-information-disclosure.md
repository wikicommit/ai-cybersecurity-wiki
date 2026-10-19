---
title: "Sensitive information disclosure"
type: "schema:DefinedTerm"
lang: en
tags: [ai-security, large-language-models, privacy]
sources:
  - type: url
    url: 'https://genai.owasp.org/llmrisk/llm022025-sensitive-information-disclosure/'
    hash: sha256:07bfba7694772094ab6dd6441e6670012f26cd498adb5c980f0274ed2564fffc
    license: CC-BY-SA-4.0
review_status: pending
generated_at: "2026-10-19"
generated_by: "claude-opus-5-5[1m]"
generated_with: "0.11.0"

properties:
  description: "A vulnerability of applications built on large language models in which the model exposes sensitive data, proprietary algorithms or confidential details through its output. It is entry LLM02 of the 2025 edition of the OWASP Top 10 for LLM Applications."
---

Sensitive information disclosure is the risk that a large language model (LLM), especially one embedded in an application, exposes sensitive data, proprietary algorithms or confidential details through its output, leading to unauthorised data access, privacy violations and intellectual-property breaches. It is entry LLM02:2025 of the 2025 edition of the [[DefinedTermSet/owasp-top-10-for-llm-applications|OWASP Top 10 for LLM Applications]].

## What counts as sensitive

According to the OWASP entry, sensitive information can affect both the LLM and its application context. It includes personal identifiable information (PII), financial details, health records, confidential business data, security credentials and legal documents. Proprietary models may also have unique training methods and source code that are considered sensitive, especially in closed or foundation models.

The entry also addresses consumers: users need to understand the risk of unintentionally providing sensitive data that may later be disclosed in the model's output.

## Common forms

| Form | What happens |
| --- | --- |
| PII leakage | Personal identifiable information is disclosed during interactions with the LLM |
| Proprietary algorithm exposure | Poorly configured model outputs reveal proprietary algorithms or data. Revealed training data can expose models to inversion attacks, in which attackers extract sensitive information or reconstruct inputs |
| Sensitive business data disclosure | Generated responses inadvertently include confidential business information |

As an example of proprietary algorithm exposure, the entry cites the "Proof Pudding" attack (CVE-2019-20634), in which disclosed training data facilitated [[DefinedTerm/model-extraction|model extraction]] and inversion, letting attackers circumvent security controls in machine-learning algorithms and bypass email filters.

The entry's example attack scenarios are a user receiving a response that contains another user's personal data because of inadequate data sanitisation; an attacker bypassing input filters to extract sensitive information through a targeted [[DefinedTerm/prompt-injection|prompt injection]]; and negligent inclusion of data in training leading to disclosure.

## Prevention and mitigation

The entry's baseline advice is that LLM applications should sanitise data adequately to keep user data out of the training model, and that application owners should give clear terms-of-use policies that let users opt out of having their data used in training. Restrictions in the system prompt on the data types the LLM should return can mitigate disclosure, but such restrictions may not always be honoured and could be bypassed through prompt injection or other methods.

It groups its prevention strategies as follows:

| Group | Measures |
| --- | --- |
| Sanitisation | Integrate data sanitisation, scrubbing or masking sensitive content before it is used in training; apply strict input validation to detect and filter out harmful or sensitive inputs |
| Access controls | Enforce strict access controls based on the principle of least privilege; limit the model's access to external data sources and manage runtime data orchestration securely |
| Federated learning and privacy techniques | Train on decentralised data stored across multiple servers or devices, minimising centralised data collection; incorporate [[DefinedTerm/differential-privacy|differential privacy]], adding noise to data or outputs so that individual data points are hard to reverse-engineer |
| User education and transparency | Guide users away from entering sensitive information and train them in secure use; keep clear policies on data retention, usage and deletion, and let users opt out of training |
| Secure system configuration | Conceal the system preamble by limiting users' ability to override or access the system's initial settings; follow guidelines such as "OWASP API8:2023 Security Misconfiguration" to avoid leaking information through error messages or configuration details |
| Advanced techniques | Use homomorphic encryption for privacy-preserving machine learning, so data stays confidential while the model processes it; use tokenisation and pattern-matching redaction to sanitise confidential content before processing |

## Related techniques

The entry relates the vulnerability to three MITRE ATLAS techniques: AML.T0024.000 (Infer Training Data Membership), AML.T0024.001 (Invert ML Model) and AML.T0024.002 (Extract ML Model).
