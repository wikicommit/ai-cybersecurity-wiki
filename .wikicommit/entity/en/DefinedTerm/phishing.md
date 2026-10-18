---
title: "Phishing"
type: "schema:DefinedTerm"
lang: en
tags: [social-engineering, ai-assisted-attacks, initial-access]
sources:
  - type: url
    url: 'https://en.wikipedia.org/wiki/Phishing'
    hash: sha256:c67feaa71df4dc1fd7bb923517b6660215dd03cc03fb856ff083531d8955c4f1
    license: CC-BY-SA-4.0
review_status: pending
generated_at: "2026-10-18"
generated_by: "claude-opus-5-5[1m]"
generated_with: "0.11.0"

properties:
  description: "A form of social engineering and scam in which attackers deceive people into revealing sensitive information or installing malware. It is a common initial-access method, used for credential theft, session hijacking, malware delivery or command execution."
---

Phishing is a form of social engineering and a scam in which attackers deceive people into revealing sensitive information or installing malware. It can be used for credential theft, session hijacking, malware delivery or command execution, and some attacks transparently relay authentication to a legitimate site so that the attacker captures both the credentials and the authenticated session. Phishing is a common initial-access method, and large language models can automate personalized phishing at low cost.

Phishing attacks are often delivered by email and try to trick people into giving away sensitive information or login credentials, typically through messages that appear to come from a trusted source such as a bank or government agency and that may redirect to a counterfeit login page. Common targets include financial institutions, email and cloud productivity providers, and streaming services; the stolen information or access may be used to steal money, install malware, or spear phish others within the target organization, and compromised streaming accounts may be sold on darknet markets.

## Forms

General phishing is sent broadly, whereas spear phishing targets a particular person or group.

| Form | Channel or mechanism | Notes from the source |
| --- | --- | --- |
| Spear phishing | Messages tailored to specific individuals, using personal or organizational information to increase credibility | Can be more effective than general phishing; automation can make personalized messages cheap enough to use at scale |
| Whaling | Spear phishing aimed at people in senior leadership roles | Seeks valuable organizational information |
| Voice phishing (vishing) | Telephone or Voice over IP calls, sometimes automated, using text-to-speech or a spoofed caller number | A 2008 study found it could exploit greater trust in voice telephony than in email |
| SMS phishing (smishing) | SMS or MMS messages with an impersonation, a malicious link or a malware lure | The limited display of URLs on mobile devices makes illegitimate links harder to spot; in 2024 people in the U.S. reported US$470 million in losses to text-message scams to the Federal Trade Commission, most commonly fake package-delivery messages |
| QR-code phishing (quishing) | A QR code that sends the person who scans it to a malicious website | Codes conceal their destination; across three experiments with 1,876 participants almost no one identified QR-based phishing. The UK's National Cyber Security Centre assesses it as less common than other types of cyber fraud |
| Adversary-in-the-middle (AiTM) phishing | An impostor site relays the authentication exchange to the legitimate service in real time | Defeats authentication that relies on a one-time code the user types in; toolkits such as Evilginx automate it, relaying credentials and a two-factor code while the victim interacts with the phishing site |

## Techniques

- **Social engineering.** Phishing typically impersonates a trusted entity and creates a sense of urgency — for example by threatening to close or seize a bank or insurance account — to get the victim to click a link, open an attachment, reveal information or enter credentials on a spoofed website.
- **Link manipulation.** Links may use misspelled registered domains or deceptive subdomains (`example.com.scam.com` belongs to `scam.com`), display trustworthy text over a link to the phisher's site, exploit internationalized domain names through IDN spoofing or homograph attacks, or pass through open URL redirectors on trusted websites.
- **Combination with drive-by compromise.** MITRE ATT&CK classifies phishing and drive-by compromise as separate initial-access techniques, but a phishing message can link to a website used for drive-by compromise, so the two can occur in the same campaign.
- **Phishing-as-a-service.** Platforms automate branded phishing kits by cloning login pages and distributing links through templated infrastructure, lowering the skill needed to run a campaign. ENISA reported that the Darcula platform had impersonated more than 200 organizations and targeted users in more than 100 countries.

## Generative AI and phishing

