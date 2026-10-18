---
title: "Intrusion detection system"
type: "schema:DefinedTerm"
lang: en
aliases: ["IDS"]
tags: [network-security, machine-learning]
sources:
  - type: url
    url: 'https://en.wikipedia.org/wiki/Intrusion_detection_system'
    hash: sha256:d7eecde7e98228cb011732300ed5e392c8c09ae0cd375015d00af2d91d97e6b1
    license: CC-BY-SA-4.0
review_status: pending
generated_at: "2026-10-18"
generated_by: "claude-opus-5-5"
generated_with: "0.11.0"

properties:
  description: "A device or software application that monitors a network or systems for malicious activity or policy violations. Detected activity is typically reported to an administrator or collected centrally in a SIEM system."
---

An intrusion detection system (IDS) is a device or software application that monitors a network or systems for malicious activity or policy violations. Any intrusion activity or violation it finds is typically reported to an administrator or collected centrally in a security information and event management (SIEM) system, which combines outputs from multiple sources and uses alarm-filtering techniques to tell malicious activity from false alarms. IDSs range in scope from single computers to large networks.

## Kinds of IDS

IDSs are classified by where detection takes place and by the detection method they use.

| By where detection takes place | What it monitors |
| --- | --- |
| Network intrusion detection system (NIDS) | Traffic to and from all devices on the network, from a strategic point or points; it analyses passing traffic on the whole subnet and matches it against a library of known attacks. NIDS can be on-line (inline, analysing packets in real time) or off-line (tap mode, processing stored data) |
| Host intrusion detection system (HIDS) | A single host or device: its inbound and outbound packets, and snapshots of its system files compared with earlier snapshots, alerting when critical files are modified or deleted |

| By detection method | How it works | Strengths and weaknesses |
| --- | --- | --- |
| Signature-based | Looks for specific patterns, such as byte sequences in network traffic or known malicious instruction sequences used by malware; the term comes from anti-virus software | Detects known attacks easily but struggles with new attacks for which no pattern exists; signatures, released by the vendor, must be kept up to date |
| Anomaly-based | Uses machine learning to build a model of trustworthy activity and compares new behaviour against it | Can detect previously unknown attacks, but may raise false positives when previously unknown legitimate activity is classed as malicious |
| Reputation-based | Recognises a potential threat from reputation scores | — |

## Machine learning in intrusion detection

Anomaly-based systems were introduced mainly to detect unknown attacks, partly because of the rapid development of malware. Because their models can be trained for particular applications and hardware configurations, the machine-learning approach generalises better than traditional signature-based detection. Efficient feature-selection algorithms make the classification used in detection more reliable, and recent research has explored deep learning, which can learn complex traffic patterns and help identify previously unseen attacks.

Network IDSs can also be combined with artificial neural networks (ANNs), which can analyse very large volumes of data through their hidden layers and non-linear modelling, at the cost of time. ANN-based IDSs learn from mistakes to predict attacks and can support an early-warning system; research covering 24 network attacks in four categories (denial of service, probe, remote-to-local and user-to-root) reported an average detection and classification rate of 99.9%. For statistical anomaly-based detection, ensemble models that use the Matthews correlation coefficient to identify unauthorised traffic have reached 99.73% accuracy.

Gartner views newer kinds of what could be called anomaly-based IDS as user and entity behaviour analytics (UEBA) and network traffic analysis (NTA); NTA deals with malicious insiders as well as targeted external attacks that have compromised a user's machine or account, and Gartner has noted that some organisations have chosen NTA over more traditional IDS.

## Intrusion detection and intrusion prevention

An IDS describes a suspected intrusion once it has happened and raises an alarm; stopping the intrusion is neither required nor expected of a monitoring system. Systems that can also respond are called intrusion prevention systems (IPS), or intrusion detection and prevention systems (IDPS). They are considered extensions of IDSs: both monitor network traffic or system activity for malicious activity, but an IPS is placed in-line and can actively block intrusions — sending an alarm, dropping malicious packets, resetting a connection or blocking traffic from the offending IP address.

