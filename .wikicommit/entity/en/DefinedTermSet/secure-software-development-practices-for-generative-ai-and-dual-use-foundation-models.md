---
title: "Secure Software Development Practices for Generative AI and Dual-Use Foundation Models: An SSDF Community Profile"
type: "schema:DefinedTermSet"
lang: en
aliases: ["NIST SP 800-218A"]
tags: [secure-software-development, generative-ai, ai-security-guidance, united-states]
sources:
  - type: url
    url: 'https://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-218A.pdf'
    hash: sha256:4a9dddc75d439beae9f8ee7c3441600fdf5abdbb5d8ab5b94728e2d2f89be560
    license: public-domain
review_status: pending
generated_at: "2026-10-24"
generated_by: "claude-opus-5-5[1m]"
generated_with: "0.11.0"

properties:
  description: "A community profile of NIST's Secure Software Development Framework (SSDF) version 1.1 for generative AI and dual-use foundation models, published by the US National Institute of Standards and Technology in July 2024 as NIST SP 800-218A. It adds AI-specific recommendations, considerations, notes and informative references to the SSDF's practices and tasks for AI model development, and is meant to be used together with NIST SP 800-218."
  publisher: "National Institute of Standards and Technology"
  version: "NIST SP 800-218A"
  datePublished: "2024-07"
  hasDefinedTerm:
    - "PO.1: Define Security Requirements for Software Development"
    - "PO.2: Implement Roles and Responsibilities"
    - "PO.3: Implement Supporting Toolchains"
    - "PO.4: Define and Use Criteria for Software Security Checks"
    - "PO.5: Implement and Maintain Secure Environments for Software Development"
    - "PS.1: Protect All Forms of Code and Data from Unauthorized Access and Tampering"
    - "PS.2: Provide a Mechanism for Verifying Software Release Integrity"
    - "PS.3: Archive and Protect Each Software Release"
    - "PW.1: Design Software to Meet Security Requirements and Mitigate Security Risks"
    - "PW.2: Review the Software Design to Verify Compliance with Security Requirements and Risk Information"
    - "PW.3: Confirm the Integrity of Training, Testing, Fine-Tuning, and Aligning Data Before Use"
    - "PW.4: Reuse Existing, Well-Secured Software When Feasible Instead of Duplicating Functionality"
    - "PW.5: Create Source Code by Adhering to Secure Coding Practices"
    - "PW.6: Configure the Compilation, Interpreter, and Build Processes to Improve Executable Security"
    - "PW.7: Review and/or Analyze Human-Readable Code to Identify Vulnerabilities and Verify Compliance with Security Requirements"
    - "PW.8: Test Executable Code to Identify Vulnerabilities and Verify Compliance with Security Requirements"
    - "PW.9: Configure Software to Have Secure Settings by Default"
    - "RV.1: Identify and Confirm Vulnerabilities on an Ongoing Basis"
    - "RV.2: Assess, Prioritize, and Remediate Vulnerabilities"
    - "RV.3: Analyze Vulnerabilities to Identify Their Root Causes"
  url: "https://doi.org/10.6028/NIST.SP.800-218A"
---

*Secure Software Development Practices for Generative AI and Dual-Use Foundation Models* is a set of secure development practices for organisations that build or acquire AI models, published by the US National Institute of Standards and Technology (NIST) in July 2024 as Special Publication (SP) 800-218A. It takes the practices and tasks of NIST's Secure Software Development Framework (SSDF) version 1.1 and adds recommendations, considerations, notes and informative references specific to AI model development, in the form of an *SSDF Community Profile* — a baseline of SSDF practices and tasks enhanced to address a particular use case. It supplements the SSDF rather than replacing it: the profile says it should be used in conjunction with NIST SP 800-218, the SSDF itself, and not without it.

## Who wrote it, why and for whom

The profile is the companion resource that Section 4.1.a of [[Legislation/executive-order-14110|Executive Order 14110]] tasked NIST with developing "to incorporate secure development practices for generative AI and for dual-use foundation models." Its authors are Harold Booth, Murugiah Souppaya, Apostol Vassilev and Michael Ogata of NIST, Martin Stanley of the Cybersecurity and Infrastructure Security Agency (CISA), and Karen Scarfone of Scarfone Cybersecurity. It was approved by the NIST Editorial Review Board on 25 July 2024.

It names three primary audiences:

- **AI model producers** — organisations developing their own generative AI and dual-use foundation models, as defined in Executive Order 14110;
- **AI system producers** — organisations developing software that leverages such a model;
- **AI system acquirers** — organisations acquiring a product or service that uses one or more AI systems.

Readers are not expected to be experts in secure software development or AI model development, though the profile notes that such expertise may be needed to implement its practices.

## The problem it addresses

The profile says that developing and using AI models and systems inherits much of the same risk as any other digital system, and identifies challenges particular to this community: the blurring of traditional boundaries between system code and system data, and the use of plain human language to interact with systems. Models, their configuration parameters such as model weights, and the data they interact with can form closed loops that can be manipulated for unintended functionality. It describes AI model development as still "much more of an art than an exact science", and lists risks such as training datasets acquired from unknown or untrusted sources, model weights susceptible to malicious tampering, models too complex to inspect thoroughly, and user queries that can be crafted to produce undesirable output or, if not sanitised, used for injection-style attacks.

## Scope

The profile covers AI model development: data sourcing for, designing, training, fine-tuning and evaluating AI models, and incorporating and integrating them into other software. Consistent with SSDF 1.1 and the executive order, practices for the deployment and operation of AI systems are out of scope, as is most of the data governance and management life cycle beyond the cybersecurity of data used for model development. Its practices do not distinguish between human-written and AI-generated source code, on the assumption that all source code should be evaluated for vulnerabilities before use. It also states a limitation: like the SSDF, it addresses only cybersecurity risk, and other risks to AI systems — data privacy, intellectual property and bias among them — need managing alongside it.

