---
title: "Adversarial Machine Learning: A Taxonomy and Terminology of Attacks and Mitigations"
type: "schema:DefinedTermSet"
lang: en
aliases: ["NIST AI 100-2e2023", "NIST AI 100-2e2025"]
tags: [adversarial-machine-learning, ai-security, large-language-models, united-states]
sources:
  - type: url
    url: 'https://nvlpubs.nist.gov/nistpubs/ai/NIST.AI.100-2e2023.pdf'
    hash: sha256:ce111f15552aaac32b9cbe744e14e8df3b78ae95c5136a42975cfcbec9ad25c5
    license: public-domain
  - type: url
    url: 'https://nvlpubs.nist.gov/nistpubs/ai/NIST.AI.100-2e2025.pdf'
    hash: sha256:a02579b20e357a9e5e38515dac4c43cc075c11ea5a0ccbb9eb0afc98f63a27f1
    license: public-domain
review_status: pending
generated_at: "2026-10-21"
generated_by: "claude-opus-5-5"
generated_with: "0.11.0"

properties:
  description: "A taxonomy and terminology of adversarial machine learning published by the US National Institute of Standards and Technology, first as NIST AI 100-2e2023 and then as the March 2025 edition, NIST AI 100-2e2025. It classifies attacks on predictive and generative AI systems by learning stage and the attacker's goals, capabilities and knowledge, and describes the corresponding mitigations and their limitations."
  publisher: "National Institute of Standards and Technology"
  version: "NIST AI 100-2e2025"
  datePublished: "2025-03"
  hasDefinedTerm:
    - "[[DefinedTerm/evasion-attack|Evasion attacks]]"
    - "[[DefinedTerm/data-poisoning|Data poisoning]]"
    - "[[DefinedTerm/availability-poisoning|Availability poisoning]]"
    - "[[DefinedTerm/targeted-poisoning|Targeted poisoning]]"
    - "[[DefinedTerm/backdoor-attack|Backdoor poisoning]]"
    - "[[DefinedTerm/model-poisoning|Model poisoning]]"
    - "[[DefinedTerm/data-reconstruction|Data reconstruction]]"
    - "[[DefinedTerm/membership-inference-attack|Membership inference]]"
    - "[[DefinedTerm/model-extraction|Model extraction]]"
    - "[[DefinedTerm/property-inference|Property inference]]"
    - "[[DefinedTerm/supply-chain-attack|AI supply chain attacks]]"
    - "[[DefinedTerm/prompt-injection|Direct prompt injection]]"
    - "[[DefinedTerm/jailbreak-prompt|Jailbreak]]"
    - "[[DefinedTerm/prompt-injection|Indirect prompt injection]]"
  url: "https://doi.org/10.6028/NIST.AI.100-2e2025"
---

"Adversarial Machine Learning: A Taxonomy and Terminology of Attacks and Mitigations" is a report in the NIST Trustworthy and Responsible AI series, published by the US National Institute of Standards and Technology (NIST). It develops a taxonomy of concepts and defines terminology in the field of [[DefinedTerm/adversarial-machine-learning|adversarial machine learning]] (AML), which the report describes as the study of attacks that exploit the statistical, data-based nature of machine learning (ML) systems, and of ML algorithms and systems that can withstand them. The taxonomy and terminology are meant to inform other standards and future practice guides for assessing and managing the security of AI systems, by establishing a common language for a rapidly developing field.

It has been published in two editions: NIST AI 100-2e2023, dated January 2024, and NIST AI 100-2e2025, dated March 2025, which updates it. Both are addressed to those responsible for designing, developing, deploying, evaluating and governing AI systems, and both state that their guidance is voluntary and does not supersede regulations or laws.

## Editions

| Edition | Date | Authors | What it contains |
| --- | --- | --- | --- |
| NIST AI 100-2e2023 | January 2024; approved by the NIST Editorial Review Board on 2 January 2024 | Apostol Vassilev of NIST's Computer Security Division, Alina Oprea of Northeastern University, and Alie Fordyce and Hyrum Anderson of Robust Intelligence, Inc. | Taxonomies of attacks on predictive and generative AI, mitigations, discussion of remaining challenges, and a glossary |
| NIST AI 100-2e2025 | March 2025; approved by the NIST Editorial Review Board on 20 March 2025 | Apostol Vassilev, Alina Oprea, Alie Fordyce, Hyrum Anderson, Xander Davies and Maia Hamin, from NIST's Computer Security Division and the U.S. AI Safety Institute, Northeastern University, Cisco and the U.K. [[Organization/ai-security-institute|AI Security Institute]] | The same structure, extended with a taxonomy index of attack-class identifiers, sections on the security of AI agents and on benchmarks, and accounts of attacks seen in the real world |

