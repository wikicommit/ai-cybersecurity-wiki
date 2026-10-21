---
title: "Artificial Intelligence Risk Management Framework: Generative Artificial Intelligence Profile"
type: "schema:DefinedTermSet"
lang: en
aliases: ["NIST AI 600-1"]
tags: [ai-governance, risk-management, generative-ai, united-states]
sources:
  - type: url
    url: 'https://nvlpubs.nist.gov/nistpubs/ai/NIST.AI.600-1.pdf'
    hash: sha256:ff2465f1ed2a8eb1d3982c3850dbecaf8d9f9da5f3ee36ac1fa27259c527db8d
    license: public-domain
review_status: pending
generated_at: "2026-10-21"
generated_by: "claude-opus-5-5"
generated_with: "0.11.0"

properties:
  description: "A cross-sectoral profile of the NIST AI Risk Management Framework for generative AI, published by the US National Institute of Standards and Technology in July 2024 as NIST AI 600-1. It defines twelve risks that are novel to or exacerbated by generative AI and lists suggested actions for managing them, organised by the AI RMF's functions and subcategories."
  publisher: "National Institute of Standards and Technology"
  version: "NIST AI 600-1"
  datePublished: "2024-07"
  hasDefinedTerm:
    - "CBRN Information or Capabilities"
    - "Confabulation"
    - "Dangerous, Violent, or Hateful Content"
    - "Data Privacy"
    - "Environmental Impacts"
    - "Harmful Bias or Homogenization"
    - "Human-AI Configuration"
    - "Information Integrity"
    - "Information Security"
    - "Intellectual Property"
    - "Obscene, Degrading, and/or Abusive Content"
    - "Value Chain and Component Integration"
  url: "https://doi.org/10.6028/NIST.AI.600-1"
---

The *Generative Artificial Intelligence Profile* is a companion resource to the [[DefinedTermSet/ai-risk-management-framework|AI Risk Management Framework]] (AI RMF 1.0) for generative AI (GAI), published by the US National Institute of Standards and Technology (NIST) in July 2024 as NIST AI 600-1. In the AI RMF's terms, a *profile* is an implementation of the Framework's functions, categories and subcategories for a specific setting, application or technology; because generative AI's risks cut across use cases and sectors, this one is a *cross-sectoral* profile. It defines a set of risks that are novel to or exacerbated by generative AI and suggests actions organisations can take to govern, map, measure and manage them.

NIST developed the profile under Section 4.1(a)(i)(A) of [[Legislation/executive-order-14110|Executive Order 14110]], which directed the Secretary of Commerce, acting through NIST's director, to develop a companion resource to the AI RMF for generative AI. It was approved by the NIST Editorial Review Board on 25 July 2024. The AI RMF it accompanies, released in January 2023, is intended for voluntary use. For its purposes, generative AI generally means generative foundation models; it quotes the executive order's definition of generative AI as the class of AI models that emulate the structure and characteristics of input data in order to generate derived synthetic content.

## The twelve risks

The profile lists risks for which, it says, there was an existing empirical evidence base when it was written, and leaves out speculative risks that might arise in more advanced future systems. Each is labelled by its outcome, object or source, and is mapped to the AI RMF's characteristics of trustworthy AI.

| Risk | What the profile means by it |
| --- | --- |
| CBRN Information or Capabilities | Eased access to or synthesis of information or design capabilities related to chemical, biological, radiological or nuclear weapons or other dangerous materials or agents |
| Confabulation | The production of confidently stated but erroneous or false content — colloquially "hallucinations" or "fabrications" — by which users may be misled or deceived |
| Dangerous, Violent, or Hateful Content | Eased production of and access to violent, inciting, radicalising or threatening content, recommendations to self-harm or to break the law, and hateful, disparaging or stereotyping content |
| Data Privacy | Leakage and unauthorised use, disclosure or de-anonymisation of biometric, health, location or other personally identifiable or sensitive data |
| Environmental Impacts | Impacts from the high compute resources used to train or operate generative models |
| Harmful Bias or Homogenization | Amplification of historical, societal and systemic biases, performance disparities between sub-groups or languages, and undesired homogeneity of outputs |
| Human-AI Configuration | Arrangements of or interactions between a human and an AI system that lead to anthropomorphising, algorithmic aversion, automation bias, over-reliance or emotional entanglement |
| Information Integrity | A lowered barrier to producing content that does not distinguish fact from opinion or fiction, or that can be used for large-scale disinformation and misinformation campaigns |
| Information Security | Lowered barriers to offensive cyber capabilities, and an increased attack surface for targeted cyberattacks on a system's availability or on the confidentiality or integrity of its training data, code or model weights |
| Intellectual Property | Eased production or replication of allegedly copyrighted, trademarked or licensed content without authorisation, exposure of trade secrets, and plagiarism |
| Obscene, Degrading, and/or Abusive Content | Eased production of and access to obscene, degrading or abusive imagery, including synthetic child sexual abuse material (CSAM) and non-consensual intimate images (NCII) of adults |
| Value Chain and Component Integration | Non-transparent or untraceable integration of upstream third-party components, including improperly obtained or uncleaned data and improperly vetted suppliers |

