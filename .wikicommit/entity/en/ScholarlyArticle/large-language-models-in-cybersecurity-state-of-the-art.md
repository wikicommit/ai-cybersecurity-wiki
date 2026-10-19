---
title: "Large Language Models in Cybersecurity: State-of-the-Art"
type: "schema:ScholarlyArticle"
lang: en
tags: [large-language-models, ai-for-defence, ai-assisted-attacks, survey]
sources:
  - type: url
    url: 'https://arxiv.org/html/2402.00891'
    hash: sha256:6b1a2a07e0780fe58b3d4d689493f8a3427f6439557a9d6a09f4c36e8dad3844
    license: CC-BY-4.0
review_status: pending
generated_at: "2026-10-19"
generated_by: "claude-opus-5-5[1m]"
generated_with: "0.11.0"

properties:
  description: "A literature survey of how large language models are used both to defend computer systems and to attack them. It sorts defensive work by the functions of the NIST Cybersecurity Framework and offensive work by MITRE ATT&CK tactics, and finds that response and recovery after an attack have received little research."
  author: ["Farzad Nourmohammadzadeh Motlagh", "Mehrdad Hajizadeh", "Mehryar Majd", "Pejman Najafi", "Feng Cheng", "Christoph Meinel"]
  datePublished: "2024-01-30"
  keywords: ["LLM", "Large Language Model", "AI", "cybersecurity", "advanced threats", "cyberattacks", "cyberdefense", "privacy and security"]
---

"Large Language Models in Cybersecurity: State-of-the-Art" is a survey of published research on large language models (LLMs) — neural networks that learn from textual data to process language-related tasks, in the paper's definition — as tools for both cyber defence and cyberattack. Its starting point is what the authors call the dual nature of LLMs: the same models that can analyse security logs, detect anomalies and suggest vulnerability fixes can also be used by attackers to generate malware, evade defences, obtain credentials and write personalised phishing messages. The survey sets out to characterise both sides and to identify where research is missing.

The paper is a preprint, posted to arXiv as 2402.00891v1 under the cs.CR subject class on 30 January 2024. Its authors are Farzad Nourmohammadzadeh Motlagh, Mehryar Majd, Pejman Najafi, Feng Cheng and Christoph Meinel of the Hasso Plattner Institute for Digital Engineering, University of Potsdam, and Mehrdad Hajizadeh of Technische Universität Chemnitz.

## How the survey is organised

The survey classifies the work it reviews with two established frameworks, one for each side:

| Side | Framework used | Categories |
| --- | --- | --- |
| Defensive applications | NIST Cybersecurity Framework | Identify, Protect, Detect, Respond, Recover |
| Adversarial applications | MITRE ATT&CK tactics | Reconnaissance, Initial Access, Execution, Defense Evasion, Credential Access, Collection, Command and Control |

The authors chose the NIST framework for its effectiveness and popularity in cyber defence. Each reviewed study is placed in one or more categories, and the survey summarises them in two tables listing each paper's year, category, application and the model or models it used.

## Defensive applications

The survey groups the defensive literature as follows, reporting each study's claims as that study's own:

- **Identify** (understanding an organisation's cybersecurity risk): work proposing LLMs for risk assessment and enterprise risk management, including building a risk matrix from user reviews of applications.
- **Protect** (safeguards): LLM-based web content filtering by URL categorisation; generating honeywords — decoy passwords — with GPT-3 to trap attackers; using LLMs for Capture The Flag tasks and certification questions in security training; and automated vulnerability repair, including a three-step loop in which a bounded model checker finds a security property violation, an LLM proposes corrected code, and the checker re-verifies it. The survey reports that cited repair work found LLMs fully effective on simulated vulnerabilities but challenged by real-world ones, and that a cited user study found AI-assisted programmers introduced security flaws at a rate below ten percent.
- **Detect** (identifying cybersecurity events): anomaly detection in system logs; transformer-based vulnerability detection in code; LLM-assisted penetration testing, including [[ScholarlyArticle/pentestgpt-evaluating-and-harnessing-large-language-models-for-automated-penetration-testing|PentestGPT]], which the survey describes as an automated system of three self-interacting modules for reasoning, generation and parsing; cybersecurity-specific BERT models trained on cyber threat intelligence; smart-contract auditing; red-team scenario development; [[DefinedTerm/phishing|phishing]] website detection; and detection of logical vulnerabilities such as broken access control in web applications. For smart contracts, the survey notes that one cited study found LLMs frequently produce false positives.
- **Respond** (acting on a detected incident): LLM-driven honeypots that keep an attacker engaged across several commands or sessions, and LLM-generated replies to scam emails meant to waste scammers' time and resources, which the survey notes need significant storage and computing power.

The survey's table assigns no reviewed study to the Recover function.

## Adversarial applications

On the attack side the survey reviews studies in which LLMs:

- assist **reconnaissance**, for example by writing scripts that scrape websites for information about potential victims;
- support **initial access**, by generating phishing websites and emails, adopting personas to make spear-phishing and other social-engineering messages more convincing, and, in the case of the GPT-2-based PassGPT, generating and guessing passwords trained on password leaks;
- help **execution**, by generating malware or code that performs malicious actions, some of which, according to the cited studies, went undetected by antivirus or endpoint detection and response products;
- aid **defense evasion**, through obfuscation, process injection and other techniques, and through clickjacking, browser fingerprinting and content encoding that hide phishing sites from automated anti-phishing crawlers;
- support **credential access** and **collection**, for example by generating credential-harvesting input forms and hidden iFrame code; and
- act as part of **command and control**, through an LLM plugin used to relay commands between a victim's machine and an attacker's server.

The survey also names WormGPT and FraudGPT as AI tools used by cybercriminals: WormGPT to automate personalised phishing emails, and FraudGPT to create content persuading users to click a generated link.

## Key Points

- The survey frames LLM-driven offensive approaches in cybersecurity in line with MITRE ATT&CK, and LLM-empowered defensive strategies in line with the NIST Cybersecurity Framework.
- Most of the defensive studies it collected concern the Protect and Detect functions of the NIST framework; the Identify and Respond functions have fewer, and Recover in particular is a research gap.
- The authors call for further research on LLM-based solutions for responding to attacks and recovering from them, given the roles these play in the cybersecurity lifecycle.
- Among the attack studies it reviewed, most concentrate on the initial access, defense evasion and execution tactics, so the authors advise security professionals to prioritise these phases when developing protection against LLM-based attacks.
- The authors conclude that there are numerous works on the opportunities of defensive LLM applications but a lack of research examining the risks of offensive applications.
