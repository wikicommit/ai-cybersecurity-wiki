---
title: "Thinking carefully before adopting agentic AI"
type: "schema:BlogPosting"
lang: en
tags: [ai-agents, ai-security-guidance, united-kingdom]
sources:
  - type: url
    url: 'https://www.ncsc.gov.uk/blogs/thinking-carefully-before-adopting-agentic-ai'
    hash: sha256:3ad154eaa7cc7086f95eb6430f791b3a8db794f1e3264a806f24a0749a765237
    license: OGL-UK-3.0
review_status: pending
generated_at: "2026-10-24"
generated_by: "claude-opus-5-5[1m]"
generated_with: "0.11.0"

properties:
  description: "A blog post published by the UK's NCSC on 15 May 2026 summarising the key points of the joint guidance Careful adoption of agentic AI services. It explains how agentic AI increases risk and advises organisations to start small, keep humans accountable and apply established cyber security controls from the outset."
  author: ["Martin R", "Dr Kate S"]
  datePublished: "2026-05-15"
  publisher: "NCSC"
---

"Thinking carefully before adopting agentic AI" is a blog post published on 15 May 2026 by the UK's NCSC. It is written by Martin R, of the NCSC's Data Science and AI Research team, and Dr Kate S, the NCSC's Technical Director for Security of AI Research. Its subtitle — "make sure you can walk before you run" — sums up its message. The post summarises the key points of *Careful adoption of agentic AI services*, new joint guidance co-authored by the NCSC with international partners, and is meant for anyone involved in designing, developing, deploying and operating agentic AI systems.

## Why it was written

The post observes that agentic AI tools are starting to appear in real organisations, not just research labs, and that unlike tools that only generate content or predictions, they can plan, make decisions and take actions on a user's behalf. That capability can be beneficial, including in cyber defence, but can introduce new risks if used without care. The guidance it summarises sets out why organisations should start small, use agents only for low-risk tasks, and apply established cyber security controls from the outset.

The post describes agentic AI as the next step for the most advanced generative AI, also known as "frontier AI": rather than outputting a prediction or new content, agentic systems can access data sources, remember context, make decisions, use tools and take actions in pursuit of a goal, can operate without continuous human intervention, and can even create sub-agents. This, it says, is what makes them useful but also more hazardous than non-agentic AI tools.

## Key Points

- Many risks of agentic AI are not new — access control, secure development, supply chain risk, monitoring, incident response and accountability all still apply — and agentic systems also inherit known risks of large language models such as susceptibility to [[DefinedTerm/jailbreak-prompt|jailbreaking]] and [[DefinedTerm/prompt-injection|prompt injection]].
- The extra autonomy and complexity of agentic systems can increase the attack surface and make behaviour harder to predict, test and govern. The post lists four additional risks: broader access to external systems, data and tools; unpredictable behaviour, especially when goals can be interpreted in unexpected ways; problems that are harder to spot when actions happen faster than humans can review them; and actions that are harder to explain.
- An over-privileged or poorly designed agent can turn a single failure into a serious incident, so organisations should think before deploying: consider what could go wrong, ask whether AI is really needed or whether a process could be simplified or automated in a lower-risk way, and deploy incrementally, starting with tightly bounded pilots.
- Never grant an agent unrestricted access to sensitive data or critical systems, and keep visibility of and meaningful human control over its operation. In the post's words, "If you cannot understand, monitor or contain an agent's actions, it is not ready for deployment".
- Humans remain accountable for the decision to deploy a system, the access it was granted, the safeguards around it and the consequences of its operation. Ownership, access approval, monitoring, incident review and the authority to stop the system should be defined before it is connected to real systems or data, and the people responsible should be empowered and incentivised to intervene.
- Established cyber security practice is the starting point, aligned with an organisation's existing security model; the post cites ETSI EN 304 223 as setting baseline cyber security requirements for AI systems, including agentic ones.
- Practical steps it lists are to apply least privilege, limit an agent's scope, avoid long-lived credentials, use secure defaults, understand dependencies in the supply chain, monitor behaviour, [[DefinedTerm/threat-modeling|threat-model]] the deployment, and plan for incidents including failures, misuse and loss of control.

## When the advice applies

The post expects agentic AI to offer significant benefits in many scenarios, particularly where tasks are repetitive, well understood and low risk, and says the NCSC encourages responsible, thoughtful and scalable adoption. Its closing advice is to start small, apply existing cyber hygiene and governance from the start, and plan for failure, including how to respond to it. For more detailed mitigations it refers readers to the full guidance.
