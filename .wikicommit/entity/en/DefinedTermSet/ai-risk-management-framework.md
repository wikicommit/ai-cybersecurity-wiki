---
title: "AI Risk Management Framework"
type: "schema:DefinedTermSet"
lang: en
aliases: ["AI RMF", "NIST AI 100-1"]
tags: [ai-governance, risk-management, united-states]
sources:
  - type: url
    url: 'https://nvlpubs.nist.gov/nistpubs/ai/NIST.AI.100-1.pdf'
    hash: sha256:eab5ddae988dae64aa4db18ea950a591498f18e1076835768218a5151a6166bc
    license: public-domain
review_status: pending
generated_at: "2026-10-20"
generated_by: "claude-opus-5-5"
generated_with: "0.11.0"

properties:
  description: "A voluntary framework published by the US National Institute of Standards and Technology to help organisations that design, develop, deploy or use AI systems manage the risks of AI and promote trustworthy and responsible AI. It describes seven characteristics of trustworthy AI and organises risk management into four functions: Govern, Map, Measure and Manage."
  publisher: "National Institute of Standards and Technology"
  version: "1.0"
  datePublished: "2023-01"
  hasDefinedTerm:
    - "GOVERN"
    - "MAP"
    - "MEASURE"
    - "MANAGE"
  url: "https://doi.org/10.6028/NIST.AI.100-1"
---

The Artificial Intelligence Risk Management Framework (AI RMF) is a framework published by the US National Institute of Standards and Technology (NIST) to help organisations that design, develop, deploy or use AI systems manage the risks of AI and promote the trustworthy and responsible development and use of AI systems. AI RMF 1.0 was published in January 2023 as NIST AI 100-1, following a concept paper and two drafts. The Framework is intended to be voluntary, rights-preserving, non-sector-specific and use-case agnostic, and its development was directed by the National Artificial Intelligence Initiative Act of 2020. It is organised in two parts: foundational information about AI risk and trustworthiness, and a "Core" of four functions — GOVERN, MAP, MEASURE and MANAGE — that organisations apply in practice.

## What it covers

The Framework defines an AI system as an engineered or machine-based system that can, for a given set of objectives, generate outputs such as predictions, recommendations or decisions influencing real or virtual environments, adapting the definition from the OECD and ISO/IEC 22989:2022. It defines risk as the composite measure of an event's probability of occurring and the magnitude of its consequences, which may be positive or negative. It is addressed to *AI actors* — in the OECD's definition, those who play an active role in the AI system lifecycle, including organisations and individuals that deploy or operate AI.

NIST argues that AI risks are in many ways unique compared with those of traditional software: AI systems may be trained on data that changes over time, are frequently complex in ways that make failures hard to detect, and are socio-technical, so that risks emerge from the interplay of technical aspects with how a system is used and the social context it is deployed in.

## Trustworthiness characteristics

The Framework describes seven characteristics of trustworthy AI systems, which must be balanced against each other in a system's context of use:

| Characteristic | What the Framework says it involves |
| --- | --- |
| Valid and reliable | Confirmation that the requirements for an intended use are fulfilled, and the ability to perform as required without failure; accuracy and robustness contribute to it. It is a necessary condition of trustworthiness and the base for the others |
| Safe | Not leading, under defined conditions, to a state in which human life, health, property or the environment is endangered |
| Secure and resilient | Withstanding unexpected adverse events or changes and degrading gracefully (resilience), and maintaining confidentiality, integrity and availability through protection mechanisms against unauthorised access and use (security) |
| Accountable and transparent | The extent to which information about the system and its outputs is available to those interacting with it; it relates to all the other characteristics |
| Explainable and interpretable | A representation of the mechanisms underlying the system's operation (explainability), and the meaning of its output in the context of its designed purposes (interpretability) |
| Privacy-enhanced | Norms and practices that safeguard human autonomy, identity and dignity |
| Fair – with harmful bias managed | Concerns for equality and equity, addressing harmful bias and discrimination; NIST identifies three major categories of AI bias — systemic, computational and statistical, and human-cognitive |

Addressing the characteristics individually, according to the Framework, will not ensure trustworthiness: trade-offs are usually involved, such as between interpretability and privacy or between predictive accuracy and interpretability, and trustworthiness is only as strong as its weakest characteristic.

### Security

Under the secure and resilient characteristic, the Framework names common security concerns: [[DefinedTerm/adversarial-example|adversarial examples]], [[DefinedTerm/data-poisoning|data poisoning]], and the exfiltration of models, training data or other intellectual property through AI system endpoints. It points to the NIST Cybersecurity Framework and Risk Management Framework as applicable guidelines. In an appendix on how AI risks differ from traditional software risks, it states that existing frameworks and guidance could not comprehensively address security concerns related to [[DefinedTerm/evasion-attack|evasion]], [[DefinedTerm/model-extraction|model extraction]], [[DefinedTerm/membership-inference-attack|membership inference]], availability or other machine learning attacks, nor account for the complex attack surface of AI systems or other security abuses they enable.

