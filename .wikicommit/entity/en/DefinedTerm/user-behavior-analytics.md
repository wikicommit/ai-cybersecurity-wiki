---
title: "User behavior analytics"
type: "schema:DefinedTerm"
lang: en
aliases: ["User and entity behavior analytics", "UEBA"]
tags: [anomaly-detection, machine-learning, security-operations]
sources:
  - type: url
    url: 'https://en.wikipedia.org/wiki/User_behavior_analytics'
    hash: sha256:813ce10956bf0f2fa39ecb13ee1e13261f3a7483d93b983495458b6437188066
    license: CC-BY-SA-4.0
review_status: pending
generated_at: "2026-10-19"
generated_by: "claude-opus-5-5[1m]"
generated_with: "0.11.0"

properties:
  description: "The concept of analyzing the behavior of users, subjects and visitors for a specific purpose. In cybersecurity it lets tools build a profile of each individual's normal activity and highlight deviations from it that may indicate a potential compromise."
---

User behavior analytics (UBA), also called user and entity behavior analytics (UEBA), is the concept of analyzing the behavior of users, subjects, visitors and so on for a specific purpose. In cybersecurity, it allows tools to build a profile of each individual's normal activity by looking at patterns of human behavior, and then to highlight deviations from that profile — [[DefinedTerm/anomaly-detection|anomalies]] — that may indicate a potential compromise.

## Why it is used

According to Johna Till Johnson of Nemertes Research, security systems provide so much information that it is hard to uncover the information that truly indicates the potential for a real attack. In her account, analytics tools help make sense of the data that [[DefinedTerm/security-information-and-event-management|SIEM]], [[DefinedTerm/intrusion-detection-system|IDS]]/IPS, system logs and other tools gather, and UBA tools use a specialized type of security analytics that focuses on the behavior of systems and the people using them. She notes that UBA technology first evolved in marketing, to help companies understand and predict consumer buying patterns, and has turned out to be "extraordinarily useful in the security context too".

## UBA, UEBA and EDR

| Term | Focus |
| --- | --- |
| UBA | The behavior of users |
| UEBA | Extends the analysis to entity activities that are not necessarily tied to a user's specific actions but can still correlate with a vulnerability, reconnaissance, intrusion, breach or exploit. It tracks the activity of devices, applications, servers and data, and UEBA systems produce more data and provide more complex reporting options than UBA systems. The term was coined by Gartner in 2015 |
| Endpoint detection and response (EDR) | The endpoint, rather than user behavior |

Cybersecurity solutions such as EDR and XDR typically prioritize detecting and responding to external threats once an incident has occurred, whereas user behavior analytics and IRM solutions aim to prevent potential risks internally by analyzing employee behavior.

## Continuous authentication

Continuous authentication has been proposed as a form of user behavior analytics in which a system verifies identity throughout an active session rather than only at login, reducing the risk of system abuse after initial access is granted. Research has examined signals such as mouse movements, keystroke timing, network activity and application usage. These can form computer-usage profiles that stay consistent over long periods and differ between individuals, allowing machine-learning models to flag behavior that deviates from a user's typical patterns.

- **Long-term data** — machine-learning systems for continuous authentication typically rely on long-term data, because everyday behavior drifts over hours, days or weeks with fatigue, workload or environmental context. For this reason researchers distinguish offline evaluations, on pre-collected datasets, from online evaluations that observe behavior in real time and capture day-to-day variability.
- **Where it is used** — it is usually considered in environments where some monitoring is already expected and the expectation of privacy is lower, such as corporate settings.
- **Daily cycles** — using surrogate-data analysis, a study by Giovanini et al. found strong 24-hour cycles in most users' activity, indicating that daily routines shape usage profiles measurably and that profiles contain both time-dependent structure and random variation. This has led researchers to suggest that separating periodic patterns from background system processes may improve model stability.
- **Limits of current evaluations** — many evaluations rely on relatively small samples and only one device per user, and more recent work highlights the need for larger, more diverse datasets to understand long-term behavioral change and assess the robustness of the techniques.
- **Device bias** — not all features used necessarily reflect human behavior. In systems collecting running processes, contacted domains, keystroke timing, mouse movement and web activity, many of the strongest predictive features come from network and application usage, which often reflect device configuration or network environment and can lead models to distinguish devices rather than users. Studies on device bias show that authentication models may unintentionally learn hardware- or sensor-specific characteristics rather than behavioral traits, so researchers commonly emphasize human-driven signals such as keystroke timing and mouse movement, and datasets with multiple devices per user and longer real-world observation periods.