## The practices

The profile's main table keeps the SSDF's four groups of practices. Each practice has tasks; each task has a priority (High, Medium or Low) suggesting its relative importance for AI model development security, AI-specific items marked R (recommendation), C (consideration) or N (note), and informative references. Practices and tasks are unchanged from SSDF 1.1 unless tagged "Modified from SSDF 1.1" or "Not part of SSDF 1.1"; some tasks carry "No additions to SSDF 1.1", meaning the profile adds nothing specific to AI for them.

| Group | Practices | AI-specific additions highlighted by the profile |
| --- | --- | --- |
| Prepare the Organization (PO) | PO.1 Define security requirements for software development; PO.2 Implement roles and responsibilities; PO.3 Implement supporting toolchains; PO.4 Define and use criteria for software security checks; PO.5 Implement and maintain secure environments for software development | Include AI model development in security requirements, roles and training; separate and protect environments including AI model training environments; protect training pipelines and model registries by least privilege; a new task (PO.5.3) to continuously monitor software development environments for suspicious activity |
| Protect Software (PS) | PS.1 Protect all forms of code and data from unauthorized access and tampering; PS.2 Provide a mechanism for verifying software release integrity; PS.3 Archive and protect each software release | Secure storage for models, model weights, pipelines and reward models; new tasks to protect training, testing, fine-tuning and aligning data (PS.1.2) and model weights and configuration parameters (PS.1.3); cryptographic hashes or digital signatures for AI models; tracking the provenance of models and their components |
| Produce Well-Secured Software (PW) | PW.1 Design software to meet security requirements and mitigate security risks; PW.2 Review the software design to verify compliance with security requirements and risk information; PW.3 Confirm the integrity of training, testing, fine-tuning, and aligning data before use; PW.4 Reuse existing, well-secured software when feasible instead of duplicating functionality; PW.5 Create source code by adhering to secure coding practices; PW.6 Configure the compilation, interpreter, and build processes to improve executable security; PW.7 Review and/or analyze human-readable code to identify vulnerabilities and verify compliance with security requirements; PW.8 Test executable code to identify vulnerabilities and verify compliance with security requirements; PW.9 Configure software to have secure settings by default | Include AI-specific vulnerability and threat types in risk modelling; a new practice, PW.3, to confirm the integrity of training, testing, fine-tuning and aligning data before use; verify and scan acquired AI models before use; handle and log inputs (including prompts) and outputs carefully; scan AI models for malware, vulnerabilities and backdoors; test AI models, including by red teaming and adversarial testing |
| Respond to Vulnerabilities (RV) | RV.1 Identify and confirm vulnerabilities on an ongoing basis; RV.2 Assess, prioritize, and remediate vulnerabilities; RV.3 Analyze vulnerabilities to identify their root causes | Log, monitor and analyse inputs and outputs of AI models; give users mechanisms to report security and performance issues; include AI model vulnerabilities in disclosure policies; criteria for when to stop using an AI model or roll back to a previous version |

The new practice PW.3 has three tasks, all "Not part of SSDF 1.1": analyse data for signs of [[DefinedTerm/data-poisoning|data poisoning]], bias, homogeneity and tampering before use (High priority); track the provenance of training, testing, fine-tuning and aligning data and document which data have no known provenance; and include adversarial samples in training and testing data to improve attack prevention. Under PW.1.1, the profile's examples of AI model-specific vulnerability and threat types include poisoning of training data, malicious code or other unwanted content in inputs and outputs, denial-of-service conditions arising from adversarial prompts, supply chain attacks, unauthorised information disclosure, theft of model weights, and misconfiguration of data pipelines.

## How it is meant to be used

The profile describes itself as "not a checklist to follow" but a starting point for a risk-based approach: organisations should adapt, customise and omit items according to their perspective as a model producer, system producer or acquirer, weighing risk, cost, feasibility and applicability. It notes that the final model weights are defined only after training and fine-tuning, which limits how far versioning, lineage and reproducibility can be tracked, and asks organisations to document the parts and artifacts that secure development practices do not cover. Its practices can be integrated into machine learning operations (MLOps) within a continuous integration/continuous delivery pipeline. Because a model may be produced by one organisation and run in a system hosted by another, it expects a shared-responsibility model in which an acquirer can agree with producers which party is responsible for each practice and task.

## Relation to other frameworks

Besides SP 800-218, the profile draws on NIST's work on trustworthy and responsible AI — including the [[DefinedTermSet/ai-risk-management-framework|AI Risk Management Framework]] (AI RMF 1.0) and [[DefinedTermSet/adversarial-machine-learning-a-taxonomy-and-terminology-of-attacks-and-mitigations|Adversarial Machine Learning: A Taxonomy and Terminology of Attacks and Mitigations]] — on NIST's general cybersecurity resources, and on suggestions gathered at a NIST workshop in January 2024. Its informative references map tasks to three sources: the AI RMF 1.0, version 1.1 of the [[DefinedTermSet/owasp-top-10-for-llm-applications|OWASP Top 10 for LLM Applications]], and NIST's adversarial machine learning taxonomy. For risks beyond cybersecurity it points readers to other NIST resources, among them the [[DefinedTermSet/artificial-intelligence-risk-management-framework-generative-artificial-intelligence-profile|AI RMF Generative Artificial Intelligence Profile]]. NIST says it is considering adding a column of implementation examples in a future version.
