---
title: "System prompt leakage"
type: "schema:DefinedTerm"
lang: en
tags: [ai-security, large-language-models, application-security]
sources:
  - type: url
    url: 'https://genai.owasp.org/llmrisk/llm072025-system-prompt-leakage/'
    hash: sha256:bcc665f235bd2bc4d1366e2e621084d65331c9b64e186ea3475885a7843ab1d1
    license: CC-BY-SA-4.0
review_status: pending
generated_at: "2026-10-19"
generated_by: "claude-opus-5-5[1m]"
generated_with: "0.11.0"

properties:
  description: "The risk that the system prompts or instructions used to steer a large language model contain sensitive information that was not intended to be discovered, which can be used to facilitate other attacks once found. It is entry LLM07:2025 of the 2025 edition of the OWASP Top 10 for LLM Applications."
---

System prompt leakage is the risk that the system prompts or instructions used to steer the behaviour of a large language model (LLM) contain sensitive information that was not intended to be discovered. It is entry LLM07:2025, "System Prompt Leakage", of the 2025 edition of the [[DefinedTermSet/owasp-top-10-for-llm-applications|OWASP Top 10 for LLM Applications]]. System prompts are designed to guide the model's output according to the application's requirements, but may inadvertently contain secrets; once discovered, that information can be used to facilitate other attacks.

## Where the real risk lies

The entry insists that the system prompt should not be considered a secret, nor used as a security control, so sensitive data such as credentials and connection strings should not be written into it. In its view, disclosure of the system prompt itself does not present the real risk. The risk lies with the underlying elements — [[DefinedTerm/sensitive-information-disclosure|sensitive information disclosure]], bypassing of system guardrails, improper separation of privileges and the like. When a system prompt describes roles and permissions or holds connection strings or passwords, the fundamental problem is not that these are disclosed, but that the application delegates strong session management and authorisation checks to the LLM, and that sensitive data is stored where it should not be.

The entry adds that even if the exact wording is not disclosed, attackers who use the application, send utterances to the model and observe the results will almost certainly be able to work out many of the guardrails and formatting restrictions the system prompt contains.

## Forms it takes

| Example | What the system prompt reveals, and how an attacker can use it |
| --- | --- |
| Exposure of sensitive functionality | Information or functionality meant to be confidential, such as sensitive system architecture, API keys, database credentials or user tokens, which attackers can extract or use to gain unauthorised access to the application — for example, knowing the type of database a tool uses lets an attacker target it with SQL injection |
| Exposure of internal rules | Internal decision-making processes, such as a banking chatbot's daily transaction limit and maximum loan amount, which give attackers insight into how the application works and could let them exploit weaknesses or bypass controls, such as transacting beyond the set limit |
| Revealing of filtering criteria | Instructions to filter or reject sensitive content, such as always refusing requests for information about another user |
| Disclosure of permissions and user roles | The application's internal role structures or permission levels, such as which role grants full access to modify user records; attackers who learn them could look for a privilege escalation attack |

In the entry's two example attack scenarios, a leaked system prompt contains credentials for a tool the LLM has access to, which the attacker then uses for other purposes; and an attacker extracts a system prompt that prohibits offensive content, external links and code execution, then uses a [[DefinedTerm/prompt-injection|prompt injection]] attack to bypass those instructions and facilitate remote code execution. The entry relates the risk to the MITRE ATLAS technique AML.T0051.000, LLM Prompt Injection: Direct (Meta Prompt Extraction).

## Prevention

The entry's four prevention and mitigation strategies all move control out of the system prompt:

- **Separate sensitive data from system prompts** — do not embed sensitive information such as API keys, authentication keys, database names, user roles or the application's permission structure in system prompts; externalise it to systems the model does not directly access.
- **Avoid relying on system prompts for strict behaviour control** — because LLMs are susceptible to attacks such as prompt injection that can alter the system prompt, rely on systems outside the LLM where possible; detecting and preventing harmful content, for example, should be done in external systems.
- **Implement guardrails outside the LLM** — training a model not to reveal its system prompt can be effective but does not guarantee it will always comply, so an independent system that inspects the output for compliance is preferable to system-prompt instructions.
- **Enforce security controls independently of the LLM** — critical controls such as privilege separation and authorisation bounds checks must not be delegated to the LLM, through the system prompt or otherwise, because they need to occur in a deterministic, auditable manner, which the entry says LLMs are not (currently) conducive to. Where an agent's tasks require different levels of access, multiple agents should be used, each configured with the least privileges it needs.