Between the two editions:

- **Attack identifiers.** The 2025 edition opens with a *Predictive AI and Generative AI Taxonomy Index* that gives each objective and attack class an identifier of the form `NISTAML.0xx` — for example NISTAML.022 for evasion, NISTAML.018 for prompt injection and NISTAML.015 for indirect prompt injection. An attack that serves several goals appears under each of them with the same identifier.
- **The fourth GenAI objective.** The 2023 edition's objective specific to generative AI was *abuse*, in which an attacker repurposes a system's intended use — for example to promote hate speech, incite violence or scale offensive cyber operations. The 2025 edition calls it *misuse enablement* (NISTAML.04): deliberately circumventing technical restrictions that a system's owner places on its use, such as system prompts or safety alignment through reinforcement learning from human feedback.
- **Direct attacks on GenAI.** The 2023 edition's section on direct prompt injection becomes, in the 2025 edition, a section on *direct prompting attacks* — any attack by the system's primary user through query access — of which direct prompt injection is a subset.
- **Supply chain.** The 2023 edition's section on AI supply chain attacks included deserialization vulnerabilities in model artifacts; the 2025 edition's section covers data and model poisoning, the supply chain attacks that rely on the statistical, data-based properties of ML systems and so fall within AML.
- **New material in 2025.** Sections on the security of agents and on benchmarks for AML vulnerabilities; subsections on evasion and poisoning attacks in the real world; and, among the closing challenges, the evaluation of mitigations, risk management in light of AML, and how AML relates to other characteristics of AI systems. The 2023 edition's separate discussion of the open versus closed model dilemma has no counterpart in the 2025 edition.
- **Literature.** The 2023 edition noted more than 5,000 AML articles on arXiv in 2021 and 2022; the 2025 edition notes more than 11,354 references on arXiv since 2021 as of July 2024.

## How the taxonomy is organised

Both editions divide AI systems into two broad classes, *predictive AI* (PredAI) and *generative AI* (GenAI), and classify attacks along five dimensions: the AI system type; the stage of the ML lifecycle at which the attack is mounted; the attacker's goals and objectives; the attacker's capabilities; and the attacker's knowledge of the learning process.

| Dimension | Categories |
| --- | --- |
| Stage of learning | Training-time attacks (poisoning) and deployment-time attacks (evasion and privacy attacks); for GenAI, foundation-model pre-training, fine-tuning and inference |
| Attacker objective | Availability breakdown, integrity violation and privacy compromise, following the classic availability–integrity–confidentiality triad; for GenAI, a fourth objective — *abuse* in the 2023 edition, *misuse enablement* in the 2025 edition |
| Attacker capability | Training data control, model control, testing data control, label limit, source code control and query access; for GenAI, also *resource control*, the ability to modify documents or web pages a model ingests at runtime |
| Attacker knowledge | White-box (full knowledge of the system), black-box (minimal knowledge, typically query access only) and gray-box (somewhere in between) |

The taxonomy is presented as independent of data modality. The report surveys attacks on images, text, audio, video, tabular data and cybersecurity data — noting that the first poisoning attacks were discovered in cybersecurity, against worm signature generation in 2006 and spam email classification in 2008 — and on multimodal models.

## Attack classes on predictive AI

