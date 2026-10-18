---
title: "Supply chain attack"
type: "schema:DefinedTerm"
lang: en
tags: [software-supply-chain, advanced-persistent-threat]
sources:
  - type: url
    url: 'https://en.wikipedia.org/wiki/Supply_chain_attack'
    hash: sha256:fe2f00b4a32818c6ead5868a91499ccbda8ea70c980c910ffd441df067f9e439
    license: CC-BY-SA-4.0
review_status: pending
generated_at: "2026-10-18"
generated_by: "claude-opus-5-5[1m]"
generated_with: "0.11.0"

properties:
  description: "A cyber-attack that seeks to damage an organization by targeting less secure elements in its supply chain, in software or hardware — for example by tampering with the manufacture or distribution of a product, or by using a low-level software component to inject malicious code into the software that depends on it."
---

A supply chain attack is a cyber-attack that seeks to damage an organization by targeting less secure elements in its supply chain. It can occur in any industry — from the financial sector and the oil industry to government — and in software or hardware; attackers typically tamper with the manufacturing or distribution of a product by installing malware or hardware-based spying components. Symantec's 2019 Internet Security Threat Report states that supply chain attacks increased by 78 percent in 2018.

## Meaning

The term is broad and has no universally agreed definition. In cybersecurity it is used in two main senses:

| Sense | What is attacked |
| --- | --- |
| Hardware tampering | Electronics such as computers, ATMs, power systems or factory data networks are physically tampered with to install undetectable malware that harms a player further down the supply chain network |
| Software supply chain | An apparently low-level or unimportant software component used by other software is used to inject malicious code into the larger software that depends on it |

In a more general sense a supply chain attack need not involve electronics at all — a 2010 theft of US$80 million of prescription drugs from a pharmaceutical company's supply warehouse could also be described as one.

## How attacks proceed

Supply chain attacks on information systems generally begin with an advanced persistent threat (APT) that identifies the member of the supply network with the weakest cybersecurity in order to reach the target organization. Rather than attacking a large entity such as the United States government directly, attackers usually target the third-party software it uses, which is often less well protected. Supply chain networks are considered particularly vulnerable because of their many interconnected components; an investigation by Verizon Enterprise found that 92% of the security incidents in its survey occurred among small firms. APTs may also physically tamper with a product during production: in October 2008 European law-enforcement officials uncovered a credit-card fraud ring that used untraceable devices inserted into credit-card readers made in China, with estimated losses of US$100 million.

The source names several routes in the examples it gives:

- compromised software updates (SolarWinds Orion, M.E.Doc, Notepad++, eScan);
- infected, pirated copies of popular compilers posted on pirate websites, such as corrupted versions of Apple's Xcode and Microsoft Visual Studio;
- a backdoor inserted into a widely used open-source library (XZ Utils);
- typosquatted packages in a public package registry (npm);
- credentials stolen from a third-party supplier (Target);
- malicious code injected into a website's payment page (British Airways);
- malware placed on ATMs by someone with insider access, such as a technician.

## Risks

The risk is not limited to information technology: supply chain attacks affect the oil industry, large retailers, the pharmaceutical sector and virtually any industry with a complex supply network. The Information Security Forum attributes the risk to the information sharing with suppliers that a supply chain needs in order to function, noting that information compromised in the supply chain can be as damaging as information compromised inside the organization. A researcher at the National University of Computer and Emerging Sciences links it to globalization, decentralization and outsourcing, which increase the number of exposure points, and describes an attack on a supply chain as the most destructive way to damage many linked entities at once because of its ripple effect. Poorly managed supply chain management systems can lead to loss of sensitive customer information, disruption of manufacturing, and reputational damage.

## Examples

