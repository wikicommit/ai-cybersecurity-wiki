---
title: "Guidelines for secure AI system development"
type: "schema:Report"
lang: en
tags: [secure-by-design, ai-security-guidance, ai-governance]
sources:
  - type: url
    url: 'https://www.ncsc.gov.uk/files/Guidelines-for-secure-AI-system-development.pdf'
    hash: sha256:4717a362acdad4fe3b98557e60bae92c6e966aa3a578ad1f7613d16c85fb0723
    license: OGL-UK-3.0
review_status: pending
generated_at: "2026-10-20"
generated_by: "claude-opus-5-5[1m]"
generated_with: "0.11.0"

properties:
  description: "Guidance published in 2023 by the UK National Cyber Security Centre (NCSC), the US Cybersecurity and Infrastructure Security Agency (CISA) and international partner agencies for providers of systems that use AI. It sets out considerations and mitigations for four stages of the AI system development life cycle: secure design, secure development, secure deployment, and secure operation and maintenance."
  author: ["UK National Cyber Security Centre (NCSC)", "US Cybersecurity and Infrastructure Security Agency (CISA)"]
  datePublished: "2023"
---

Guidelines for secure AI system development is a guidance document for providers of any systems that use artificial intelligence (AI), whether built from scratch or on top of tools and services provided by others. It is published by the UK National Cyber Security Centre (NCSC) and the US Cybersecurity and Infrastructure Security Agency (CISA) together with a group of international partner agencies, and carries a Crown copyright date of 2023. Its stated aim is to help providers build AI systems that function as intended, are available when needed, and work without revealing sensitive data to unauthorised parties.

## Who issued it and for whom

Besides the NCSC and CISA, the partners named in the document include the US Federal Bureau of Investigation and National Security Agency, government cyber security and intelligence bodies from Australia, Canada, New Zealand, France, Germany, Estonia, the Czech Republic, Norway, Israel, Italy, Singapore and the Republic of Korea, Chile's Government CSIRT, Nigeria's National Information Technology Development Agency, Poland's Ministry of Digital Affairs and NASK National Research Institute, and two Japanese government bodies. A list of further organisations — including AI companies, research institutes and universities — is acknowledged as having contributed to its development.

The document is aimed primarily at providers of AI systems who use models hosted by an organisation or external application programming interfaces (APIs), but urges all stakeholders — data scientists, developers, managers, decision-makers and risk owners — to read it. It notes that not all of the guidelines will apply to every organisation, and that they should be considered alongside an organisation's use cases and threat profile. It is released on a TLP:CLEAR basis.

## Why it treats AI security as different

The guidelines use "AI" to mean machine learning (ML) applications specifically, as opposed to non-ML approaches such as rule-based systems. Alongside existing cyber security threats, they say, AI systems are subject to new types of vulnerability. The document uses [[DefinedTerm/adversarial-machine-learning|adversarial machine learning]] (AML) for the exploitation of fundamental vulnerabilities in ML components, including hardware, software, workflows and supply chains, which can let attackers affect a model's classification or regression performance, perform unauthorised actions, or extract sensitive model information. Examples it gives are [[DefinedTerm/prompt-injection|prompt injection]] attacks against large language models and deliberately corrupting training data or user feedback ([[DefinedTerm/data-poisoning|data poisoning]]).

It also argues that when development moves fast, as it does with AI, security can become a secondary consideration, and that security must instead be a core requirement throughout the system's life cycle.

## Who is responsible

The document describes a simple model of two parties — a "provider" responsible for data curation, algorithmic development, design, deployment and maintenance, and a "user" who provides inputs and receives outputs — and notes that this is becoming less common as providers incorporate third-party software, data, models and services. Because users typically lack the visibility or expertise to evaluate the risks of the systems they use, it says that, in line with secure-by-design principles, providers of AI components should take responsibility for the security outcomes of users further down the supply chain: implementing controls where possible, making the most secure option the default, and, where a risk cannot be mitigated, informing downstream users of the risks they accept and advising them on secure use. Where compromise could cause tangible or widespread physical or reputational damage, significant loss of business operations, leakage of sensitive information or legal implications, AI cyber security risks should be treated as critical.

## The four areas of the guidelines

| Area | What it covers | Examples of what the guidelines ask for |
| --- | --- | --- |
| 1. Secure design | Understanding risks and [[DefinedTerm/threat-modeling\|threat modelling]], and trade-offs in system and model design | Raising staff awareness of AI threats; modelling threats to the system; designing for security as well as functionality, including supply chain due diligence, treating imported third-party models or serialised weights as untrusted code, restricting actions AI components can trigger, and secure defaults with least privilege; weighing security when selecting a model |
| 2. Secure development | Supply chain security, documentation, and asset and technical debt management | Securing the AI supply chain (with reference to resources such as Supply Chain Levels for Software Artifacts); identifying, tracking and protecting assets such as models, data, prompts and logs; documenting data, models and prompts (for example with model cards, data cards and software bills of materials); managing technical debt |
| 3. Secure deployment | Protecting infrastructure and models from compromise, threat or loss, incident management, and responsible release | Securing infrastructure with access controls and segregation; protecting the model continuously against attackers who might reconstruct its functionality or training data, including by sharing cryptographic hashes or signatures of model files and datasets; developing incident management procedures; releasing only after security evaluation such as benchmarking and [[DefinedTerm/red-team\|red teaming]]; making the secure setting the default |
| 4. Secure operation and maintenance | Actions once a system is deployed: logging and monitoring, update management and information sharing | Monitoring the system's behaviour and its inputs, including detection of out-of-distribution or adversarial inputs; automated, secure-by-design updates; taking part in information-sharing communities and publishing bulletins in response to vulnerability disclosures |

On confidentiality, the guidelines note that privacy-enhancing technologies such as [[DefinedTerm/differential-privacy|differential privacy]] or homomorphic encryption can be used, where appropriate, to explore or assure levels of risk.

## Approach and alignment

The guidelines follow a "secure by default" approach and are closely aligned with the NCSC's Secure development and deployment guidance, the National Institute of Standards and Technology (NIST) Secure Software Development Framework, and the secure-by-design principles published by CISA, the NCSC and international cyber agencies. Those principles prioritise taking ownership of security outcomes for customers, embracing radical transparency and accountability, and building organisational structure and leadership so that secure by design is a top business priority. The document says the guidelines should be considered together with established cyber security, risk management and incident response practice.

Its further-reading section points to related material grouped under AI development, cyber security and risk management — among them the NCSC's Principles for the security of machine learning, the documents produced under the [[Project/hiroshima-ai-process|G7 Hiroshima AI Process]], MITRE ATLAS (described as a knowledge base of adversary tactics, techniques and case studies for ML systems, modelled after and linked to [[DefinedTermSet/mitre-attack|MITRE ATT&CK]]), the NIST AI Risk Management Framework, and a list of open-source projects for security-testing AI models.
