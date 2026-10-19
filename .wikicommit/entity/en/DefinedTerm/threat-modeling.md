---
title: "Threat modeling"
type: "schema:DefinedTerm"
lang: en
aliases: ["Threat model"]
tags: [security-engineering, risk-management]
sources:
  - type: url
    url: 'https://en.wikipedia.org/wiki/Threat_model'
    hash: sha256:af4415aa101ea15c239a101e04b427914b796599a379039e7440a6fb96843cbc
    license: CC-BY-SA-4.0
review_status: pending
generated_at: "2026-10-19"
generated_by: "claude-opus-5-5[1m]"
generated_with: "0.11.0"

properties:
  description: "A process by which potential threats, such as structural vulnerabilities or the absence of appropriate safeguards, are identified and enumerated, and countermeasures or controls are prioritized. It gives defenders a systematic analysis of which controls or defenses are needed, given the system, the probable attacker and the assets most likely to be attacked."
---

Threat modeling is a process by which potential threats — such as structural vulnerabilities or the absence of appropriate safeguards — are identified and enumerated, and countermeasures or controls prioritized. It provides defenders with a systematic analysis of which controls or defenses need to be included, given the nature of the system, the probable attacker's profile, the most likely attack vectors and the assets most likely to be attacked. It answers questions such as "Where am I most vulnerable to attack?", "What are the most relevant threats?" and "What do I need to do to safeguard against these threats?"

## Origins

Shortly after shared computing appeared in the early 1960s, people began looking for ways to exploit security vulnerabilities for personal gain, and engineers and computer scientists soon began developing threat modeling concepts for information technology systems.

| Year | Development |
| --- | --- |
| 1977 | Christopher Alexander first presented the concept of architectural patterns, on which early technology-centred threat modeling methodologies were based |
| 1988 | Robert Barnard developed and applied the first profile of an IT-system attacker |
| 1994 | Edward Amoroso put forward the "threat tree", based on decision-tree diagrams, in his book *Fundamentals of Computer Security Technology*; threat trees graphically represent how a potential threat to an IT system can be exploited |
| 1998 | Bruce Schneier published an analysis of cyber risks using attack trees, in which the attacker's goal is the "root node" and the possible means of reaching it are "leaf nodes" |
| 1999 | Microsoft's Loren Kohnfelder and Praerit Garg developed STRIDE, a model for considering attacks relevant to the Microsoft Windows development environment |
| 2003 | OCTAVE (Operationally Critical Threat, Asset, and Vulnerability Evaluation), an operations-centric methodology focused on organizational risk management, was introduced |
| 2004 | Frank Swiderski and Window Snyder's book *Threat Modeling* (Microsoft Press) developed the concept of using threat models to create secure applications |
| 2014 | Ryan Stillions proposed that cyber threats be expressed at different semantic levels, in the Detection Maturity Level (DML) model |
| 2020 | The Threat Modeling Manifesto was published by threat modeling authorities to state the core values and principles every threat modeler should know and follow |
| 2024 | The same authors followed it with a Threat Modeling Capabilities document, a catalogue of capabilities for a threat modeling practice |

Independently of the threat tree, the NSA and DARPA worked on a structured graphical representation of how specific attacks against IT systems could be executed; the result was called "attack trees".

In the DML model, an attack is an instantiation of a threat scenario caused by a specific attacker with a specific goal and a strategy for reaching it. The goal and strategy are the highest semantic levels; tactics, techniques and procedures (TTPs) are intermediate; and the attacker's tools, host and network artifacts, and finally atomic indicators such as IP addresses are the lowest. Current [[DefinedTerm/security-information-and-event-management|SIEM]] tools typically provide indicators only at the lowest levels, so there is a need for SIEM tools that provide threat indicators at higher levels.

## How it is done

All IT-related threat modeling processes begin by creating a visual representation of the application, the infrastructure or both, decomposed into elements to aid the analysis. The representation is then used to identify and enumerate potential threats. How risks are then analysed, threats prioritized and mitigating controls enumerated depends on the methodology used. Approaches can focus on the system in use, on attackers, or on assets.

Most approaches use data flow diagrams (DFDs), developed in the 1970s for system engineers to communicate at a high level how an application causes data to flow, be stored and be manipulated by its infrastructure. DFDs traditionally use four symbols — data flows, data stores, processes and interactors — and in the early 2000s a fifth, trust boundaries, was added to make them more useful for threat modeling. Once the system is decomposed into these five elements, security experts consider each identified threat entry point against all known threat categories, then enumerate mitigating controls or carry out further analysis.

## Methodologies

A threat modeling practice flows from a methodology, and many are available. Threat modeling has typically been implemented using one of five approaches: asset-centric, attacker-centric, software-centric, value- and stakeholder-centric, and hybrid. Judged by the volume of published online content, the best known are the following.

| Methodology | What it is |
| --- | --- |
| STRIDE | An acrostic for Spoofing, Tampering, Repudiation, Information disclosure, Denial of service and Elevation of privilege. It can be used as a simple prompt or checklist, or in more structured approaches such as STRIDE per element. It was one of the approaches Microsoft developed and published, and references to "the" Microsoft methodology commonly mean STRIDE and data flow diagrams |
| PASTA (Process for Attack Simulation and Threat Analysis) | A seven-step, risk-centric methodology for aligning business objectives and technical requirements, taking account of compliance issues and business analysis. It aims at dynamic threat identification, enumeration and scoring, and gives an attacker-centric view from which defenders can develop an asset-centric mitigation strategy |
| The Hybrid Threat Modeling Method | Created by researchers to combine the positive elements of different methodologies, including SQUARE, the Security Cards and Personae Non Gratae |

## Tools

| Tool | Description |
| --- | --- |
| Microsoft Threat Modeling Tool (formerly SDL Threat Modeling Tool) | Free; based on DFDs, it identifies threats using the STRIDE classification and is mainly intended for general use |
| IriusRisk | Community and commercial versions; maintains a living threat model throughout the systems development life cycle, using customizable questionnaires and risk-model libraries, and connects to other tools for automation |
| securiCAD (foreseeti) | For enterprise cybersecurity management; performs automated attack simulations on current and future IT architectures and quantifies risks |
| SD Elements (Security Compass) | A software security requirements management platform with automated threat modeling: threats are generated from a short questionnaire, and countermeasures become tasks for developers |
| [[Organization/owasp\|OWASP]] Threat Dragon | Creates threat model diagrams as part of a secure development lifecycle, follows the Threat Modeling Manifesto, runs as a web or desktop application, and supports STRIDE, LINDDUN, CIA, DIE and PLOT4ai |
| OWASP pytm | A Pythonic framework described as the first Threat-Model-as-Code tool: a system defined in Python can be turned into a DFD, a sequence diagram and a list of threats to the system |

## Beyond IT

Threat modeling is also applied to vehicles and to building and home automation. There, threats to security and privacy — such as information about inhabitants' movement profiles, working times and health — are modeled alongside physical or network-based attacks, which could use smart-building sensors (to spy on inhabitants) and actuators (to unlock doors).

For automobiles, UN R155 identifies at least 69 attack vectors that need to be considered in a risk assessment; any of the frameworks above may be used, and ISO/SAE 21434 may be used to presume conformity. Under the Cyber Resilience Act, which challenges manufacturers of equipment containing digital elements to make it secure, agricultural and off-road equipment manufactured under the Machinery Directive may use any of the frameworks, with guidance from ISO/DIS 24882, to presume conformity.

Similar to threat modeling, risk assessments and threat attack modeling can be used informally in everyday life to address risks such as bullies, and have been used to prioritize military defensive preparations since antiquity.
