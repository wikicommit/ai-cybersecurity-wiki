---
title: "Excessive agency"
type: "schema:DefinedTerm"
lang: en
tags: [ai-security, large-language-models, ai-agents]
sources:
  - type: url
    url: 'https://genai.owasp.org/llmrisk/llm062025-excessive-agency/'
    hash: sha256:ec80549842c29f482927f09f5b8cc58884028bb7d8ff475834dc6e835bde03b7
    license: CC-BY-SA-4.0
review_status: pending
generated_at: "2026-10-19"
generated_by: "claude-opus-5-5[1m]"
generated_with: "0.11.0"

properties:
  description: "The vulnerability that enables damaging actions to be performed in response to unexpected, ambiguous or manipulated outputs from an LLM-based system that has been granted agency, regardless of what is causing the model to malfunction. It is entry LLM06:2025 of the 2025 edition of the OWASP Top 10 for LLM Applications."
---

Excessive agency is the vulnerability that enables damaging actions to be performed in response to unexpected, ambiguous or manipulated outputs from a large language model (LLM), regardless of what is causing the LLM to malfunction. It is entry LLM06:2025, "Excessive Agency", of the 2025 edition of the [[DefinedTermSet/owasp-top-10-for-llm-applications|OWASP Top 10 for LLM Applications]]. It arises in LLM-based systems that their developer has granted a degree of agency: the ability to call functions or interface with other systems through extensions — which different vendors sometimes call tools, skills or plugins — to undertake actions in response to a prompt.

## Agency in LLM-based systems

According to the entry, the decision over which extension to invoke may itself be delegated to an LLM "agent", which determines it dynamically from the input prompt or the LLM's output. Agent-based systems typically make repeated calls to an LLM, using the output of earlier invocations to ground and direct later ones. For AI agents in general, see [[DefinedTerm/ai-agent|AI agent]].

## Triggers and root causes

The entry names two common triggers for the malfunction that excessive agency turns into damage:

- hallucination or confabulation, caused by poorly engineered benign prompts or simply a poorly performing model;
- direct or indirect [[DefinedTerm/prompt-injection|prompt injection]] from a malicious user, from an earlier invocation of a malicious or compromised extension, or — in multi-agent or collaborative systems — from a malicious or compromised peer agent.

Its root cause is typically one or more of three things, which the entry illustrates with six examples:

| Root cause | Examples the entry gives |
| --- | --- |
| Excessive functionality | An agent's extension includes functions the system does not need, such as a third-party extension chosen to read documents from a repository that can also modify and delete them; an extension trialled during development and dropped for a better one remains available to the agent; an extension meant to run one specific shell command fails to stop other shell commands from being executed |
| Excessive permissions | An extension intended to read data connects to a database with an identity that also has UPDATE, INSERT and DELETE permissions; an extension meant to act for an individual user accesses downstream systems with a generic high-privileged identity, such as an account with access to every user's files |
| Excessive autonomy | An application or extension fails to independently verify and approve high-impact actions, such as an extension that deletes a user's documents without any confirmation from the user |

The impacts can range across confidentiality, integrity and availability, and depend on which systems the LLM-based application is able to interact with.

The entry distinguishes excessive agency from insecure output handling, which is concerned with insufficient scrutiny of LLM outputs.

## Example

In the entry's example attack scenario, an LLM-based personal assistant is given access to an individual's mailbox through an extension so that it can summarise incoming emails. The extension the developer chose can send messages as well as read them, and the application is vulnerable to indirect prompt injection: a maliciously crafted incoming email tricks the LLM into commanding the agent to scan the user's inbox for sensitive information and forward it to the attacker's email address. The entry says this could be avoided by an extension that only reads mail (removing excessive functionality), by authenticating to the email service through an OAuth session with a read-only scope (removing excessive permissions), or by requiring the user to review and send every mail the extension drafts (removing excessive autonomy); rate limiting on the mail-sending interface would instead reduce the damage.

## Prevention

The entry lists eight measures that can prevent excessive agency:

| Measure | What it involves |
| --- | --- |
| Minimise extensions | Offer agents only the extensions they need — for example, no URL-fetching extension for a system that does not need to fetch URLs |
| Minimise extension functionality | Implement only the functions an extension needs, such as read-only access for an extension that summarises a user's emails |
| Avoid open-ended extensions | Prefer extensions with granular functionality over open-ended ones such as running a shell command or fetching a URL — for example, a dedicated file-writing extension rather than a shell function |
| Minimise extension permissions | Grant extensions only the permissions on other systems they need, enforced through the permissions of the identity the extension uses, such as read access to a single products table |
| Execute extensions in the user's context | Execute actions taken on behalf of a user on downstream systems in that user's context and with the minimum privileges necessary, for example through OAuth with the minimum scope |
| Require user approval | Use human-in-the-loop control so that a human approves high-impact actions before they are taken, either in a downstream system or within the extension |
| Complete mediation | Implement authorisation in downstream systems rather than relying on the LLM to decide whether an action is allowed, and validate every request made through extensions against security policies |
| Sanitise LLM inputs and outputs | Follow secure coding practice such as the OWASP Application Security Verification Standard (ASVS), with a strong focus on input sanitisation, and use static, dynamic and interactive application security testing (SAST, DAST, IAST) in development pipelines |

Two further measures will not prevent excessive agency but can limit the damage: logging and monitoring the activity of extensions and downstream systems to identify undesirable actions, and rate limiting to reduce how many undesirable actions can take place in a given period, which increases the chance of discovering them through monitoring before significant damage occurs.
