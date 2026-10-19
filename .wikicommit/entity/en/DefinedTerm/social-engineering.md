---
title: "Social engineering"
type: "schema:DefinedTerm"
lang: en
tags: [social-engineering, human-factors, initial-access]
sources:
  - type: url
    url: 'https://en.wikipedia.org/wiki/Social_engineering_(security)'
    hash: sha256:9b4196dab8da6c4ab770cc7cf7dba86d4e176c3e975f90310266e4706f35a901
    license: CC-BY-SA-4.0
review_status: pending
generated_at: "2026-10-19"
generated_by: "claude-opus-5-5[1m]"
generated_with: "0.11.0"

properties:
  description: "In information security, the use of psychological pressure to influence people to perform actions or divulge confidential information. A type of confidence trick for information gathering, fraud or system access, it exploits weaknesses in human decision-making known as cognitive biases and is often one of many steps in a more complex fraud scheme."
---

In information security, social engineering is the use of psychological pressure to influence people to perform actions or divulge confidential information. It has also been defined more broadly as "any act that influences a person to take an action that may or may not be in their best interests". It is a type of confidence trick used for information gathering, fraud or system access, and differs from a traditional "con" in that it is often one of many steps in a more complex fraud scheme. [[DefinedTerm/phishing|Phishing]] is a type of social engineering.

Social engineering is a form of psychological manipulation, and its techniques rest on weaknesses in human decision-making known as cognitive biases. Researchers in 2019 and 2020 described it as an increasingly important challenge for organizations and countries, and reports indicated that social engineering attacks had increased in intensity and number through 2024.

## Examples

Two simple examples illustrate it. In one, an attacker posts an official-looking notice in a company building saying that the help-desk telephone number has changed; employees who call the false number are asked for their passwords and IDs. In the other, an attacker starts a conversation with a target on a social networking site, gradually gains their trust, and uses that trust to obtain sensitive information such as passwords or bank account details.

## Techniques

| Technique | What it is |
| --- | --- |
| Pretexting (in the UK, "blagging") | Creating and using an invented scenario — the pretext — to get a victim to divulge information or act in ways they ordinarily would not; usually involves prior research and impersonation to seem legitimate |
| Water holing | A targeted strategy that exploits the trust users place in websites they visit regularly, where they will do things they would avoid elsewhere, such as following a link; it has been used to gain access to supposedly very secure systems |
| Baiting | A real-world Trojan horse: malware-infected physical media such as USB drives, left with curiosity-piquing labels in places people will find them, relying on the victim's curiosity or greed |
| Ad phishing | Using online ads that mimic trusted entities — banks, software providers, customer-support pages — to lead users to fraudulent sites that steal passwords, card details or other data (as described by Google) |
| Quid pro quo | Offering information or money in exchange for a favor, for example posing as an expert offering free IT help who needs the user's login credentials |
| Scareware | Bombarding the victim with messages about fake threats so that they believe the system is infected, then pushing them to install malicious software or extorting a ransom |
| Tailgating (piggybacking) | Pretending to be an employee or other person with access rights in order to enter an office or restricted area |

A 2016 study at the University of Illinois illustrates baiting: researchers dropped 297 USB drives around the campus, holding files that linked to web pages the researchers owned. Of the drives, 290 (98%) were picked up and 135 (45%) "called home".

## Law in the United States

US federal law addresses pretexting in two areas:

- **Banking records.** The 1999 Gramm-Leach-Bliley Act makes pretexting of banking records an illegal act punishable under federal statutes. Obtaining any personal, non-public information from a financial institution or a consumer through false pretenses falls under it, and deception by a business entity such as a private investigator falls under the authority of the Federal Trade Commission.
- **Telephone records.** The Telephone Records and Privacy Protection Act of 2006, approved by Congress in December 2006 and signed by President George W. Bush on 12 January 2007, made pretexting of telephone records a federal felony, with fines of up to $250,000 and ten years in prison for individuals, or fines of up to $500,000 for companies. It was passed at least partly in response to the Hewlett-Packard spying scandal, in which the company's board hired a private investigation firm that used pretexting to obtain the telephone records of board members and journalists.

## Notable incidents

| Year | Incident | Social engineering used |
| --- | --- | --- |
| Late 1970s–early 1980s | Phreaking and computer hacking in Los Angeles | Social engineering in phone and computer hacking |
| 1990s | A phone and computer fraud scheme in Israel by three brothers, all blind from birth | Social engineering and voice impersonation |
| 2011 | RSA SecurID attack | Emails to four employees from an alleged recruitment site, with a spreadsheet attachment carrying a zero-day exploit; the data obtained about SecurID two-factor authentication fobs was later used in an attempt on defense contractor Lockheed Martin |
| 2013 | US Department of Labor watering hole attack | A compromised Department of Labor server hosted malware and redirected some visitors to a site installing a remote access trojan; the targets were likely employees with access to sensitive nuclear data |
| 2014 | Sony Pictures leak | Phishers posing as senior employees installed malware; the "Guardians of Peace" group, probably linked to North Korea, leaked confidential data |
| 2015 | Ubiquiti Networks scam | A phishing email to the accounting department, apparently from a Hong Kong branch, asked for payment details to be changed; the company lost nearly $47 million and recovered $8 million |
| 2016 | US election leaks | Hackers associated with Russian military intelligence (GRU) sent phishing emails disguised as a Google alert to members of a presidential campaign, whose passwords, emails and documents were then leaked |
| 2017 | Equifax breach help websites | After the Equifax breach, 194 malicious domains with small variations on the legitimate help site's address were registered within a day, exploiting mistyping |
| 2017 | Google and Facebook invoice fraud | A fraudster impersonated a hardware supplier and falsely invoiced both companies for $100 million over two years; the money was later recouped after action by the US Department of Justice |

## Countermeasures

Researchers have developed detection techniques and cybersecurity educational programmes against social engineering, and several providers offer training and education on it, including a programme for certified social engineering prevention specialists developed in the 2000s.
