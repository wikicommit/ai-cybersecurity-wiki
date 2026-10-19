---
title: "Red team"
type: "schema:DefinedTerm"
lang: en
aliases: ["Red teaming"]
tags: [red-teaming, security-testing, penetration-testing]
sources:
  - type: url
    url: 'https://en.wikipedia.org/wiki/Red_team'
    hash: sha256:6dd3a1ab654b4ed45201355b6b346cdb7ecc2aebf51036456cec072cfe7548ca
    license: CC-BY-SA-4.0
review_status: pending
generated_at: "2026-10-19"
generated_by: "claude-opus-5-5[1m]"
generated_with: "0.11.0"

properties:
  description: "A group that simulates an adversary, attempting a physical or digital intrusion against an organization at that organization's direction and then reporting back so that the organization can improve its defenses. Broader definitions include any group directed to challenge assumptions and consider less plausible scenarios, as a defense against false assumptions and groupthink."
---

A red team is a group that simulates an adversary: at the direction of an organization, it attempts a physical or digital intrusion against that organization, then reports back so that the organization can improve its defenses. Red teams either work for the organization or are hired by it. Their work is legal, but it can surprise employees who do not know that red teaming is taking place, or who are deceived by the red team. Some definitions are broader and include any group within an organization that is directed to think outside the box and look at alternative scenarios considered less plausible — a directive that can be an important defense against false assumptions and groupthink.

Red teams are used in fields including cybersecurity, airport security, law enforcement, the military and intelligence agencies. The term *red teaming* originated in the United States in the 1960s.

## Kinds of red teaming

| Kind | What it tests | How it works |
| --- | --- | --- |
| Technical red teaming | The digital security of an organization's networks and computers | Gaining access through attack vectors, then reconnaissance to find further devices to compromise, and credential hunting — searching a compromised computer for credentials such as passwords and session cookies that give access to other computers |
| Physical red teaming (physical penetration testing) | Physical security — fences, cameras, alarms, locks and employee behavior | A reconnaissance phase that gathers information and identifies weaknesses, followed by an operation (typically at night) to gain entry, with specific objectives such as reaching a server room or an executive's office; computer networks are not usually the target |
| Alternative analysis | Intelligence conclusions and plans | Bringing in fresh analysts to double-check another team's conclusions, challenge assumptions and make sure nothing was overlooked; the name used when red teaming is applied to intelligence work |

In both technical and physical red teaming, rules of engagement and standard operating procedures are used to keep the red team from causing damage during its exercises.

## Terminology in cybersecurity

| Term | Meaning |
| --- | --- |
| Blue team | The group in charge of defending an organization's networks and computers against intrusions |
| Penetration test | Ethical hackers ("pen testers") attempt to break into a computer system with no element of surprise: the organization knows about the test and is ready to defend |
| Red team | Goes a step further than a penetration test, adding physical penetration, social engineering and surprise: the blue team gets no advance warning and treats the exercise as a real intrusion |
| Purple team | A temporary combination of the red and blue teams, which can provide rapid information responses during a test |
| White team | A group that oversees and manages operations between the red and blue teams — for example, managers who set the red team's rules of engagement |

One role of a permanent, in-house red team is to improve the organization's security culture, and a role of the red team is to increase the skills of the blue team. In purple teaming, the red team can launch certain attacks repeatedly so that the blue team can set up and calibrate detection software and steadily raise its detection rate; purple teams may also hunt jointly for real intruders. A danger of purple teaming is complacence and groupthink, which can be countered by hiring people with different skill sets or an external vendor. During a real intrusion, the red team can be repurposed to help the blue team defend, for example by analysing what the intruders are likely to try next.

## How a red team is used and managed