| Class | ID (2025) | What the attacker does | Main mitigations the report identifies |
| --- | --- | --- | --- |
| [[DefinedTerm/evasion-attack\|Evasion]] | NISTAML.022 | Modifies test samples at deployment time to create [[DefinedTerm/adversarial-example\|adversarial examples]] that change the model's prediction with minimal perturbation, in white-box, black-box or transfer settings, including physically realisable attacks | Adversarial training, randomized smoothing and formal verification, each with costs such as lower accuracy or limited scalability |
| Availability poisoning | NISTAML.013 | Poisons training data or the model to degrade performance indiscriminately | Training data sanitisation and robust training |
| Targeted poisoning | NISTAML.024 | Changes the model's predictions on a small number of targeted samples, mostly in the clean-label setting | Notoriously hard to defend; dataset provenance and integrity attestation, and differential privacy at a cost in accuracy |
| [[DefinedTerm/backdoor-attack\|Backdoor poisoning]] | NISTAML.021, NISTAML.023 | Adds a backdoor pattern (trigger) to poisoned training samples and to test samples to cause misclassification; the report notes these are the only attacks requiring control of both training and testing data | Training data sanitisation, trigger reconstruction, and model inspection and sanitisation, which mostly assume fixed trigger patterns |
| Model poisoning | NISTAML.011, NISTAML.026 | Modifies the trained model directly, most often through malicious client updates in federated learning, or through suppliers in the supply chain | Byzantine-resilient aggregation, gradient clipping and differential privacy, none complete |
| Data reconstruction | NISTAML.032 | Recovers an individual's data from aggregate information or a trained model | [[DefinedTerm/differential-privacy\|Differential privacy]] |
| [[DefinedTerm/membership-inference-attack\|Membership inference]] | NISTAML.033 | Determines whether a particular record was in the training set | Differential privacy, complemented by empirical privacy auditing |
| [[DefinedTerm/model-extraction\|Model extraction]] | NISTAML.031 | Extracts information about a model's architecture or parameters through queries or side channels, often as a step towards white-box attacks | Limiting or monitoring queries and hardening against side channels, which the report says motivated and well-resourced attackers can circumvent; differential privacy gives no guarantees against it |
| Property inference | NISTAML.034 | Learns global properties of the training data distribution, such as the fraction of records with a sensitive attribute | Differential privacy has shown negative results |

The 2025 edition also lists *energy-latency attacks* (NISTAML.014), availability attacks that need only black-box access to a model and increase its computational latency and energy consumption.

### Attacks seen in the real world

The 2025 edition adds accounts of attacks outside research settings. For evasion, it reports that the ID.me face recognition service found more than 80,000 attempts in the second half of 2020 to fool the identity verification used by several state workforce agencies — with masks, deepfakes, or images and videos of other people — in order to claim unemployment benefits fraudulently; and it cites a study of a commercial phishing webpage detector which found that attackers used simple techniques such as cropping, masking and blurring rather than optimisation-based attacks. For poisoning, it names the [[Event/tay-chatbot-incident-2016|Tay chatbot]], released by Microsoft on Twitter in 2016 and taken down after less than 24 hours of interaction with users, as the first example of a real-world poisoning attack, alongside attempts to poison Gmail's spam classifier and a poisoning incident on the VirusTotal threat intelligence service reported by MITRE ATLAS. It observes that all three systems were continuously updated after release, which attackers relied on.

## Attack classes on generative AI

The report notes that many PredAI attack types also apply to GenAI, and adds classes particular to it. It attributes many inference-time vulnerabilities of large language models (LLMs) and retrieval-augmented generation (RAG) applications to the fact that data and instructions are not given to the model in separate channels, which it likens to decades-old SQL injection.

| Class | ID (2025) | What the attacker does |
| --- | --- | --- |
| [[DefinedTerm/supply-chain-attack\|AI supply chain attacks]] | NISTAML.05 | In the 2025 edition, poisons web-scale training data — for example by buying domains that a dataset's URLs point to — or offers maliciously designed pre-trained models whose backdoors can persist after fine-tuning or safety training; the 2023 edition also covered model artifacts in formats such as pickle that allow arbitrary code execution when deserialised |
| [[DefinedTerm/prompt-injection\|Direct prompt injection]] | NISTAML.018 | The primary user supplies in-context instructions that are appended to higher-trust instructions such as the system prompt, to enable misuse, invade privacy or, when LLMs act as agents, manipulate tool use and API calls |
| [[DefinedTerm/jailbreak-prompt\|Jailbreak]] | — | In the 2023 edition, a direct prompt injection for the purpose of model abuse; in the 2025 edition, a direct prompting attack intended to circumvent restrictions placed on model outputs, such as refusal behaviour |
| Information extraction | NISTAML.038 | Extracts memorised training data, the system prompt (prompt extraction, NISTAML.035), sensitive information placed in the model's context such as RAG documents, or the model's architecture and parameters |
| [[DefinedTerm/prompt-injection\|Indirect prompt injection]] | NISTAML.015 | A third party uses resource control to inject instructions into content the system ingests, without interacting with it directly — disrupting availability, steering outputs or hijacking an agent, or leaking information from connected resources and user interactions |

Both editions group manual jailbreak methods into two categories drawn from the literature: *competing objectives* (such as prefix injection, refusal suppression, style injection and role-play) and *mismatched generalisation* (such as special encodings, character and word transformations, and prompt-level transformations). Both also describe optimisation-based attacks and automated model-based red teaming, in which an attacker model, a target model and a judge are used to generate jailbreaks; the 2025 edition notes that universal adversarial triggers found on open-weight models transfer to closed systems, and describes multi-turn attacks such as Crescendo that lead to a jailbreak through seemingly benign prompts. It adds *fine-tuning circumvention* — fine-tuning through public APIs or open weights to remove refusal behaviour or other model-level safety interventions — as an attack that uses model control.

