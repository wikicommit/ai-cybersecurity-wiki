---
title: "Managing the cyber risk of agentic AI"
type: "schema:BlogPosting"
lang: en
tags: [ai-agents, ai-security-guidance, sandboxing, united-kingdom]
sources:
  - type: url
    url: 'https://www.ncsc.gov.uk/blogs/managing-the-cyber-risk-of-agentic-ai'
    hash: sha256:9f2570e5cea295d6baad96a91142e21483c3d99e968681635ceb42a127b0e032
    license: OGL-UK-3.0
review_status: pending
generated_at: "2026-10-24"
generated_by: "claude-opus-5-5[1m]"
generated_with: "0.11.0"

properties:
  description: "A blog post published by the UK's NCSC on 20 August 2026 giving interim practical advice on deploying agentic AI systems securely. It recommends controls proportionate to an agent's autonomy, covering threat modelling, prompting, human oversight, sandboxing, logging and monitoring, attribution and emergency shutdown."
  author: ["Toby W"]
  datePublished: "2026-08-20"
  publisher: "NCSC"
---

"Managing the cyber risk of agentic AI" is a blog post published on 20 August 2026 by the UK's NCSC, written by Toby W, a Principal Security Architect at the NCSC. Its subtitle summarises its argument: use safeguards, sandboxing and active oversight to realise the benefits of autonomous systems while limiting unintended activity. It is aimed at system designers and operators building environments where [[DefinedTerm/ai-agent|AI agents]] are meant to operate with significant autonomy, or who are concerned that an agent might take unintended actions because of the instructions it receives, the tools available to it or the systems it can access.

## Why it was written

The post acknowledges that agentic AI systems can automate complex workflows and deliver large productivity gains, but argues that as organisations deploy increasingly autonomous AI at pace, they need to plan for how these systems behave when they do not work as expected. It points to several recent incidents in which AI models and agentic AI systems carried out unsanctioned or unintended activity, linking to an NCSC statement on those incidents and to the NCSC's earlier post, [[BlogPosting/thinking-carefully-before-adopting-agentic-ai|Thinking carefully before adopting agentic AI]].

The NCSC presents the post as interim advice based on its research to date. It says it is working with partners on formal guidance that will build upon and ultimately supersede the post, and that effective practice will continue to evolve as the technology matures.

## Key Points

- Controls should be proportionate to how much autonomy each agent is meant to have: the greater an agent's autonomy, the greater the potential impact if it malfunctions, accesses information it should not, or acts outside its intended scope.
- Safety controls built into AI models provide a baseline but should not be treated as holistic; they may be bypassed, fall short in higher-risk environments, or be insufficient on their own. Where the consequences of failure are above tolerance, organisations should add safeguards such as classifiers, deterministic provers and wider controls.
- Before deployment, document what is in and out of scope, including "red lines" the agent must stay within, and carry out [[DefinedTerm/threat-modeling|threat modelling]] of failure scenarios. An AI agent "does not have common sense" and may interpret instructions in literal or unexpected ways.
- Prompt carefully: tell the agent both what it should and should not do and when to stop for human approval, and repeat critical constraints in long-running tasks where context may be compressed — but do not rely on prompting alone.
- Choose a level of oversight — human-in-the-loop, human-on-the-loop or human-out-of-the-loop. For higher-risk scenarios, the NCSC recommends human oversight alongside technically enforced controls; "judge" AI models can help but should be independently evaluated.
- Always run AI agents in a sandbox that controls what they can communicate with, considering everything the agent can access or influence across execution, network, compute, credentials and data, and restricting access to limit its "blast radius".
- Deny network traffic by default and allow only required connections; the post gives a four-level maturity model ranging from unrestricted network access to no external network access with a locally hosted model.
- Use mature isolation technologies, since agents may discover and exploit configuration issues or vulnerabilities to escape a sandbox; a second four-level maturity model ranges from no compute isolation to running the agent on dedicated hardware.
- Give every agent its own identity distinct from humans, and restrict its credentials to the permissions and lifetime the task needs, for example by injecting credentials through a proxy.
- Log, audit and monitor agent activity — including chain-of-thought traces and sandbox events — protect the logs from modification, and treat agentic AI activity as user activity within 24/7 security monitoring and incident response.
- Make an agent's traffic easy for third parties to attribute, for example through reverse-lookup-capable IP addresses or identifying HTTP headers, and handle abuse reports like vulnerability reports.
- Always keep the ability to "pull the plug": halt autonomous activity immediately, including by restricting network access and cutting communication between agents and the model inference infrastructure.

## The maturity models

The post offers two maturity models for assessing a sandbox.

| Level | Network access | Compute and host isolation |
| --- | --- | --- |
| 1 (lowest) | Unrestricted network access | No compute isolation: the agent runs on, or has remote access to, the host platform alongside other workloads and data |
| 2 | Access restricted to an allowlist of approved domains | Same host as other workloads, constrained by properly configured kernel primitives such as process separation and OCI containers, with a residual risk of kernel exploit breakout |
| 3 | Access restricted to just the model's API | Same host as other workloads, isolated using virtualisation |
| 4 (highest) | No external network access, with the model hosted locally inside the network sandbox | Dedicated hardware separate from other workloads |

## What it rests on and its caveats

The post says its advice is based on NCSC research and experimentation, and frames AI cyber security as a rapidly evolving field. It names OpenClaw and Hermes Agent as examples of autonomous AI tools designed to interact with large numbers of systems and services, noting that the wider an agent's access, the greater the potential impact if it malfunctions or is compromised. It suggests running initial experiments in office hours, when more human oversight is available, and expanding to overnight or weekend autonomous execution only once all controls are shown to be effective. It closes by saying its advice should form part of a wider approach to securing AI models and systems, pointing to ETSI standard EN 304 223 on baseline cyber security requirements for AI models and systems, the NCSC's earlier post, and *Careful adoption of agentic AI services*, and urging organisations to keep the autonomy they grant agents proportionate to their risk appetite.