| When | Incident | What the source reports |
| --- | --- | --- |
| Nov–Dec 2013 | Target | Malware in the point-of-sale system of over 1,800 US stores exposed around 40 million customers' cards; investigators suspect the attackers entered using credentials stolen from an HVAC supplier, though this was not officially confirmed |
| — | Stuxnet | A computer worm targeting industrial control systems, widely believed to be a joint US–Israeli operation (neither government has confirmed it), introduced into Iran's Natanz facility via infected USB drives |
| March 2014 (Tyupkin) | ATM malware (Suceful, Plotus, Tyupkin, GreenDispenser) | Malware placed on ATMs by someone with insider access, letting attackers capture card data or withdraw cash |
| June 2017 | NotPetya / M.E.Doc | Security researchers identified a compromised update of the Ukrainian financial software M.E.Doc as a likely initial vector for NotPetya; some analysts called it a supply chain attack, though the exact method was not definitively identified, and the developers first denied the claim |
| Aug–Sep 2018 | British Airways | Code injected into the website's payment section sent card data to a look-alike domain; Magecart is believed to be behind it, and about 380,000 customers were affected |
| 2020 | SolarWinds | Attackers described by the source as Russian hackers injected malicious code into updates of the Orion network management software; about 18,000 entities were affected, and fewer than ten US government agencies were confirmed compromised. It is described as the first documented Golden SAML attack |
| 2021 | Microsoft Exchange Server | Flaws in self-hosted Exchange Server were used to install a back door in more than 20,000 US organizations |
| July 2021 | Kaseya VSA | The REvil group exploited a vulnerability in Kaseya's remote monitoring and management software, affecting about 60 managed service providers and over 1,000 companies |
| March 2023 | 3CX | Malicious installers of the 3CX Phone System app delivered an infostealer; use of the Gopuram backdoor suggested the North Korean group Lazarus |
| March 2024 | XZ Utils backdoor | Malicious code in versions 5.6.0 and 5.6.1 of xz/liblzma could, with a common third-party SSH patch, let an attacker break sshd authentication; mainly development-branch Linux distributions were affected |
| October 2024 | npm typosquatting | More than 287 typosquatted packages used an Ethereum smart contract to tell installed malware the address of its command-and-control server, so the address could be changed if a server was taken down |
| June–Dec 2025 | Notepad++ | Attackers compromised the update infrastructure at the hosting-provider level and redirected update traffic to their servers; researchers assessed the actor as a Chinese state-sponsored group, and Rapid7 attributed it to Lotus Blossom |
| 20 January 2026 | eScan | Attackers breached a regional update server of the eScan antivirus and replaced a legitimate component with malware for about an hour; no attribution has been made |

## Prevention

Approaches to prevention centre on supply chain resilience — in the words of one supply chain risk management expert, "the ability of the supply chain to cope with unexpected disturbances", which includes recognising company-wide where the supply chain is most susceptible to infiltration.

| Actor | Measures described |
| --- | --- |
| United States government | Executive Order 14028, *Improving the nation's cybersecurity* (12 May 2021), tasked NIST and other agencies with enhancing US cybersecurity; on 11 July 2021 NIST, with CISA and OMB, delivered guidance for users of critical software and for minimum vendor testing of the security and integrity of the software supply chain, followed by further supply chain software guidelines on the order's timeline. The Comprehensive National Cybersecurity Initiative and the Cyberspace Policy Review direct federal funding to global supply chain risk management |
| United Kingdom government | Efforts announced in March 2015 to protect small and medium-sized enterprises, including measures to improve supply chain resilience, and the Cyber Essentials Scheme |
| Financial institutions | The Depository Trust and Clearing group governs vulnerability management across its supply chain, including where software was coded and hardware manufactured; a 2014 PwC report recommends that executive teams take ownership of cyber risk |
| Security firms | FireEye recommends a small supplier base, stringent vendor controls (approved protocols, site audits) and security built into design; a Kaspersky Lab researcher recommends security policies and education, network security, system administration and specialised controls such as patching, application control, whitelisting and a default-deny mode |
| Security vendors as suppliers | A 2025 study by the Austrian Chamber of Commerce and AV-Comparatives found that only 3 of 14 security vendors examined offered assurances such as a software bill of materials, transparent data storage, detailed incident reports and facilities for customers to inspect source code and updates |