## The Core

The Core organises AI risk management into four functions, each broken down into categories and subcategories of outcomes and actions. The actions are not a checklist, nor are they necessarily an ordered set of steps. GOVERN is a cross-cutting function infused throughout the others; after establishing it, most users would start with MAP and continue to MEASURE or MANAGE, iterating between them.

| Function | Purpose | Categories |
| --- | --- | --- |
| GOVERN | Cultivates a culture of risk management, and connects technical aspects of AI design and development to organisational values and principles | GOVERN 1: policies, processes, procedures and practices for managing AI risk are in place, transparent and implemented effectively; GOVERN 2: accountability structures empower, make responsible and train the appropriate teams; GOVERN 3: workforce diversity, equity, inclusion and accessibility processes are prioritised; GOVERN 4: teams are committed to a culture that considers and communicates AI risk; GOVERN 5: processes are in place for robust engagement with relevant AI actors; GOVERN 6: policies and procedures address risks and benefits from third-party software, data and other supply-chain issues |
| MAP | Establishes the context to frame risks related to an AI system | MAP 1: context is established and understood; MAP 2: the AI system is categorised; MAP 3: capabilities, targeted usage, goals and expected benefits and costs are understood; MAP 4: risks and benefits are mapped for all components, including third-party software and data; MAP 5: impacts on individuals, groups, communities, organisations and society are characterised |
| MEASURE | Uses quantitative, qualitative or mixed methods to analyse, assess, benchmark and monitor AI risk and its impacts | MEASURE 1: appropriate methods and metrics are identified and applied; MEASURE 2: AI systems are evaluated for trustworthy characteristics; MEASURE 3: mechanisms for tracking identified risks over time are in place; MEASURE 4: feedback about the efficacy of measurement is gathered and assessed |
| MANAGE | Allocates risk resources to mapped and measured risks, including plans to respond to, recover from and communicate about incidents | MANAGE 1: risks are prioritised, responded to and managed; MANAGE 2: strategies to maximise benefits and minimise negative impacts are planned and implemented; MANAGE 3: risks and benefits from third-party entities are managed; MANAGE 4: risk treatments, including response, recovery and communication plans, are documented and monitored |

After completing the MAP function, according to the Framework, users should have enough contextual knowledge to make an initial go/no-go decision about whether to design, develop or deploy an AI system. Where a system presents unacceptable negative risk — such as imminent significant negative impacts, severe harms actually occurring, or catastrophic risks — development and deployment should cease in a safe manner until the risks can be managed.

## How it is meant to be used

The Framework can be used to prioritise risk but does not prescribe risk tolerance, which it treats as highly contextual; organisations are to follow existing regulations and guidelines for risk criteria, and define reasonable tolerances where none exist. Users may apply all categories and subcategories or select among them. It recommends integrating AI risk management into broader enterprise risk management, alongside risks such as cybersecurity and privacy.

*Profiles* implement the functions, categories and subcategories for a particular setting. Use-case profiles address a specific application, such as hiring or fair housing; temporal profiles describe a Current Profile and a Target Profile, whose comparison reveals gaps to address; and cross-sectoral profiles cover risks common across sectors, such as the use of large language models. The Framework does not prescribe profile templates.

The Framework is accompanied by the NIST AI RMF Playbook, an online resource of suggested, voluntary actions for achieving its outcomes, and by an AI RMF Roadmap for priority research and guidance.

## Editions

AI RMF 1.0 was published in January 2023. NIST describes the Framework as a living document: it uses a two-number versioning system in which the first number marks the generation of the Framework and its companion documents and changes only with major revisions, while minor revisions are tracked as ".n" after it, with changes recorded in a version control table. A review with formal input from the AI community is expected no later than 2028, and NIST plans to update the Playbook frequently.

## How it was made

NIST developed the Framework in collaboration with the private and public sectors, through a formal Request for Information, three workshops, public comments on a concept paper and two drafts, public forums and many small-group meetings. Its development was guided by attributes NIST set out at the start: to be risk-based, resource-efficient, pro-innovation and voluntary; consensus-driven and openly developed; written in plain language; outcome-focused and non-prescriptive; law- and regulation-agnostic; and a living document.

## Relation to other frameworks and standards

The Framework draws its definitions from standards such as ISO 31000:2018, ISO/IEC TS 5723:2022 and ISO 9000:2015, and adapts its lifecycle dimensions from the OECD Framework for the Classification of AI systems, adding an emphasis on test, evaluation, verification and validation (TEVV). It shares features with the NIST Cybersecurity Framework, Privacy Framework, Risk Management Framework and the Secure Software Development Framework — like most risk management approaches they are outcome-based and structured around a core of functions, categories and subcategories — and NIST suggests these may inform security and privacy considerations within the AI RMF's MAP, MEASURE and MANAGE functions. Evaluations of the Framework's own effectiveness are left to future NIST work with the AI community.