On mitigations, the 2023 edition described training for alignment, prompt instruction and formatting techniques, detection, filtering retrieved inputs, an LLM moderator and interpretability-based detection as offering a measure of protection but not full immunity, and stated that there is no comprehensive or foolproof solution. The 2025 edition organises defences against direct prompting by stage of the deployment lifecycle — training interventions, evaluation (automated assessments, expert red teaming and bug bounties), and deployment-time measures such as prompt formatting, detecting and terminating harmful interactions, input modification, aggregating outputs from perturbed prompts, monitoring and usage restrictions. It states that current-generation models remain highly vulnerable to direct prompt injection, and describes designing systems on the assumption that a model exposed to untrusted input can and will produce malicious output — for example by using several LLMs with different permissions.

### Agents and benchmarks

The 2025 edition adds a section on the security of [[DefinedTerm/ai-agent|AI agents]], software systems that iteratively prompt a model, act on its outputs (for instance by calling tools) and feed the results back. It notes that agents are exposed to direct and indirect prompt injection, that their ability to act lets an attacker hijack them to execute arbitrary code or exfiltrate data, and that security research on agents is still at an early stage.

It also lists public benchmarks for evaluating models' susceptibility to AML attacks — JailbreakBench, AdvBench, HarmBench, StrongREJECT, AgentHarm and Do-Not-Answer for jailbreaks, TrustLLM for six dimensions of trust in LLMs, and AgentDojo for prompt injection against agents — and the open-source tools [[SoftwareApplication/garak|Garak]] and [[SoftwareApplication/pyrit|PyRIT]], intended to help developers find vulnerabilities to AML attacks.

## Open challenges

Both editions close with challenges they consider unresolved:

- **Scale** — training data for large models is spread across many servers that no single organisation controls, which challenges the classic idea of the corporate security perimeter; the 2023 edition added that synthetic content generated at scale can degrade later models.
- **Theoretical limits on robustness** — unlike cryptography, widely used ML algorithms have no information-theoretic security proofs, so designing mitigations is, in the report's words, inherently ad hoc and fallible; detecting adversarial examples has been shown to be as hard as robust classification.
- **Evaluation** — the lack of reliable benchmarks makes results from AML papers routinely incomparable; the 2025 edition adds that new mitigations should be tested adversarially and compared on all trade-offs at once.
- **Supply chain** — information-theoretically undetectable Trojans may be planted in ML models. The 2023 edition said they may only be prevented by controlling access to the model throughout its lifecycle and vetting third-party components; the 2025 edition says that, if proven practical, they would increase the importance of preventing insider threats throughout the supply chain.
- **Trade-offs** — accuracy, adversarial robustness, fairness, explainability and privacy cannot all be maximised at once.
- **Multimodal and quantised models** — combining modalities does not by itself improve robustness, and quantised models inherit the original models' vulnerabilities while adding new weaknesses; the 2025 edition adds that quantisation methods can be exploited to produce a harmful quantised LLM whose full-precision counterpart appears benign.
- **Open versus closed models** (2023 edition) — whether powerful open models should be allowed, a debate the 2023 edition said should be resolved before models become too powerful.
- **Risk management** (2025 edition) — the taxonomy deliberately leaves aside how organisations should decide on developing and using AI systems. Some developers have moved to pre-deployment adversarial testing such as structured [[DefinedTerm/red-team|red teaming]]; citing results that any alignment process that attenuates but does not remove an unwanted behaviour remains vulnerable to adversarial prompting, the 2025 edition says such testing remains useful but that organisations may need practices and measures beyond it.

## How it was made and how it is meant to be used

Both editions state that they result from an extensive literature review, conversations with AML experts and the authors' own research, and that comments on a draft version were incorporated. They aim to standardise terminology and unify earlier attack classification frameworks rather than survey all AML literature, and are complemented by a glossary defining key terms for non-expert readers. NIST states in the 2025 edition that it intends to update the report as new developments emerge.

The report adopts the notions of security, resilience and robustness from the [[DefinedTermSet/ai-risk-management-framework|AI Risk Management Framework]], but makes no recommendations on risk tolerance. The 2025 edition also points to NCSC's machine learning principles and to risk profiles for generative AI that map to the AI Risk Management Framework, and draws on the MITRE ATLAS knowledge base for examples of evasion and poisoning in practice.
