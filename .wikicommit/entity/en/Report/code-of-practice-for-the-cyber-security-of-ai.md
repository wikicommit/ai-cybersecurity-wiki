---
title: "Code of Practice for the Cyber Security of AI"
type: "schema:Report"
lang: en
tags: [ai-security-guidance, ai-governance, secure-by-design, united-kingdom]
sources:
  - type: url
    url: 'https://www.gov.uk/government/publications/ai-cyber-security-code-of-practice/code-of-practice-for-the-cyber-security-of-ai'
    hash: sha256:1d47675e0b18ff0d381594161111c29625a7c6572b6f83ede041455c2deca14b
    license: OGL-UK-3.0
review_status: pending
generated_at: "2026-10-24"
generated_by: "claude-opus-5-5[1m]"
generated_with: "0.11.0"

properties:
  description: "A voluntary code of practice published by the UK government on 31 January 2025 that sets baseline cyber security requirements for AI systems. It sets out thirteen principles across five phases of the AI lifecycle — secure design, development, deployment, maintenance and end of life — and assigns each to the stakeholders in the AI supply chain primarily responsible for it."
  author: ["Department for Science, Innovation and Technology", "Department for Digital, Culture, Media & Sport"]
  datePublished: "2025-01-31"
---

The *Code of Practice for the Cyber Security of AI* is a voluntary code published by the UK government on 31 January 2025 that sets out baseline cyber security requirements for AI systems. It is published on GOV.UK as guidance from two government departments, the Department for Science, Innovation and Technology (DSIT) and the Department for Digital, Culture, Media & Sport, within the *AI Cyber Security Code of Practice* publication. It is the first part of what the government describes as a two-part intervention on the cyber security risks to AI: the voluntary Code is to be used to help create a global standard in the European Telecommunication Standards Institute (ETSI) setting baseline security requirements.

## Why a separate code for AI

The government argues that a code focused specifically on the cyber security of AI is needed because AI has distinct differences from software, citing security risks from [[DefinedTerm/data-poisoning|data poisoning]], model obfuscation and indirect [[DefinedTerm/prompt-injection|prompt injection]], and operational differences in data management. It also says software needs to be secure by design and that stakeholders in the AI supply chain need clarity on what baseline security requirements to implement.

According to the Code, the intervention was endorsed by 80% of respondents to a DSIT call for views held from 15 May to 9 August 2024, with support for individual principles ranging from 83% to 90%. It builds on the NCSC's [[Report/guidelines-for-secure-ai-system-development|Guidelines for Secure AI Development]], and, under DSIT's modular approach to cyber security codes of practice, AI stakeholders are told to treat it as an addendum to the Software Code of Practice.

## Scope and audience

The Code covers AI systems, including systems that incorporate deep neural networks such as generative AI, and treats "AI security" as a subset of cyber security. It is not designed for academics who create and test AI systems only for research purposes and will not deploy them. Acknowledging that international frameworks have no consistent view of what forms the AI lifecycle, it groups its principles into five phases: secure design, secure development, secure deployment, secure maintenance and secure end of life.

It defines the stakeholder groups that make up the AI supply chain and indicates, for each principle, which of them are primarily responsible for implementing it. A single entity may hold several roles.

| Stakeholder | Who it covers |
| --- | --- |
| Developers | Businesses, organisations or individuals responsible for creating or adapting an AI model or system, proprietary or open-source |
| System Operators | Organisations responsible for embedding or deploying an AI model and system in their infrastructure, including those that do so as a contracted service |
| Data Custodians | Those who control data permissions and the integrity of data used for an AI model or system, and set policies for how it is used |
| End-users | Employees and UK consumers who use an AI model and system for any purpose |
| Affected entities | Individuals and technologies, such as apps and autonomous systems, that do not necessarily interact with the deployed system |

The Code gives examples of where different kinds of organisation fall: software vendors offering AI services are likely to be Developers; an organisation that only uses third-party AI components is likely to be a System Operator; and AI vendors that sell models and components but play no role in developing or deploying them are not likely to be in scope. It notes that some provisions for Developers are less applicable to AI systems involving open-source models.

