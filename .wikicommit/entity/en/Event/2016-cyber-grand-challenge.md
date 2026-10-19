---
title: "2016 Cyber Grand Challenge"
type: "schema:Event"
lang: en
aliases: ["Cyber Grand Challenge", "CGC"]
tags: [automated-vulnerability-discovery, ai-for-defence]
sources:
  - type: url
    url: 'https://en.wikipedia.org/wiki/2016_Cyber_Grand_Challenge'
    hash: sha256:2c37d38fa379027225566346ed34e209c7b1de561841346b6c17c9f916148a53
    license: CC-BY-SA-4.0
review_status: pending
generated_at: "2026-10-19"
generated_by: "claude-opus-5-5[1m]"
generated_with: "0.11.0"

properties:
  description: "A competition created by the Defense Advanced Research Projects Agency (DARPA) to develop automatic defence systems that discover, prove and correct software flaws in real time. Its final event, held on 4 August 2016 at DEF CON 24 in Las Vegas, pitted fully automated systems against each other with no human intervention, and was won by ForAllSecure's Mayhem."
  startDate: "2016-08-04"
  location: "Paris Hotel & Conference Center, Las Vegas, Nevada"
  organizer: "Defense Advanced Research Projects Agency (DARPA)"
---

The 2016 Cyber Grand Challenge (CGC) was a competition created by the Defense Advanced Research Projects Agency (DARPA) to develop automatic defence systems that can discover, prove and correct software flaws in real time. It placed machine against machine, with no human intervention, in what was called the "world's first automated network defense tournament". Its final event was held on 4 August 2016 at the Paris Hotel & Conference Center in Las Vegas, Nevada, within the 24th DEF CON hacker convention.

In structure the challenge resembled the long-standing capture-the-flag (CTF) security competitions, and the winning system went on to compete against humans in the "classic" DEF CON CTF held in the following days. Unlike a classic CTF, it used a more standardised scoring and vulnerability-proving system: all exploits and patched binaries were submitted to, and evaluated by, the referee infrastructure.

## Why it was held

The article describes a race between criminals trying to abuse vulnerabilities and analysts who must assess, remediate, check and deploy a patch before significant damage is done. Experts follow a process of complicated reasoning followed by the manual creation of each security signature and software patch, which takes months and money, and this has left software insecurities favouring attackers. DARPA also said that internet-connected devices such as smart televisions, wearable technology and high-end home appliances are not always built with security in mind, and that utility systems, power grids and traffic lights could be more susceptible to attack.

To help overcome these challenges, DARPA launched the Cyber Grand Challenge in 2014 as a two-year competition to create automatic defensive systems that could reason about flaws, formulate patches and deploy them on a network in real time.

## How the competition worked

The competition had two main events: an open qualification event in 2015, and a final event in 2016 open only to the top seven teams from the qualifiers.

**Challenge binaries.** The programs under test ran on the full 32-bit Intel x86 architecture, with a simplified application binary interface. Reducing external interaction to its basic components — system calls for well-defined input and output, dynamic memory allocation and a single source of randomness — simplified both modelling the binaries and running them securely in isolation to observe their behaviour. Their internal complexity was not restricted: challenges went as far as implementing a particle physics simulator, chess, programming and scripting languages, parsing of large amounts of markup data, vector graphics, just-in-time compilation and virtual machines. The challenge authors were themselves scored on how well they distinguished the players' relative performance, which encouraged challenges that exercised specific weaknesses of automatic reasoning, such as state explosion, while remaining solvable by well-built systems.

**Cyber reasoning systems.** Each playing system was a fully automated "Cyber Reasoning System" (CRS) that had to demonstrate:

- automatic vulnerability finding on previously unknown binaries;
- automatic patching of binaries without sacrificing performance;
- automatic exploit generation within the framework's limits; and
- a security strategy — balancing resources among the available servers (a variation of the multi-armed bandit problem), responding to competitors, for example by analysing their patches and reacting to exploitation, and evaluating the effect of its own actions on the final score.

Because of the complexity of the task, players had to combine several techniques and run them unattended and efficiently. The highest attack score, for instance, was reached by finding vulnerabilities through a combination of guided [[DefinedTerm/fuzzing|fuzzing]] and symbolic execution: a fuzzer based on [[SoftwareApplication/american-fuzzy-lop|American Fuzzy Lop]] combined with the angr binary analysis framework, using an emulation and execution-tracing system based on QEMU.

## Qualification event

The CGC Qualification Event (CQE) was held on 3 June 2015 and lasted 24 hours. It had two tracks: a funded track for seven teams that DARPA selected on the basis of their proposals, with awards of up to $750,000 per team, and an open track for any self-funded team. Over 100 teams registered internationally, and 28 reached the qualification event. Teams were given 131 programs and had to find vulnerabilities and fix them automatically while keeping performance and functionality; collectively they identified vulnerabilities in 99 of the 131. DARPA then ranked the teams on their patching and vulnerability-finding ability.

The seven finalists each received $750,000 to prepare for the final event:

| Team | Who they were | Track |
| --- | --- | --- |
| CodeJitsu | Researchers from the University of California, Berkeley, Cyberhaven and Syracuse | Funded |
| CSDS | Researchers from the University of Idaho | Open |
| Deep Red | Specialised engineers from Raytheon | Open |
| disekt | A computer security team that takes part in Capture the Flag competitions | Open |
| ForAllSecure | A security startup of researchers and security experts | Funded |
| Shellphish | A hacking team from the University of California, Santa Barbara | Open |
| TECHx | Software analysis experts from GrammaTech, Inc. and the University of Virginia | Funded |

## Final event

The CGC Final Event (CFE) was held on 4 August 2016 and lasted 11 hours. The finalists' machines faced each other in a fully automatic capture-the-flag competition, with the top three positions sharing almost $4 million in prize money.

| Place | System | Developed by | Prize |
| --- | --- | --- | --- |
| 1 | Mayhem | ForAllSecure, of Pittsburgh, Pennsylvania | $2 million |
| 2 | Xandra | TECHx (GrammaTech Inc., Ithaca, New York, and the University of Virginia, Charlottesville) | $1 million |
| 3 | Mechanical Phish | Shellphish, UC Santa Barbara | $750,000 |

The other competing systems were Rubeus (Deep Red, Raytheon), Galactica (CodeJitsu), Jima (CSDS) and Crspy (disekt).

## Afterwards

Teams described their approaches in various venues, and the third-place finisher, Shellphish, released the source code of its entire system.
