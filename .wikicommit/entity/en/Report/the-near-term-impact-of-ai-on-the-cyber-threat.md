---
title: "The near-term impact of AI on the cyber threat"
type: "schema:Report"
lang: en
tags: [threat-assessment, ai-enabled-attacks, ransomware]
sources:
  - type: url
    url: 'https://www.ncsc.gov.uk/report/impact-of-ai-on-cyber-threat'
    hash: sha256:4a50d8288b2ae5bf1396575507fc4061ce1d55c399013c6fe6de87a5845488c1
    license: OGL-UK-3.0
review_status: pending
generated_at: "2026-10-20"
generated_by: "claude-opus-5-5[1m]"
generated_with: "0.11.0"

properties:
  description: "An NCSC Assessment published by the UK National Cyber Security Centre on 24 January 2024 on how AI will affect the efficacy of cyber operations and the implications for the cyber threat over the next two years."
  author: ["National Cyber Security Centre (NCSC)"]
  datePublished: "2024-01-24"
---

The near-term impact of AI on the cyber threat is an assessment report by the UK National Cyber Security Centre (NCSC), published on 24 January 2024. It assesses how artificial intelligence (AI) will affect the effectiveness of cyber operations, and what that means for the cyber threat, over the following two years. Its headline judgement is that AI will almost certainly increase the volume and heighten the impact of cyber attacks over that period, but that the impact on the cyber threat will be uneven. It is written for large, small and medium-sized organisations, the public sector, the self-employed and sole traders, and cyber security professionals.

## Scope and assumptions

The assessment covers how AI changes what cyber threat actors can do. It states that it does not address the cyber security threat to AI tools, nor the risks of incorporating them into system architecture. It assumes no significant breakthrough in transformative AI — which it defines as an advanced AI system with transformative impact on society, such as artificial general intelligence — within its time frame, and says this assumption should be kept under review, since a breakthrough could have significant implications for malware and zero-day exploit development. It also notes that the threat will be offset by the use of AI to strengthen cyber security resilience, through detection and improved security by design, and that more work is needed to understand how far this will limit the threat's impact.

## How the assessment is made

The report is a product of NCSC Assessment (NCSC-A), which describes itself as the authoritative voice on the cyber threat to the UK and fuses all-source information — classified intelligence, industry knowledge, academic material and open source — to provide independent key judgements. NCSC-A is part of the Professional Heads of Intelligence Assessment (PHIA), and the report uses the PHIA probability yardstick: its judgements are worded with formal probabilistic terms, such as "almost certainly", "highly likely" and "realistic possibility", that correspond to defined likelihood ranges.

## Key judgements

- AI will almost certainly increase the volume and heighten the impact of cyber attacks over the next two years, with an uneven impact on the threat.
- The threat to 2025 comes from the evolution and enhancement of existing tactics, techniques and procedures (TTPs).
- All types of cyber threat actor — state and non-state, skilled and less skilled — are already using AI, to varying degrees.
- AI provides capability uplift in reconnaissance and [[DefinedTerm/social-engineering|social engineering]], almost certainly making both more effective, efficient and harder to detect.
- More sophisticated uses of AI in cyber operations are highly likely to be restricted to threat actors with access to quality training data, significant expertise in both AI and cyber, and resources; more advanced uses are unlikely to be realised before 2025.
- AI will almost certainly make cyber attacks against the UK more impactful, because threat actors will be able to analyse exfiltrated data faster and more effectively and use it to train AI models.
- AI lowers the barrier for novice cyber criminals, hackers-for-hire and hacktivists to carry out effective access and information-gathering operations, and this enhanced access will likely contribute to the global ransomware threat over the next two years.
- Moving towards 2025 and beyond, commoditisation of AI-enabled capability in criminal and commercial markets will almost certainly make improved capability available to cyber crime and state actors.

## Uplift by type of threat actor

The report sets out the extent of capability uplift it expects from AI over the two years for three groups of threat actor, on a scale from minimal uplift through moderate uplift and uplift to significant uplift.

