---
title: "garak"
type: "schema:SoftwareApplication"
lang: en
aliases: ["generative AI red-teaming & assessment kit"]
tags: [red-teaming, llm-security, vulnerability-scanning, open-source]
sources:
  - type: url
    url: 'https://en.wikipedia.org/wiki/Garak_(software)'
    hash: sha256:043c37ec8cc4fd1ef992d29d8577ff96fd3e3845255134b28dff0040e21bfef9
    license: CC-BY-SA-4.0
review_status: pending
generated_at: "2026-10-19"
generated_by: "claude-opus-5-5[1m]"
generated_with: "0.11.0"

properties:
  description: "An open-source computer security tool that provides information about security vulnerabilities in large language models and aids penetration testing and red teaming of language models and dialogue systems. It is supported by Nvidia."
  applicationCategory: "Security"
  author: ["Leon Derczynski", "Nvidia"]
  url: "https://garak.ai/"
---

garak is a computer security tool that provides information about security vulnerabilities in large language models (LLMs) and aids in penetration testing and red teaming of language models and dialogue systems. It is supported by Nvidia, and officially its name is short for "generative AI red-teaming & assessment kit". It is written in Python, runs cross-platform, and is distributed as open-source software under the Apache License.

## How it works

garak is built from three main kinds of component:

| Component | Role |
| --- | --- |
| Probes | Manage attacks; each implements an adversarial technique |
| Generators | Abstract away the target, which may be an LLM, a dialogue system, or anything that takes text and returns text (optionally with other modalities) |
| Detectors | Assess whether the output indicates a successful attack |

Probes attack generators and pass the resulting output to a detector. The results are compiled into a report, as an HTML page and a JSON object summarising them.

## History

garak was developed in spring 2023 by Leon Derczynski of ITU Copenhagen during a sabbatical at the University of Washington. It was first released under the GPL on 13 June 2023, and its licence was later changed to Apache 2.0. The software is now homed at Nvidia as an open-source project with long-term support, and has been available on Nvidia's public GitHub since November 2024. The stable release recorded by the source is version 0.17.0, of 9 September 2026.

## Reception and use

An independent 2024 review by Fujitsu Research described garak as the leading LLM vulnerability scanner. It is used and recommended as tooling in articles from Microsoft, Trend Micro, Nvidia and Cisco, and has been covered in IT news outlets.
