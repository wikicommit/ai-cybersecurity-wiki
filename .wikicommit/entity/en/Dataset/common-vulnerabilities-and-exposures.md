---
title: "Common Vulnerabilities and Exposures"
type: "schema:Dataset"
lang: en
aliases: ["CVE", "Common Vulnerability Enumeration"]
tags: [vulnerabilities, vulnerability-management, security-standards]
sources:
  - type: url
    url: 'https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures'
    hash: sha256:7471604d4123b0370117e1f17b6c28beac5aacda044d0bd21faf80291eec0cfd
    license: CC-BY-SA-4.0
review_status: pending
generated_at: "2026-10-19"
generated_by: "claude-opus-5-5[1m]"
generated_with: "0.11.0"

properties:
  description: "A system, launched for the public in September 1999, that provides a reference method and unique common identifiers for publicly known information-security vulnerabilities and exposures. It is maintained by an FFRDC operated by the MITRE Corporation with US Department of Homeland Security funding, and is the basis for the US National Vulnerability Database."
  creator: ["The MITRE Corporation"]
  variableMeasured: ["Description", "Creation date"]
---

The Common Vulnerabilities and Exposures (CVE) system — originally Common Vulnerability Enumeration — provides a reference method for publicly known information-security vulnerabilities and exposures. It is maintained by the United States' Homeland Security Systems Engineering and Development Institute FFRDC, operated by the MITRE Corporation, with funding from the National Cyber Security Division of the US Department of Homeland Security, and was officially launched for the public in September 1999. The Security Content Automation Protocol uses CVE, and CVE IDs are listed on MITRE's system and form the basis of the US National Vulnerability Database (NVD).

## What it is for

In the words the source quotes, CVE is "a dictionary of common names (i.e., CVE Identifiers) for publicly known information security vulnerabilities". Its common identifiers make it easier to share data across separate network security databases and tools and provide a baseline for evaluating the coverage of an organisation's security tools: a report that carries CVE identifiers lets its reader quickly find fix information in CVE-compatible databases. People assigned a CVE identifier for a vulnerability are encouraged to include it in related security reports, web pages and emails, and acquiring one early in an investigation means all later correspondence and coordination can refer to the same vulnerability unambiguously.

## CVE identifiers

MITRE's documentation defines CVE identifiers (also called CVE names, CVE numbers, CVE-IDs or CVEs) as unique, common identifiers for publicly known information-security vulnerabilities in publicly released software packages.

- **Format.** To support more than 9,999 IDs a year (the "CVE10k problem"), the syntax changed in 2014, taking effect on 13 January 2015, to the variable-length form `CVE-YEAR-Arbitrary Digits`: four fixed digits that expand only when needed in a calendar year (`CVE-YYYY-NNNN`, then `CVE-YYYY-NNNNN`, and so on). The scheme remains compatible with earlier IDs, all of which have at least four digits.
- **Candidates.** Identifiers originally began as "candidates" (`CAN-`) that could be promoted to entries (`CVE-`); this practice ended in 2005, and all identifiers are now assigned as CVEs.
- **Lifecycle.** Each entry begins as *reserved*. If accepted as a security vulnerability it is *published* as an official CVE entry; if found not to meet the criteria — for example because it was improperly assigned to an issue that is not a vulnerability, or duplicates an existing entry — MITRE or a CNA can place it in *rejected* status.
- **Scope.** CVEs are for publicly released software, which can include widely used betas and pre-release versions and includes commercial software; custom-built software that is not distributed would historically not get one. For the first two decades of the program, vulnerabilities in services (such as a web-based email provider) were not assigned CVEs unless the issue existed in an underlying, publicly distributed software product, although some CNAs, including MITRE, have begun assigning CVEs to service-based vulnerabilities as far back as 2000 without published official rules on the change.

## Who assigns them

CVEs are assigned by CVE Numbering Authorities (CNAs). Some vendors acted as CNAs before the name and designation were created on 1 February 2005. There are four primary types of assignment:

| Assigner | Role |
| --- | --- |
| The MITRE Corporation | Editor and Primary CNA |
| Vendor CNAs (for example Microsoft, Oracle, HP, Red Hat) | Assign CVE numbers for their own products |
| Third-party coordinators such as the CERT Coordination Center | Assign CVE numbers for products not covered by other CNAs |
| Researchers | Granted the CNA role in one case |

A CVE number may not appear in the MITRE or NVD databases for days, weeks, months or potentially years — because the issue is under embargo (the number is assigned but the issue not yet public), or historically because MITRE lacked the resources to research and write up the entry.

## What a record contains

| Field | What it holds |
| --- | --- |
| Description | A standardised text description of the issue. A common entry is "\*\* RESERVED \*\*", shown when a number has been reserved by MITRE or by a CNA — for instance when a CNA requests a block of numbers in advance, as Red Hat does in blocks of 500 — until the issue is public and MITRE has researched and described it |
| Creation date | The date the entry was created by MITRE, including for CVEs assigned by CNAs; for a block requested in advance, the date the block was assigned to the CNA |

Fields no longer used are Phase (CAN or CVE), Votes (board members voting on whether a candidate should become a CVE), Comments and Proposed (when the issue was first proposed). The MITRE database can be searched through the CVE List Search, and the NVD's through its CVE and CCE vulnerability database search.

## Known problems

- **Vendor discretion.** Under section 7 of the CNA Rules, a vendor that receives a vulnerability report has full discretion over it. This can create a conflict of interest: a vendor may protect its reputation or financial interests by denying a CVE assignment in the first place — a decision MITRE cannot reverse. The "!CVE" (not CVE) project, announced in 2023, collects vulnerabilities denied by vendors that a panel of experts from the project considers valid.
- **Bogus entries.** CVE identifiers have been awarded for bogus issues and issues without security consequences; in response, a number of open-source projects have applied to become the CNA for their own project.

## Funding

On 15 April 2025 it was reported that MITRE's contract with the US government, due to expire the next day, would be allowed to lapse, which reports said would end the program's operational arm, including the assignment of new CVEs, while the database stayed accessible via GitHub. Just before it expired, the contract was extended for 11 months, averting the shutdown. Following the risk of the funding expiring on 16 March 2026, CISA's acting director stated that the program was now fully funded, and the co-founder of the CVE Foundation reported that its funding had been restructured from a discretionary item to one of the core programs to be funded.
