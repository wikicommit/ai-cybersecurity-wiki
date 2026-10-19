---
title: "Voice phishing"
type: "schema:DefinedTerm"
lang: en
aliases: ["Vishing"]
tags: [social-engineering, phishing, fraud]
sources:
  - type: url
    url: 'https://en.wikipedia.org/wiki/Voice_phishing'
    hash: sha256:428158cea57667a6bfcb89c82907e0a8d6e0bfa46d8c33563fb9e197fc19f072
    license: CC-BY-SA-4.0
review_status: pending
generated_at: "2026-10-19"
generated_by: "claude-opus-5-5[1m]"
generated_with: "0.11.0"

properties:
  description: "The use of telephony, often Voice over IP, to conduct phishing attacks. Posing as a bank, the police, a government agency or a service provider, the caller tries to obtain personal and financial information or persuade the victim to transfer money."
---

Voice phishing, or vishing, is the use of telephony — often Voice over IP (VoIP) telephony — to conduct [[DefinedTerm/phishing|phishing]] attacks. It is typically used to steal credit card numbers or other information used in identity theft schemes. Landline telephone services have traditionally been trustworthy, terminated in physical locations known to the telephone company and tied to a bill-payer; vishing fraudsters now often use VoIP features such as caller ID spoofing and interactive voice response systems to impede detection by law enforcement.

## How an attack works

Most voice phishing attacks use automated text-to-speech systems that direct the victim to call a number the attacker controls, though some use live callers. Posing as an employee of a legitimate body — a bank, the police, a telephone or internet provider, law enforcement or the Internal Revenue Service — the fraudster tries to obtain personal details and financial information such as credit card details or a bank account PIN. With it, the fraudster may be able to empty the account or commit identity fraud; some instead persuade the victim to transfer money to another account or to withdraw cash and hand it over. Fraudsters also try to obtain security credentials from users of Microsoft or Apple products by spoofing those companies' caller ID. Scammers often target immigrants and the elderly, who are coerced into wiring hundreds to thousands of dollars under threat of arrest or deportation.

Scammers usually use [[DefinedTerm/social-engineering|social engineering]] — psychological manipulation rather than conventional hacking — to convince the victim of the role they are playing, and create a sense of urgency or a fear of authority to use as leverage. [[DefinedTerm/audio-deepfake|Audio deepfakes]] have been used to commit fraud by fooling people into thinking they are receiving instructions from a trusted individual.

| Term | Meaning |
| --- | --- |
| Caller ID spoofing | Modifying the caller ID so that the name or number shown to the recipient differs from the caller's. Phishers often spoof a number in the recipient's area code or a government number, so that the call looks familiar or trustworthy and is more likely to be answered |
| Voice over IP (VoIP) | Also known as IP telephony, technology for making voice calls over the internet. It is frequently used in vishing because it lets callers spoof their caller ID, and VoIP servers in target countries can cut the cost of international fraud |

**Initiation.** An attack may begin with a direct call from a spoofed caller ID, with pre-recorded threatening voicemail messages, with a text message asking the victim to call a number (and be charged for the call), or with an email impersonating a bank, after which the victim is coerced into giving a PIN, account number or other credentials on the phone.

**Motives** commonly include financial reward, anonymity and fame. Banking information gives access to victims' assets; individual credentials can be sold to people who want to hide their identity for activities such as acquiring weapons, an anonymity that law enforcement may find difficult to trace; and phishers may seek fame in the cyber-attack community.

## How it differs from email phishing

- Mobile phones let attackers reach people who have a phone but no working knowledge of email, such as the elderly.
- Call centres have historically asked for personal and confidential information, and many people trust someone speaking to them on the phone, which makes sensitive information easier to extract.
- Voice communication can be personable, and so more impactful than email.
- Victims respond faster to a call than to an email.
- A phone number is difficult to block, and scammers can simply change numbers when one is blocked.

## Common scams