| IPS type | What it monitors |
| --- | --- |
| Network-based (NIPS) | The entire network, by analysing protocol activity |
| Wireless (WIPS) | A wireless network, by analysing wireless networking protocols |
| Network behaviour analysis (NBA) | Network traffic, for threats that generate unusual flows such as distributed denial-of-service attacks, some malware and policy violations |
| Host-based (HIPS) | A single host, by analysing events occurring within it |

Most intrusion prevention systems use one of three detection methods: signature-based, statistical anomaly-based (comparing traffic with an established baseline of what is normal for the network) and stateful protocol analysis (comparing observed protocol states with predetermined profiles of benign activity, which needs significant resources).

## How it differs from a firewall

A conventional network firewall uses a static set of rules to permit or deny connections, limiting access between networks to prevent intrusion; it does not signal an attack from inside the network. An IDS signals an alarm about a suspected intrusion and also watches for attacks that originate within a system.

## Placement

The most common placement is behind the firewall, at the edge of the network, which gives the IDS high visibility of traffic entering the network. An IDS placed beyond the firewall defends mainly against noise from the internet and common attacks such as port scans; it shows attempted rather than actual breaches, which reduces false positives. An IDS placed within the network reveals attacks or suspicious activity inside it; ignoring security within the network can let an attacker who has already broken in roam freely, whereas intense intranet security makes it hard for them to move around and escalate privileges.

## Limitations

- **False alarms** — noise from software bugs, corrupt DNS data and escaped local packets can produce a very high false-alarm rate, and real attacks can be so outnumbered by false alarms that they are missed.
- **Signature lag** — signature databases must be constantly updated; a signature-based IDS cannot identify a new threat until its signature is applied.
- **Blind spots** — an IDS cannot compensate for weak identification and authentication or for weaknesses in network protocols, most devices do not process encrypted packets, and the addresses in IP packets can be faked.
- **Vulnerability of the IDS itself** — a NIDS analyses protocols as they are captured, so it can be crashed by the same protocol-based attacks, such as invalid data and TCP/IP stack attacks, that network hosts are vulnerable to.

## Evasion techniques

Simple measures attackers use to evade an IDS include fragmenting packets, running a protocol on a non-default port, coordinating low-bandwidth scans among many attackers, spoofing addresses or bouncing attacks through proxies, and slightly changing the attack data so that it no longer matches the patterns the IDS expects.

## History

| Year | Development |
| --- | --- |
| 1980 | James Anderson at the National Security Agency described the earliest preliminary IDS concept: a set of tools to help administrators review audit trails such as user access, file access and system event logs |
| 1986 | Dorothy E. Denning, assisted by Peter G. Neumann, published a model of an IDS that formed the basis for many later systems; it used statistics for anomaly detection and led to the Intrusion Detection Expert System (IDES) at SRI International, which combined a rule-based expert system with statistical anomaly detection. The NSA also began an IDS research transfer programme under Rebecca Bace |
| 1987 | Fred Cohen noted that it is impossible to detect an intrusion in every case, and that the resources needed grow with usage |
| 1988–1991 | Systems including MIDAS, Haystack, Wisdom & Sense, the Time-based Inductive Machine (anomaly detection by inductive learning of user patterns), the Network Security Monitor, DIDS and NADIR were developed, drawing on approaches that included statistical anomaly detection, expert systems and inductive learning |
| 1993 | SRI followed IDES with the Next-generation Intrusion Detection Expert System (NIDES). |
| 1998 | Lawrence Berkeley National Laboratory announced Bro; the packet sniffer APE was renamed Snort, which has since become the world's most widely used IDS/IPS, with over 300,000 active users |
| 2015 | An anomaly-based detection engine applying machine learning on a system-on-chip, for example for Internet of Things applications, was proposed |

IDES paired a rule-based expert system for known intrusions with a statistical anomaly-detection component based on profiles of users, host systems and target systems; Teresa F. Lunt, author of a paper describing IDES, proposed adding an artificial neural network as a third component, with all three reporting to a resolver.