Many kinds of cybersecurity threat can be red-teamed to explore how severe they are, from compromising a network's domain controller to less orthodox issues such as giving employees too much access to personal data (which exposes a company to General Data Protection Regulation fines). Tabletop exercises — acting out an intrusion around a table, like a board game — can simulate intrusions that are too expensive, complicated or illegal to carry out live. The red team itself can be an attractive target for real attackers, because its members' machines may hold sensitive information about the organization, so those machines are often secured.

Practices for managing a red team include:

- **Rules of engagement**, to set which systems are off-limits, prevent security incidents and ensure employee privacy is respected; and a **standard operating procedure**, to make sure the right people are notified and involved in planning and to make the process mature and repeatable.
- **Metrics and key performance indicators**, such as the number of penetration tests per year or the number of compromised and compromisable machines, which can be shown on a dashboard in the security operations center to motivate the blue team.
- **Analysis of results**, for example grouping compromises by where in the software they were found, by office, job title or department, and using Monte Carlo simulations to identify which intrusion scenarios are most likely or most damaging.
- **Maturity assessment** with a Test Maturity Model, a kind of Capability Maturity Model, and the MITRE ATT&CK Navigator — a list of tactics, techniques and procedures (TTPs), including those of advanced persistent threats — to see how many TTPs the red team exercises and to find new ones.

For physical red teaming, a rules-of-engagement document shared with the client specifies the techniques to be used, what may and may not be targeted, how much damage to equipment is permitted, the plan and its milestones; red team members typically carry identification and an authorization letter naming after-hours contacts who can vouch for the legitimacy of their activities.

## History

Red teaming and blue teaming emerged in the early 1960s. An early example is the RAND Corporation's simulations for the United States military during the Cold War, in which the red team and the color red represented the Soviet Union and the blue team the United States; others include a red and a blue team that US Secretary of Defense Robert McNamara assembled to decide which contractor should be awarded an experimental aircraft contract, and an exercise modelling the negotiation of an arms control treaty.

After decision-making failures before the Yom Kippur War in 1973, the Intelligence Directorate of the Israel Defense Forces formed *Ipcha Mistabra* ("on the contrary"), a group charged with always presenting contrarian or unorthodox analysis. In the early 2000s red teams were used for tabletop exercises; after the September 11 attacks the Central Intelligence Agency created a new Red Cell and red teams were used to model responses to asymmetric warfare such as terrorism, and after the failures of the Iraq War red teaming became more common in the United States Army. The practice has since spread to corporations, government agencies and non-profit organizations, and has become increasingly popular in cybersecurity, where red teams simulate real-world attacks on an organization's digital infrastructure. The practice is also progressing into the analysis of generative AI technologies such as large language models.

## Users

| User | Use |
| --- | --- |
| Companies | Supplementing normal security procedures and staff; Microsoft and Google use red teams to help secure their systems, and some European financial institutions use the TIBER-EU framework |
| Intelligence agencies | Alternative analysis; three red teams, including some from outside the CIA, reviewed the intelligence that led to the killing of Osama bin Laden in 2011, and NATO uses alternative analysis |
| Militaries | Alternative analysis, simulations and vulnerability probes; in wargaming the opposing force may be called a Red Cell. The UK Ministry of Defence has a red team programme; US forces used red teams far more after a 2003 Defense Science Board recommendation, with the Army creating the Army Directed Studies Office in 2004 and the Marine Corps staffing red team billets in 2013. The US Department of Defense uses cyber red teams, certified by the National Security Agency and accredited by US Strategic Command, to assess its networks |
| Airport security | The US Federal Aviation Administration has used red teams since the 1988 bombing of Pan Am Flight 103, testing about 100 US airports a year; the Transportation Security Administration took this over in 2003. In a 2015 TSA red team operation, undercover agents got weapons and fake explosives through security 67 out of 70 times |

Before the September 11 attacks, FAA red teaming revealed severe security weaknesses at Boston's Logan International Airport, where two of the four hijacked flights originated; some former FAA investigators who took part feel the agency deliberately ignored the results.