| | Highly capable state threat actors | Capable state actors, commercial companies selling to states, organised cyber crime groups | Less-skilled hackers-for-hire, opportunistic cyber criminals, hacktivists |
| --- | --- | --- | --- |
| Intent | High | High | Opportunistic |
| Capability | Highly skilled in AI and cyber, well resourced | Skilled in cyber, some resource constraints | Novice cyber skills, limited resource |
| Reconnaissance | Moderate uplift | Moderate uplift | Uplift |
| Social engineering, phishing, passwords | Uplift | Uplift | Significant uplift (from low base) |
| Tools (malware, exploits) | Realistic possibility of uplift | Minimal uplift | Moderate uplift (from low base) |
| Lateral movement | Minimal uplift | Minimal uplift | No uplift |
| Exfiltration | Uplift | Uplift | Uplift |
| Implications | Best placed to harness AI's potential in advanced cyber operations, for example in advanced malware generation | Most capability uplift in reconnaissance, social engineering and exfiltration; will proliferate AI-enabled tools to novice actors | Lower barrier to entry to effective and scalable access operations, increasing the volume of successful compromise of devices and accounts |

## Where AI helps attackers most

The assessment judges that AI will primarily offer threat actors capability uplift in social engineering. Generative AI — AI capable of generating new content such as text, images or video — can already enable convincing interaction with victims, including the creation of lure documents, without the translation, spelling and grammatical mistakes that often reveal [[DefinedTerm/phishing|phishing]]; the report judges this highly likely to increase as models evolve and uptake grows. It notes that threat actors, including ransomware actors, already use AI to make aspects of cyber operations such as reconnaissance, phishing and coding more efficient and effective. Because phishing plays an important role in providing the initial network access cyber criminals need for ransomware attacks, it judges it likely that criminal use of AI to improve access will contribute to the global ransomware threat in the near term.

AI's ability to summarise data at pace will, in the report's judgement, highly likely help threat actors identify high-value assets for examination and exfiltration. It also judges AI likely to assist with malware and exploit development, vulnerability research and lateral movement by making existing techniques more efficient — but these areas will continue to rely on human expertise in the near term, so any limited uplift will highly likely be restricted to already capable actors. AI could generate malware able to evade current security filters only if trained on quality exploit data, and the report considers it a realistic possibility that highly capable states hold malware repositories large enough to train an AI model for this purpose.

## Who benefits, and how that may change

The report judges that expertise, equipment, time and financial resourcing are currently crucial to harness more advanced uses of AI, so that only those with the investment, expertise and quality data will benefit in sophisticated attacks to 2025; highly capable state actors are almost certainly best placed. It says that training on quality data will remain crucial, and that the scaling barriers for automated reconnaissance, social engineering and malware are primarily related to data — but as successful exfiltrations occur, the data feeding AI will almost certainly improve, enabling faster and more precise operations.

It considers it a realistic possibility that these barriers become less important over time as more sophisticated models proliferate. Publicly available AI models already largely remove the need for actors to build their own, especially in low-sophistication operations such as spear-phishing, where less-skilled actors will almost certainly gain significant uplift to 2025. With "as-a-service" business models already commoditising cyber crime, the report judges it almost certain that capable groups will monetise AI-enabled cyber tools, making improved capability available to anyone willing to pay.

## Implications for cyber resilience

The assessment expects cyber resilience challenges to become more acute as the technology develops. To 2025, it judges, generative AI and large language models will make it difficult for everyone, whatever their level of cyber security understanding, to tell whether an email or password reset request is genuine, or to identify phishing, spoofing or social engineering attempts. It notes that the time between the release of security updates for newly identified [[DefinedTerm/vulnerability-computer-security|vulnerabilities]] and their exploitation is already shrinking, and judges that AI will highly likely accelerate this as reconnaissance to identify vulnerable devices becomes quicker and more precise. Increases in the volume, complexity and impact of cyber operations will, it says, indicate that threat actors have harnessed AI effectively, and this will highly likely intensify UK cyber resilience challenges in the near term for government and the private sector.

## Policy context

The published report is preceded by a UK Cyber Policy comment, separate from the assessment itself. It recalls that at the Bletchley [[Event/ai-safety-summit-2023|AI Safety Summit]] in November 2023 international leaders discussed both the potential benefits of AI models and the security risks of irresponsible development and use, and that the Summit Declaration stressed AI that is safe, human-centric, trustworthy and responsible. The comment adds that AI also offers substantial opportunities to defenders — for example, improving the detection and triage of cyber attacks and identifying malicious emails and phishing campaigns — and points to the NCSC's [[Report/guidelines-for-secure-ai-system-development|Guidelines for Secure AI System Development]], published in November 2023.
