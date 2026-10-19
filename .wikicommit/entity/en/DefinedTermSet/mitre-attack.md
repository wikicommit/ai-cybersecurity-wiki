---
title: "MITRE ATT&CK"
type: "schema:DefinedTermSet"
lang: en
aliases: ["ATT&CK", "Adversarial Tactics, Techniques, and Common Knowledge"]
tags: [threat-intelligence, cybersecurity-frameworks]
sources:
  - type: url
    url: 'https://en.wikipedia.org/wiki/ATT&CK'
    hash: sha256:a22b0c64535efd4d0bcf740d690693c8d99e2080db1dd3475410515ff43cfb60
    license: CC-BY-SA-4.0
review_status: pending
generated_at: "2026-10-19"
generated_by: "claude-opus-5-5[1m]"
generated_with: "0.11.0"

properties:
  description: "A framework created by the Mitre Corporation for classifying and describing cyberattacks and intrusions, published as a public catalog of known attacker techniques in which every technique has an ID. Its tactic categories are broken down into techniques and sub-techniques."
  version: "20"
  datePublished: "2013"
  url: "https://attack.mitre.org/"
---

MITRE ATT&CK (Adversarial Tactics, Techniques, and Common Knowledge) is a guideline for classifying and describing cyberattacks and intrusions. It was created by the Mitre Corporation and released in 2013. It is widely used within cybersecurity because it is a public catalog of known attacker techniques in which every technique has an ID, such as "T1566-Phishing", which gives the cybersecurity industry a shared vocabulary: an analyst can write the ID in a report and every reader will know exactly what is meant.

## What it classifies

Rather than examining the results of an attack (indicators of compromise, or IoCs), ATT&CK identifies tactics that indicate an attack is in progress. Tactics are the "why" of an attack technique. The framework groups the methods of an adversary into tactic categories, such as privilege escalation and command and control, and breaks each category down further into specific techniques and sub-techniques.

## Items: the ATT&CK Matrix for Enterprise

The ATT&CK Matrix for Enterprise is presented as a kanban board-style diagram. In 2022 it defined 14 categories of tactics, techniques and procedures (TTPs) used by cybercriminals, each with its associated techniques and sub-techniques:

| Category | Description | Techniques |
| --- | --- | --- |
| Reconnaissance | Gathering information about a target | 12 |
| Resource Development | Identifying and acquiring resources for the attack | 9 |
| Initial Access | Gaining initial access to a system or network | 11 |
| Execution | Running malicious code on a system | 20 |
| Persistence | Maintaining access to a system or network | 22 |
| Privilege Escalation | Obtaining elevated privileges within a system or network | 13 |
| Defense Evasion | Disabling or evading security measures | 43 |
| Credential Access | Obtaining credentials to access systems or data | 17 |
| Discovery | Identifying additional systems or information within a network | 34 |
| Lateral Movement | Moving laterally within a compromised network | 9 |
| Collection | Collecting data from compromised systems | 17 |
| Command and Control | Establishing communication with compromised systems | 18 |
| Exfiltration | Transferring stolen data from a compromised system | 9 |
| Impact | Taking actions to achieve the attacker's objectives | 15 |

### Example: Reconnaissance

Reconnaissance is the initial stage of information gathering for an eventual cyberattack. As of ATT&CK version 20 it has 12 techniques, including network scanning, [[DefinedTerm/social-engineering|social engineering]] and open-source intelligence (OSINT). Four of them:

| MITRE ID | Technique | Summary |
| --- | --- | --- |
| T1595 | Active Scanning | Active reconnaissance by scanning the target network with a port scanning tool such as Nmap, with vulnerability scanning tools, and with wordlist scanning for common file extensions and software used by the victim |
| T1598 | Phishing for Information | Using social engineering techniques to elicit useful information from the target over a communication channel such as e-mail, including generic [[DefinedTerm/phishing\|phishing]] and spearphishing created to target an individual victim |
| T1592 | Gather Victim Host Information | Discovering the configuration of specific endpoints, such as their hardware, software and administrative configuration (for example Active Directory domain membership), especially security protections such as antivirus and locks |
| T1590 | Gather Victim Network Information | Discovering the target network's configuration, such as its topology, security appliances (network firewall, VPN), IP address ranges, fully qualified domain names and Domain Name System configuration |

## Editions

ATT&CK is versioned using a major.minor scheme. Version 1.0 was released on 16 January 2018, and version 20 on 13 October 2026.

In version 19, released in April 2026, the number of tactic categories rose to 15: the "Defense Evasion" category was split in two. "Stealth" covers behaviour where defenses appear intact despite having been broken by adversaries, and "Defense Impairment" covers behaviour where defenses are actively and visibly broken.

## Related frameworks

ATT&CK is an alternative to the cyber kill chain developed by Lockheed Martin. It is one of the Mitre Corporation's computer security ontologies, alongside the Common Attack Pattern Enumeration and Classification (CAPEC), the Common Weakness Enumeration (CWE), the Common Vulnerability Scoring System (CVSS) and [[Dataset/common-vulnerabilities-and-exposures|Common Vulnerabilities and Exposures (CVE)]].