The profile says organisations can categorise these risks further in their own ways, and offers one grouping derived in part from the UK's International Scientific Report on the Safety of Advanced AI: technical or model risks, misuse by humans, and ecosystem or societal risks, with some risks cutting across the groups.

### Information security

The profile describes two primary information security risks of generative AI. It may lower the barriers to offensive capabilities — the profile cites reports that LLMs can already discover some vulnerabilities and write code to exploit them, and says sophisticated threat actors might build GAI-powered "security co-pilots" for parts of the attack chain such as evading detection and escalating privileges. And it expands the attack surface, because generative AI is itself vulnerable to attacks such as [[DefinedTerm/prompt-injection|prompt injection]], direct or indirect, and [[DefinedTerm/data-poisoning|data poisoning]]. The profile notes that security researchers have demonstrated indirect prompt injections that steal proprietary data or run malicious code remotely, and that merely querying a closed production model can elicit previously undisclosed information about it. It says conventional cybersecurity practices may need to adapt or evolve to secure attack points in AI systems and their value chains.

### Other risk dimensions

The profile notes that generative AI risks vary by stage of the AI lifecycle; by scope, from an individual model or system up to the ecosystem level, as in "algorithmic monocultures" that arise from repeated use of the same model; by source, whether the model's design, its inputs, its outputs or human behaviour; and by time scale, from abrupt to long-term harms. It adds that some risks are unknown and that estimation is hampered by a lack of visibility into training data and by the immature state of the science of AI measurement and safety.

## Suggested actions

Most of the profile is a set of tables of suggested actions, organised by AI RMF subcategory so they can be carried out alongside the Framework. Each action has an identifier that names its function and subcategory — GV for Govern, MP for Map, MS for Measure and MG for Manage, so that GV-1.1-001 is the first suggested action for Govern 1.1 — and is tagged with the generative AI risks it addresses; each subcategory's table also lists the AI actor tasks pertinent to it, not all of which apply to every action in that subcategory. Not every AI RMF subcategory is included, and not every action applies to every actor: an action relevant to developers may not be relevant to deployers. The profile also encourages organisations to apply the activities in the AI RMF and its Playbook, which it says already apply to generative AI.

Among the actions that bear on security are evaluating systems regularly for vulnerabilities to circumvention of safety measures; applying established security measures to assess threats such as backdoors, compromised dependencies, model theft or exposure of model weights, and extraction; performing AI [[DefinedTerm/red-team|red-teaming]] to assess resilience against abuse that facilitates attacks on other systems, generative AI attacks such as prompt injection, and ML attacks such as adversarial examples, data poisoning, membership inference and model extraction; verifying that fine-tuning does not compromise safety and security controls; and testing value chain risks such as data poisoning and malware.

## Primary considerations

The profile was informed by public feedback and by consultations through NIST's Generative AI Public Working Group, an open process for gathering multistakeholder input on generative AI risk management. The working group's focus was limited to four primary considerations, which the suggested actions mainly address and which an appendix describes:

| Consideration | What the profile says about it |
| --- | --- |
| Governance | Organisations can apply existing risk tiering and governance tools to generative AI or adjust them, and apply standard controls such as procurement due diligence, software bills of materials and service level agreements to third-party models and data |
| Pre-deployment testing | Current pre-deployment test, evaluation, validation and verification processes may be inadequate or mismatched to deployment contexts; structured public feedback — participatory engagement, field testing and AI red-teaming — can complement them |
| Content provenance | Provenance data tracking, such as digital watermarking, metadata recording and digital fingerprinting, and synthetic content detection can help trace the origin and history of content and distinguish AI-generated from human-generated content |
| Incident disclosure | No formal channels yet exist to report and document AI incidents; documenting, reporting and sharing information about generative AI incidents can help trace impacts to their source |

The profile describes AI red-teaming as an evolving practice, often conducted in a controlled environment with AI developers, to identify potential adverse behaviour of a generative AI system and stress-test safeguards. It distinguishes red-teaming by the general public, by domain experts, by a combination of both, and by humans working with generative AI, and says the quality of the results depends on the background and expertise of the red team.

## Revisions

The profile states that future revisions will add AI RMF subcategories, risks and suggested actions as the field evolves and as empirical evidence indicates additional risks, and that a glossary of terms for generative AI risk management will be developed and added to NIST's *The Language of Trustworthy AI* glossary.
