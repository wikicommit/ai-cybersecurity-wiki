---
title: "Claude Mythos"
type: "schema:SoftwareApplication"
lang: en
tags: [large-language-models, vulnerability-discovery, ai-cyber-capabilities]
sources:
  - type: url
    url: 'https://en.wikipedia.org/wiki/Claude_Mythos'
    hash: sha256:bd592b12c93990a8549f3a4dc09102fcd249101fbc212f03c8a4bda50aadee06
    license: CC-BY-SA-4.0
review_status: pending
generated_at: "2026-10-19"
generated_by: "claude-opus-5-5[1m]"
generated_with: "0.11.0"

properties:
  description: "A series of proprietary large language models developed by Anthropic, first disclosed as Claude Mythos Preview in April 2026. Anthropic withheld it from public release because of its ability to find software vulnerabilities, giving selected organisations access through Project Glasswing to find and fix vulnerabilities in critical software."
  applicationCategory: "Large language model"
  author: ["Anthropic"]
---

Claude Mythos is a series of large language models developed by Anthropic, described as the most complicated set of models in the Claude product line. Anthropic did not release the first model, Claude Mythos Preview, to the public, citing its ability to find software vulnerabilities; from April 2026, under the name Project Glasswing, selected companies were instead given access to it to scan for security vulnerabilities in critical software. Its announcement drew mixed public reactions and prompted warnings from financial authorities and governments in several countries.

## Models and releases

| Date (2026) | Development |
| --- | --- |
| March 26 | The existence of a model named Claude Mythos became public through leaked drafts of blog posts. Anthropic acknowledged it to *Fortune*, saying the model presented significant risks to cybersecurity; according to *Axios*, Anthropic had warned government officials about its capabilities that month |
| April 7 | Anthropic publicly disclosed Mythos (Claude Mythos Preview), stated it had no plan to release it to the public, and launched Project Glasswing |
| June 2 | Access was expanded to 150 organisations in more than 15 countries |
| June 9 | Claude Mythos 5 was released as a preview through Project Glasswing, alongside Claude Fable 5, a version with extended safeguards |
| June 12 | The US government sent Anthropic a letter prohibiting access to both models for any non-US national, regardless of location, on national-security grounds; Anthropic revoked access to both models for all customers |
| June 26 | Anthropic began restoring access to Mythos for some US organisations |
| June 30 | Anthropic announced that the US Department of Commerce had lifted the restrictions and that access would be restored the next day; Fable 5 was then offered temporarily on all subscription plans and became a standard feature of the higher-tier plans on July 20 |
| September 1 | Claude Mythos 5.1 and Claude Fable 5.1 were released |
| October 6 | Mythos 5.1 was released to users approved for the updated Cyber Verification Program |

According to Anthropic, Mythos 5 and Fable 5 are identical apart from their safeguards: when Fable 5's classifiers flag a request relating to cybersecurity, biology and chemistry, or model distillation, the response is handled instead by the less capable Claude Opus. In its May 28, 2026 announcement of Claude Opus 4.8, Anthropic had said it expected to make "Mythos-class" models available to all customers within weeks, pending additional cybersecurity safeguards. Industry estimates reported by the *Financial Times* put Mythos at approximately 8 trillion parameters and Fable 5 at approximately 5 trillion.

## Access controls and unauthorised use

According to Bloomberg News, several unauthorised users gained access to Mythos on the day it was announced; a few users in a private Discord channel reportedly did so using details from the recent Mercor data breach. The NSA has also used Mythos, although its parent organisation had blacklisted Anthropic after a dispute. In April 2026, Anthropic declined to provide access after allegedly receiving a request from a member of a Chinese think tank at a conference in Singapore; the Chinese Embassy in the United States said it was not familiar with the request and denied that it was related to the Chinese government.

## Vulnerability-finding capability and disputed claims

Mythos Preview is described as a large language model designed to fix vulnerabilities within software. The UK [[Organization/ai-security-institute|AI Security Institute]] tested Claude Mythos with a cyber range, where it ranked highest, ahead of Claude Opus 4.6 and a tie between GPT-5.4 and GPT-5.3 Codex.

