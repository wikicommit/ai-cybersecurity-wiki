---
title: "Model Context Protocol"
type: "schema:DefinedTerm"
lang: en
aliases: ["MCP"]
tags: [ai-agents, large-language-models, open-standard, tool-use]
sources:
  - type: url
    url: 'https://en.wikipedia.org/wiki/Model_Context_Protocol'
    hash: sha256:48fe6187d30033cfdced5d662cf706dbc58ec2070ad825b9856340131a9bf297
    license: CC-BY-SA-4.0
review_status: pending
generated_at: "2026-10-19"
generated_by: "claude-opus-5-5[1m]"
generated_with: "0.11.0"

properties:
  description: "An open standard and open-source framework introduced by Anthropic in November 2024 to standardize the way AI systems such as large language models integrate and share data with external tools, systems and data sources. It provides a standardized interface for reading files, executing functions and handling contextual prompts."
---

The Model Context Protocol (MCP) is an open standard and open-source framework introduced by Anthropic in November 2024 to standardize the way artificial intelligence systems such as large language models (LLMs) integrate and share data with external tools, systems and data sources. It provides a standardized interface for reading files, executing functions and handling contextual prompts. After its announcement it was adopted by major AI providers, including OpenAI and Google DeepMind, and in December 2025 Anthropic donated it to the Agentic AI Foundation, a fund under the Linux Foundation. It matters for security because, as described below, giving a model access to tools through MCP has exposed it to [[DefinedTerm/prompt-injection|prompt injection]] and to flaws in MCP software itself.

## Origin and purpose

Anthropic announced MCP as an open standard for connecting AI assistants to data systems such as content repositories, business management tools and development environments. The protocol was created at Anthropic by the engineers David Soria Parra and Justin Spahr-Summers, and was designed to address information silos and legacy systems. Before MCP, developers often had to build a custom connector for each data source or tool — what Anthropic described as an "N×M" data integration problem. Earlier approaches such as OpenAI's 2023 "function-calling" API and the ChatGPT plug-in framework solved similar problems but required vendor-specific connectors. MCP reuses the message-flow ideas of the Language Server Protocol (LSP).

## How it works

The protocol distinguishes three roles:

| Role | What it does |
| --- | --- |
| MCP host | Typically an AI agent that interacts with an LLM and needs services from one or more MCP servers; it creates a dedicated MCP client for each server |
| MCP client | Communicates with one MCP server on the host's behalf; client and host typically run on the same machine |
| MCP server | Provides one or more tools (for example database access, calculators, or access to code or repositories) or resources (for example a document such as an FAQ); it may be local or remote |

The client asks its server for the list of tools and resources it provides, and the server replies with a natural-language description of each tool's capabilities and the expected format for calling it. That information is given to the LLM. If the LLM needs one of the tools, the host instructs the relevant client to call it; the server performs the action and returns the results, which the host then injects into the LLM conversation. Client and server communicate using JSON-RPC 2.0 messages.

The protocol was released with software development kits (SDKs) in languages including Python, TypeScript, C# and Java, together with example server implementations. Applications include querying structured databases in plain language and giving AI coding assistants in IDEs, coding platforms such as Replit and code intelligence tools such as Sourcegraph real-time access to project context. MCP Apps, an official extension built on mcp-ui, standardizes the delivery of interactive user interfaces — dashboards, forms, data visualizations — from MCP servers to host applications such as Claude and ChatGPT, whereas the base specification is restricted to text and structured data.

### The July 2026 revision

On July 28, 2026, MCP's maintainers finalized a major revision of the specification, which David Soria Parra, a member of Anthropic's technical staff, described as the most substantial change to the protocol since the addition of authorization. The revision:

- removes protocol-level session tracking, making MCP stateless at the protocol layer — protocol version, client identity and capabilities are instead carried in a `_meta` parameter with each request, bringing MCP's request model closer to that of Anthropic's Claude Messages API;
- deprecates several features that had seen limited use, including *sampling* (letting a server request a completion from the client's model) and *roots* (letting clients indicate relevant file-system locations to a server); deprecated features remain functional for at least twelve months;
- moves some previously core functionality, such as the Tasks feature for long-running operations, out of the base protocol into optional extensions.

Not all of the changes are backward compatible: servers implementing the new revision may not interoperate with older clients without a compatibility layer.

## Adoption

| When | What the source reports |
| --- | --- |
| March 2025 | OpenAI officially adopted MCP, having integrated it across its products, including the ChatGPT desktop app |
| September 2025 | OpenAI added MCP support to ChatGPT apps, allowing third-party access inside ChatGPT |
| December 2025 | Anthropic donated MCP to the Agentic AI Foundation (AAIF), a directed fund under the Linux Foundation co-founded by Anthropic, Block and OpenAI; later that month Anthropic also published Agent Skills, a companion open standard for packaging task-specific instructions and resources that agents load on demand |
| April 2026 | The AAIF held the MCP Dev Summit North America in New York City, with approximately 1,200 attendees; Salesforce's Headless 360 platform began routing customer and agent interactions via MCP |

MCP can also be integrated with Microsoft Semantic Kernel and Azure OpenAI, and MCP servers can be deployed to Cloudflare. By mid-2026 more than 10,000 MCP servers had reportedly been deployed in production. The Verge reported that MCP addresses a growing demand for AI agents that are contextually aware and can draw on diverse sources, and MCP has been likened to OpenAPI, a similar specification for describing APIs.

## Security risks and vulnerabilities

MCP has been subject to security vulnerabilities both in how models handle tool calling and in MCP software itself.

**Tool poisoning.** Invariant Labs described "tool poisoning attacks", in which malicious instructions are hidden in MCP tool descriptions that the AI model can read but users cannot see. The weakness comes from the assumption that tool descriptions are trustworthy. According to the source these problems are not specific to MCP and can occur whenever an LLM has access to tools with untrusted input; tool poisoning is a form of [[DefinedTerm/prompt-injection|prompt injection]].

**Flaws in MCP software.**

| Vulnerability | Affected software | What it allowed |
| --- | --- | --- |
| CVE-2025-6514 (disclosed by JFrog in July 2025; critical, CVSS 9.6) | mcp-remote, a tool that connects MCP clients to remote servers; versions 0.0.5 through 0.1.15 were affected, and version 0.1.16 fixed it | A malicious server could run arbitrary commands on the user's machine |
| CVE-2025-49596 (reported around the same time) | Anthropic's MCP Inspector developer tool | Because the Inspector required no authentication by default, attackers could use it to run code on a user's computer |

**Specification changes.** The specification has since added security requirements: implementations must follow OAuth 2.1 security best practices, and its security guidance describes "confused deputy" risks in MCP proxy servers and states that token passthrough is forbidden. The U.S. National Security Agency has stated that MCP's "rapid proliferation has outpaced the development of its security model".