## The thirteen principles

Each principle is made up of numbered provisions. Following standards-body wording, "shall" marks a requirement of the voluntary Code and "should" a recommendation. Each principle also opens by signposting related standards and publications.

| Phase | Principle | Primarily applies to | Examples of provisions |
| --- | --- | --- | --- |
| Secure design | 1. Raise awareness of AI security threats and risks | System Operators, Developers, Data Custodians | Include AI security content in cyber security training, tailored to roles; train developers in secure coding and design specific to AI |
| Secure design | 2. Design your AI system for security as well as functionality and performance | System Operators, Developers | Assess business requirements and AI security risks before creating a system; design systems to withstand adversarial AI attacks, unexpected inputs and failure; grant the system only the permissions on other systems that it needs |
| Secure design | 3. Evaluate the threats and manage the risks to your AI system | Developers, System Operators | Threat modelling that addresses AI-specific attacks such as data poisoning, model inversion and [[DefinedTerm/membership-inference-attack\|membership inference]]; manage risks from superfluous model functionality; pass on threats that Developers cannot resolve |
| Secure design | 4. Enable human responsibility for AI systems | Developers, System Operators | Build in capabilities for human oversight; make outputs easy for humans to assess; tell End-users about prohibited use cases |
| Secure development | 5. Identify, track and protect your assets | Developers, System Operators, Data Custodians | Keep an inventory of assets; tailor disaster recovery plans to attacks on AI; protect training and test data; protect confidential training data or model weights |
| Secure development | 6. Secure your infrastructure | Developers, System Operators | Secure APIs, models, data and pipelines; limit model access rates on external APIs; separate development and tuning environments; publish a vulnerability disclosure policy; maintain AI incident management and recovery plans |
| Secure development | 7. Secure your supply chain | Developers, System Operators, Data Custodians | Follow secure software supply chain processes; justify and document use of poorly documented or secured components; re-run evaluations on released models; tell End-users before models are updated |
| Secure development | 8. Document your data, models and prompts | Developers | Keep an audit trail of system design; release cryptographic hashes for model components; document where public training data came from and when it was obtained; log changes to system prompts |
| Secure development | 9. Conduct appropriate testing and evaluation | Developers, System Operators | Test released models and systems as part of a security assessment; use independent security testers; check that outputs do not allow reverse engineering of the model or training data |
| Secure deployment | 10. Communication and processes associated with End-users and Affected Entities | (not stated) | Tell End-users how their data will be used, accessed and stored; provide guidance including limitations and failure modes; support End-users and Affected Entities after a cyber security incident |
| Secure maintenance | 11. Maintain regular security updates, patches and mitigations | Developers, System Operators | Provide and deliver security updates; treat major updates as a new model version for testing; support System Operators in responding to model changes |
| Secure maintenance | 12. Monitor your system's behaviour | Developers, System Operators | Log system and user actions; analyse logs for anomalies, breaches and unexpected behaviour such as data drift or poisoning; monitor performance for changes that could affect security |
| Secure end of life | 13. Ensure proper data and model disposal | Developers, System Operators | Involve Data Custodians and securely dispose of assets when transferring ownership; securely delete data and configuration when decommissioning |

## Implementation guide and the planned standard

In response to feedback from the call for views, the government produced an implementation guide to help organisations meet the Code's requirements, developed from a review of software and AI standards and frameworks and of documents from other governments and regulators. The government plans to submit both the Code and the guide to ETSI so that the future standard is accompanied by a guide, and says it will update the Code and guide to mirror the future ETSI global standard. The Code also reminds stakeholders that where an AI system uses personal data they may have data protection obligations, and will need to consult UK data protection guidance offered by the ICO.

## Glossary

An annex defines terms used in the Code, among them adversarial AI, adversarial attack, data poisoning, guardrails, inference attack, model inversion, prompt, system prompt and [[DefinedTerm/threat-modeling|threat modelling]]. It defines data poisoning, for example, as "a type of adversarial attack where malicious data is introduced into training datasets to compromise the AI system's performance or behaviour."
