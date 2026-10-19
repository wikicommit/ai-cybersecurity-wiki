---
title: "Microsoft 365 Copilot"
type: "schema:SoftwareApplication"
lang: en
tags: [large-language-models, ai-security]
sources:
  - type: url
    url: 'https://arxiv.org/html/2509.10540'
    hash: sha256:3e19990a8c690e2705de4751578e366e68e7e11a2e6928cfe3602c4d5b7a7da8
    license: CC-BY-4.0
review_status: pending
generated_at: "2026-10-19"
generated_by: "claude-opus-5-5[1m]"
generated_with: "0.11.0"

properties:
  description: "Microsoft's AI assistant integrated across its Office applications, which helps users draft emails, summarise documents and query organisational knowledge. In 2025 it was the subject of EchoLeak (CVE-2025-32711), a zero-click prompt injection vulnerability that allowed data exfiltration through a crafted email."
  applicationCategory: "AI assistant"
  author: ["Microsoft"]
---

Microsoft 365 Copilot is a large language model (LLM) assistant that Microsoft integrates across its Office applications, helping users draft emails, summarise documents and query organisational knowledge. It is available only to authenticated users of an organisation, and it has read access to the emails and files the user can access. In 2025 it was the subject of [[Event/echoleak-microsoft-365-copilot-vulnerability-2025|EchoLeak]] (CVE-2025-32711), which a case study describes as the first known case of a [[DefinedTerm/prompt-injection|prompt injection]] being weaponised to cause concrete data exfiltration in a production AI system.

## How it works

As the EchoLeak case study describes it, Copilot pulls content such as the user's emails and files into its context through a retrieval process when it answers a request, so that its answers draw on the organisation's own data. Users invoke it within applications such as Outlook and Teams, for example to summarise recent emails or find information about a project.

## Security mechanisms

As described in [[ScholarlyArticle/echoleak-the-first-real-world-zero-click-prompt-injection-exploit-in-a-production-llm-system|the EchoLeak case study]], Copilot's system included several defences at the time of the vulnerability:

| Defence | What it does |
| --- | --- |
| XPIA classifier | An input classifier that detects and blocks cross-prompt injection attempts (XPIA) |
| Output link redaction | Content filtering that removes or redacts external Markdown-style links from Copilot's answers before the user sees them |
| Content security policy (CSP) | Browser settings that stop web content in Copilot's interface from loading resources from domains that are not on an allowlist |

## EchoLeak

In EchoLeak, a single crafted email sent to an organisation could make Copilot leak internal data with no user interaction. The case study reports that the attack evaded each of the defences above in turn — the XPIA classifier, link redaction through reference-style Markdown, and the CSP through a Microsoft Teams service on the allowlist — and that automatically fetched images removed the need for a click. Aim Labs found the flaw in January 2025 and reported it privately to Microsoft, which deployed a server-side fix in May 2025; it was disclosed publicly on 11 June 2025. Microsoft stated that no customer action was required and that there was no evidence of in-the-wild exploitation.

The case study reports that Microsoft's patches introduced options to restrict Copilot from using external communications in certain contexts, and that recent changes strip reference-style links and embedded images from inbound external content.