| Scam | What the scammer does |
| --- | --- |
| Impersonation — IRS scam | Poses as an IRS official or immigration officer and threatens deportation or arrest unless the victim pays off debts, even ones the victim does not have |
| Impersonation — romance scam | Poses as a potential love interest, through dating apps or phone calls, or as a past lover who needs emergency money |
| Impersonation — tech support scam | Claims an urgent virus or technical problem on the victim's computer, then gets remote control by having the victim download software, to access files and personal information or install malware, or asks for payment to fix the supposed problem |
| Debt relief and credit repair | Poses as a company that can relieve debt or repair credit and charges a fee; doing so usually lowers the victim's credit score |
| Business and investment | Poses as a financial expert to obtain money for investments |
| Charity | Poses as a charity member; the money goes directly to the scammers |
| Auto warranty | Calls about the victim's car warranty, sometimes with information about the car, to gather personal information or collect payment for a warranty |
| Parcel | Targeting immigrant populations, poses as a courier about a parcel linked to a criminal case, then transfers the victim to an accomplice posing as foreign police, who claims the victim's identity was stolen and persuades them to send money for a fake money-laundering investigation |
| Kidnapping | Claims to have kidnapped a relative and threatens to harm them if the victim hangs up; sometimes lets the victim talk to the "abducted relative", whom fear, confusion and the effect of the phone on a voice may stop the victim from recognising as someone else |

The FBI's Internet Crime Complaint Center (IC3) counts tech support and government impersonation scams as call-centre fraud. In 2025 it received more than 80,000 complaints in these two categories, with reported losses of more than $2.9 billion; of its 32,424 government impersonation complaints that year, 8,628 came from people aged 60 or older, who reported losses of $413,206,251.

## Detection and prevention

Voice phishing can be hard to identify because legitimate institutions such as banks sometimes ask for sensitive information over the phone, and victims — particularly the elderly — may not know that scammers can modify their caller ID.

- **Consumer advice.** The US Federal Trade Commission (FTC) warns against paying with cash, gift cards or prepaid cards, and states that government agencies do not call citizens to discuss personal information such as Social Security numbers. The tone or accent of the caller and the urgency of the call can also help show whether a call is legitimate. The FTC's primary recommendation is not to answer calls from unknown numbers; where a call is answered, it advises not pressing buttons when prompted and not answering a suspicious caller's questions.
- **Caller ID authentication.** On 31 March 2020, the US Federal Communications Commission (FCC) adopted mandates known as STIR/SHAKEN, a framework for phone companies to authenticate caller ID information, to reduce vishing that relies on caller ID spoofing. All US phone service providers had until 30 June 2021 to integrate it into their infrastructure.
- **Verified profiles.** In some countries, governments and banks communicate with the public through social media, where their verified profiles distinguish them from fake ones.
- **Public training** to recognise the common traits of a voice phishing attack is the most direct and effective mitigation.
- **Software detection** can differentiate phishing calls from honest ones and can be cheaper to implement than public training. Blacklists are a straightforward method; recent research uses artificial intelligence and data analysis to distinguish legitimate calls from phishing, converting calls to text so that natural language processing can identify phishing, and has explored augmentations and feature designs for detecting fake audio.
- **Offensive approaches** include phone apps that submit fake data to phishing calls, and harsher penalties imposed by law enforcement agencies to discourage scammers.

## Notable cases

| Case | What happened |
| --- | --- |
| IRS impersonation scam (2012–2016) | A scam ring posed as Internal Revenue Service and immigration employees to more than 50,000 people, stealing hundreds of millions of dollars and victims' personal information; alleged co-conspirators in the United States and India threatened "arrest, imprisonment, fines, or deportation". In 2018, 24 defendants were sentenced, the longest to 20 years in prison |
| COVID-19 scams | On 28 March 2021, the FCC warned of a rising number of phone scams about fraudulent COVID-19 products; the Food and Drug Administration has also monitored schemes selling products said to "prevent, treat, mitigate, diagnose or cure" COVID-19 |
| Hollywood Con Queen scam (from 2015) | A scammer impersonated Hollywood make-up artists and powerful female executives to coerce victims into travelling to Indonesia and paying money on the promise of reimbursement, researching victims' lives extensively and calling them repeatedly, for hours at a time |
| Thamar Reservoir cyberattack (2015) | After an Israeli academic and Iran expert mentioned connections in Iran on Israeli Army Radio, she received a call requesting an interview for the Persian BBC and was told to open a Google Drive document that asked for her password — a vishing call used as a precursor to further attacks with the credentials obtained |
| Mobile Bank ID scam (Sweden) | Callers posing as bank officers claimed a security problem and asked victims to use the Mobile Bank ID app, which let the fraudsters log in to and transfer money from victims' accounts without their password. In 2018 the app was changed to require users to photograph a QR code on their computer screen, ensuring the phone and computer are in the same place, which has largely eliminated this fraud |
