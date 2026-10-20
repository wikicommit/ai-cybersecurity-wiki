---
title: "Impact of AI on cyber threat from now to 2027"
type: "schema:Report"
lang: en
tags: [threat-assessment, ai-enabled-attacks, critical-infrastructure]
sources:
  - type: url
    url: 'https://www.ncsc.gov.uk/report/impact-ai-cyber-threat-now-2027'
    hash: sha256:bbc60d881dfac3548e93cf4acd6312ef925cd2bf4d7acd3da4dc95f662ad54de
    license: OGL-UK-3.0
review_status: pending
generated_at: "2026-10-20"
generated_by: "claude-opus-5-5[1m]"
generated_with: "0.11.0"

properties:
  description: "An NCSC Assessment published by the UK National Cyber Security Centre on 7 May 2025 on the most significant impacts of AI developments on cyber threat between then and 2027, focused on the use of AI in cyber intrusion."
  author: ["National Cyber Security Centre (NCSC)"]
  datePublished: "2025-05-07"
---

Impact of AI on cyber threat from now to 2027 is an assessment report by the UK National Cyber Security Centre (NCSC), published on 7 May 2025. It sets out the NCSC's assessment of the most significant impacts on cyber threat from artificial intelligence (AI) developments between its publication and 2027. It focuses on the use of AI in cyber intrusion, and does not cover wider threats enabled by AI, such as influence operations. Its overall conclusion is that AI will almost certainly pose cyber resilience challenges to 2027 and beyond, across critical systems, the economy and society.

## How the assessment is made

The report is a product of NCSC Assessment (NCSC-A), which describes itself as the authoritative voice on the cyber threat to the UK and combines classified intelligence, industry knowledge, academic material and open sources to provide independent key judgements. NCSC-A is part of the Professional Heads of Intelligence Assessment (PHIA), and the report uses the PHIA probability yardstick: its judgements are worded with formal probabilistic terms, such as "almost certainly", "highly likely" and "realistic possibility", that correspond to defined likelihood ranges.

The report builds on an earlier NCSC assessment of the near-term impact of AI on cyber threat. It notes that AI and its application to cyber operations are changing fast and that technical surprise is likely.

## Key judgements

| Judgement | Stated likelihood |
| --- | --- |
| AI will continue to make elements of cyber intrusion operations more effective and efficient, increasing the frequency and intensity of cyber threats | Almost certainly |
| There will be a digital divide between systems keeping pace with AI-enabled threats and a large proportion that are more vulnerable, making cyber security at scale increasingly important to 2027 and beyond | Almost certainly |
| Assuming a lag, or no change to cyber security mitigations, critical systems become more vulnerable to advanced threat actors by 2027 | Realistic possibility |
| Keeping pace with "frontier AI" capabilities will be critical to cyber resilience for the decade to come | Almost certainly |
| Proliferation of AI-enabled cyber tools will expand access to AI-enabled intrusion capability to a wider range of state and non-state actors | Highly likely |
| The growing incorporation of AI models and systems across the UK's technology base, particularly in critical national infrastructure (CNI), presents an increased attack surface | Almost certainly |
| Insufficient cyber security will increase opportunity for capable state-linked actors and cyber criminals to misuse AI to support offensive activities | Almost certainly |

## AI in the hands of threat actors

The assessment judges that cyber threat actors are almost certainly already using AI to enhance existing tactics, techniques and procedures — in victim reconnaissance, vulnerability research and exploit development, access to systems through [[DefinedTerm/social-engineering|social engineering]], basic malware generation and processing exfiltrated data. To 2027 this will highly likely increase the volume and impact of cyber intrusions through the evolution of existing techniques rather than by creating novel threat vectors. In the near term, it says, only highly capable state actors with the requisite investment, quality training data and expertise will be able to harness the full potential of AI in advanced cyber operations, while most other groups are almost certain to use or repurpose commercially available and open-source models.

It names AI-assisted vulnerability research and exploit development (VRED) as highly likely to be the most significant AI cyber development. By 2027, AI-enabled tools will almost certainly enhance threat actors' ability to exploit known [[DefinedTerm/vulnerability-computer-security|vulnerabilities]], increasing attacks on systems that have not been patched; the report notes that the time between disclosure and exploitation has shrunk to days and that AI will almost certainly reduce it further, highly likely contributing to an increased threat to CNI and its supply chains. For skilled actors able to fine-tune models or build sovereign AI systems dedicated to exploitation, AI will highly likely enhance [[DefinedTerm/zero-day-vulnerability|zero-day]] discovery and exploitation.

The report judges fully automated, end-to-end advanced cyber attacks unlikely to 2027: skilled actors will need to remain in the loop, but will almost certainly keep experimenting with automating elements of the attack chain, such as finding and exploiting vulnerabilities and rapidly changing malware and infrastructure to evade detection. It also expects the commercial cyber intrusion sector to almost certainly incorporate AI into its products, and skilled cyber criminals to highly likely focus on getting around safeguards on AI models and AI-enabled penetration testing tools so as to offer AI-enabled cyber tools "as a service", uplifting novice criminals, hackers for hire and hacktivists from a low base.

## AI systems as a target

AI technology is increasingly connected to company systems, data and operational technology, and the report judges that threat actors will almost certainly exploit this additional threat vector. It states that techniques such as direct and indirect [[DefinedTerm/prompt-injection|prompt injection]], software vulnerabilities and [[DefinedTerm/supply-chain-attack|supply chain attack]] are already capable of enabling exploitation of AI systems to gain access to wider systems. It also warns that developers racing to release market-leading models may prioritise speed over security, and that the threat is enabled by insecure data handling and configuration — weak encryption of data in transit, poor identity management and credential storage, and the collection of extensive user data.

## What it implies for defenders

The report notes that AI will also help system owners and software developers secure their systems, but because universal access to AI for cyber defence by 2027 is a remote chance, a digital divide will almost certainly open. Without effective AI assistance for defence, human-machine teaming by attackers will highly likely make identifying, tracking and mitigating threat activity more challenging. It concludes that fundamental cyber security practices in integrating and configuring AI and connected systems will be key to mitigating threats, and that organisations using AI systems will almost certainly need to keep cyber security measures on those systems and their dependencies up to date. It refers organisations to NCSC guidance on deploying AI tools securely, including [[Report/guidelines-for-secure-ai-system-development]].

## Terms as the report defines them

| Term | Definition given in the report |
| --- | --- |
| Frontier AI | AI systems that can provide a wide variety of tasks that match or exceed the capabilities present in today's most advanced systems |
| AI system | The host infrastructure, management systems, access control systems and programming interface, which can comprise multiple AI designs and models |
| AI design | The mathematical and algorithmic processes and constraints used to convert inputs into outputs |
| Zero-day | An unpatched, and likely unknown, vulnerability that threat actors can exploit knowing their targets will likely be vulnerable; it becomes a known (n-day) vulnerability once the vendor issues a fix |