Generative AI can make phishing and other social-engineering content more convincing by producing realistic text and images, and it can reduce the effort needed to personalize and automate attacks. In a 2026 experiment with 7,700 participants, emails personalized by a large language model produced almost three times the click rate of generic phishing emails, at an estimated cost of about US$0.03 per message.

## Scale and history

Phishing attacks targeting AOL account details were reported in 1995, and the term appeared in print by March 1997; its spelling is generally linked to the earlier term "phreaking". In the 2000s attacks became more organized and targeted, and phishing came to be recognized as a fully organized part of the black market, with specialists selling phishing software that organized gangs assembled into campaigns. Notable attacks since then include the 2011 theft of information about RSA SecurID tokens, the 2013 theft of 110 million customer and card records from Target through a phished subcontractor account, and spear-phishing campaigns that sources link to the Russian group Fancy Bear, including against the Democratic National Committee in 2016. The July 2020 Twitter breach combined a counterfeit internal-service login page with telephone social engineering.

| Measure | Figure |
| --- | --- |
| Losses in the United States, May 2004 – May 2005 | About 1.2 million users, about US$929 million |
| Losses in 2007 | 3.6 million adults lost US$3.2 billion |
| FBI Internet Crime Complaint Center, 2025 | 191,561 complaints in its phishing and spoofing category, reported losses of about US$215.8 million |
| Analysis of 4,875 incidents in the European threat landscape, July 2024 – June 2025 | Phishing accounted for about 60% of observed initial-access cases |

## Defences

Anti-phishing programmes combine measures at the training, mail, browser, network, authentication and incident-response layers, using overlapping controls rather than any single filter or authentication step.

| Layer | Measures | Stated limits |
| --- | --- | --- |
| User training | Simulated-phishing exercises that show training material after a recipient interacts with a test message | A 2024 field study at one company found the measured benefit came mainly from the periodic reminder the exercise creates, not the material shown after a click; employees often did not consume it, and mandatory completion did not improve secure behaviour |
| Mail filtering and sender authentication | Content and reputation filtering; SPF and DKIM for domain-level authentication; DMARC to check alignment with the visible `From` domain and publish handling and reporting policies | DMARC does not validate display names, look-alike domains or content, and a pass does not make a message safe; a 2021 experiment found every one of 30 mail services and 23 email clients tested vulnerable to at least one newly identified sender-spoofing technique |
| Browser and network blocking | Browser warnings for destinations on anti-phishing blocklists, sometimes with heuristic classifiers; protective DNS that refuses to resolve domains from phishing threat feeds | Reactive: there can be a gap before a new site is listed, and evasive sites may avoid prompt classification |
| Phishing-resistant authentication | Multi-factor authentication; WebAuthn, which binds a cryptographic response to the relying party's domain, and passkeys (syncable WebAuthn authenticators) | NIST does not classify manually entered one-time passwords or out-of-band codes as phishing-resistant, because an impostor can relay them |
| Session protection | Short, defined lifetimes for identity and access tokens, revocation and audience restrictions, session monitoring, and sender-constrained or proof-of-possession tokens where feasible (NIST recommendations) | Needed because a session cookie captured by an adversary-in-the-middle proxy works as a bearer secret until it expires or is invalidated |
| Detection, reporting and takedown | User reports and automated detection feed blocklists; operators ask hosting providers or registrars to disable infrastructure | Takedown depends on cooperation and may take hours or days |

## Legal responses

Phishing is usually prosecuted under laws covering the conduct involved rather than a single offence. In the United States the Computer Fraud and Abuse Act covers specified forms of unauthorized computer access, and other federal provisions may apply to wire fraud, access-device fraud and aggravated identity theft. In the European Union, Directive (EU) 2019/713 requires member states to criminalize specified conduct involving non-cash payment instruments, and its recitals name phishing as a way of obtaining them. Prosecution guidance in England and Wales treats phishing as cyber-enabled fraud under the Fraud Act 2006, the Computer Misuse Act 1990 and related legislation. Because campaigns cross borders, enforcement also relies on international cooperation such as the Budapest Convention; as of 20 September 2026 the United Nations Convention against Cybercrime had 82 signatories and three parties and was not yet in force.