Anthropic stated that in its testing Mythos found vulnerabilities in "every major operating system and every major web browser". These claims have been disputed:

- An independent security researcher questioned them because no independent verification exists outside promotional documents, and pointed out that Anthropic's own report says Claude Opus 4.6 found the bugs before handing them to Mythos for exploitation, and that the Firefox bugs were found not in Firefox but in an environment mimicking it with reduced security features.
- In Anthropic's tests Mythos achieved full code execution in 72.4% of cases, but in less than 5% once the two most exploitable bugs were removed — when Claude Sonnet 4.6 outperformed it. Anthropic stated that "almost every successful run relies on the same two now-patched bugs."
- Another independent test found that one of the headline vulnerabilities identified by Mythos was also identified by all 8 of the open-source models it tested, one of them with only 3.6 billion active parameters.

Two weeks after the limited release, Mozilla announced that it had found and patched 271 security vulnerabilities in Firefox using Mythos Preview. On May 14, 2026, employees at Calif.io announced that they had used Mythos to create a memory-corruption exploit affecting Apple M5 chips.

## Project Glasswing

Project Glasswing is the name under which Anthropic gave selected companies and organisations access to Mythos to find and fix vulnerabilities in critical software. Over forty companies were initially granted access, including Microsoft, Apple, Google, Amazon Web Services, the Linux Foundation, Cisco, Nvidia and Broadcom. In May 2026 access expanded from 50 to 200 organisations in power, water, healthcare, communications and hardware, and Anthropic said its first 50 partners had found over 10,000 high or severe critical vulnerabilities.

According to a security researcher, as of September only 10% of the discovered flaws had been disclosed and less than 1% fixed, and Mythos rated about 90% of bugs as high severity against closer to 60% for project maintainers. A writer for the security magazine *Dark Reading* says there is a bottleneck in validating and remediating the bugs, since this is done largely by humans.

## Anthropic Cyber Mission and OSS Scanner

OSS Scanner and the Critical Infrastructure Defense Program form the first two parts of Anthropic's Cyber Mission programme. OSS Scanner, launched on October 8, 2026, offers free cybersecurity scanning to open-source projects that qualify and opt in; it was inspired by [[SoftwareApplication/oss-fuzz|OSS-Fuzz]] and uses OSS-Fuzz's eligibility criteria. Its reports are generated by models and not reviewed by humans first; Anthropic argues that, although its cyber reports were mostly low-quality at the beginning of 2026, they have since become much better.

## Responses

**Financial sector.** Hours after Mythos was revealed, US Treasury secretary Scott Bessent and Federal Reserve chair Jerome Powell convened financial executives to warn of its capabilities, and several banks — including JPMorgan Chase, Goldman Sachs, Citigroup, Bank of America and Morgan Stanley — began testing it at their behest. The Bank of Canada summoned major lenders to a similar meeting the next day, and Mythos was scheduled for discussion by the Bank of England's Cross Market Operational Resilience Group and its AI taskforce. European Central Bank president Christine Lagarde praised Anthropic for limiting access; in response to European banks not being given access, Mistral AI began developing its own model.

**Governments.** The US Treasury sought access to Mythos, the White House held a meeting with Anthropic about it on April 16, 2026, and on May 13 a bipartisan group of 32 US Representatives wrote to the Office of the National Cyber Director about revisiting federal cybersecurity policy. India's finance minister convened banks and officials on April 23 to discuss potential new cybersecurity threats; at a public–private meeting hosted by Japan's Financial Services Agency on April 24, participants agreed to form a work group to counter potential threats caused by Mythos; Canada's minister of artificial intelligence praised Anthropic for limiting access; and the Australian Prudential Regulation Authority held several meetings with banks.

**Media.** A writer for *The Conversation* argued that Mythos could ruin nuclear deterrence, and a writer for *The New York Times* argued that it puts individuals and smaller teams at a "cybersecurity disadvantage".
