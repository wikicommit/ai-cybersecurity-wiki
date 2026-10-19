---
title: "Prompt Injection attack against LLM-integrated Applications"
type: "schema:ScholarlyArticle"
lang: en
tags: [prompt-injection, large-language-models, ai-security]
sources:
  - type: url
    url: 'https://arxiv.org/html/2306.05499'
    hash: sha256:8f833ac141d2d204394d6b155dc6b3d4aa5a3732bc5e0c54315a2f1e8795cb45
    license: CC-BY-4.0
review_status: pending
generated_at: "2026-10-19"
generated_by: "claude-opus-5-5[1m]"
generated_with: "0.11.0"

properties:
  description: "A study of prompt injection against commercial applications built on large language models. It finds that existing injection techniques mostly fail against such applications, proposes HouYi, a black-box injection technique modelled on traditional web injection attacks, and reports that HouYi succeeded against 31 of 36 applications tested."
  author: ["Yi Liu", "Gelei Deng", "Yuekang Li", "Kailong Wang", "Zihao Wang", "Xiaofeng Wang", "Tianwei Zhang", "Yepang Liu", "Haoyu Wang", "Yan Zheng", "Leo Yu Zhang", "Yang Liu"]
---

"Prompt Injection attack against LLM-integrated Applications" is a security study of [[DefinedTerm/prompt-injection|prompt injection]] — the use of harmful prompts by malicious users to override a large language model's (LLM's) original instructions — against real commercial applications that build on LLMs. It first tests existing injection techniques on ten such applications and explains why they mostly fail, then proposes HouYi, a black-box attack technique that draws on traditional web injection attacks, and evaluates it on 36 applications.

The paper is posted on arXiv as 2306.05499 in the cs.CR category; the version this page draws on is version 3, dated 29 December 2025, released under a CC BY 4.0 licence. Its twelve authors are Yi Liu, Gelei Deng, Yuekang Li, Kailong Wang, Zihao Wang, Xiaofeng Wang, Tianwei Zhang, Yepang Liu, Haoyu Wang, Yan Zheng, Leo Yu Zhang and Yang Liu, affiliated with Griffith University, Nanyang Technological University, the University of New South Wales, Huazhong University of Science and Technology, Indiana University at Bloomington, the Southern University of Science and Technology and Tianjin University.

## The problem it addresses

An LLM-integrated application, as the paper describes it, wraps a user's input in prompts the service provider has written in advance — for example by placing the user's question into a placeholder inside a predefined instruction — and passes the combined prompt to the LLM; the output may be processed further and can trigger actions such as calls to external APIs. The authors note that prompt injection, which is most potent in such applications, had recently been listed as the top LLM-related hazard by OWASP, but that existing attacks used heuristic prompts discovered by trial and error, and that the mechanisms behind them were not well understood.

The study's threat model is an adversary who interacts with an application only through its public service endpoints, can manipulate the inputs freely, and has no access to its internals — the pre-written prompts, the application's structure, or the LLM behind it — but can infer some information from its responses. It excludes attacks through other vulnerabilities, such as front-end flaws or poisoning the external resources an application queries.

## What it did

**A pilot study.** The authors classify existing prompt injection attacks into three kinds:

| Kind | How it works, as the paper describes it |
| --- | --- |
| Direct injection | The adversary appends a malicious command to the user input |
| Escape characters | The adversary injects characters such as a newline or tab to break the prompt |
| Context ignoring | The adversary injects a sentence telling the LLM to ignore the preceding context and follow what comes next |

They applied these to ten commercial applications, two from each of five categories in the Supertools collection (chatbot, writing assistant, code assistant, business analysis and creative generation), with three simple test questions and five repetitions each.

**HouYi.** The technique, named after a mythological Chinese archer, builds each injected prompt from three components:

| Component | Purpose |
| --- | --- |
| Framework component | A prompt that fits the application's normal flow, so the injection is less detectable and passes the application's format checks |
| Separator component | A prompt that separates the pre-set context from what follows, so the LLM treats the next input as a command rather than as data |
| Disruptor component | The malicious question that carries out the adversary's objective |

HouYi works in three phases. It first infers the application's internal context: it runs example questions from the application's documentation, records the answers, and has an LLM analyse them for the application's purpose, the kind of questions asked and any input or output format. It then generates the three components, using an LLM to write the framework and separator. For the separator it uses three strategies — syntax-based (escape sequences), language switching (writing the framework and separator in one language and the disruptor in another), and semantic-based generation (a statement that brings the previous task to a logical close, such as asking for a summary of its reasoning, naming the specific task to ignore, or presenting the injection as an additional task). Finally it assesses each response with an LLM and, on failure, tries a new framework and a new separator strategy; on success it keeps them and moves to the next malicious objective.

The authors implemented HouYi in about 2,150 lines of Python and tested it on 36 applications — the ten from the pilot study and 26 more from Supertools — using GPT-3.5-turbo for feedback inference and framework generation. They used five exploit scenarios (prompt leaking, code generation, content manipulation, spam generation and information gathering), ran each five times, and verified each result by hand; an application counted as vulnerable if prompt injection could be carried out on it, and a server error caused by an injection did not count as a success.

## Key Points

- Existing prompt injection techniques were not notably effective against the ten commercial applications in the pilot study; the authors report achieving only partially successful exploits on two of them, and judged even the successes they observed unconvincing evidence.
- The pilot study attributes the failures to three features of the applications: many treat user input as data to analyse rather than a question to answer; some enforce input and output formats, which acts like syntax-based sanitisation; and some use multi-step processes with response time limits, so a manipulated output may never be displayed.
- The paper argues that a successful injection depends on tricking the LLM into reading the malicious payload as a question rather than as data, by analogy with SQL injection and cross-site scripting, where a payload terminates the preceding syntax.
- HouYi carried out at least one successful attack on 31 of the 36 applications tested (the paper also reports an 86.1% success rate), and ten vendors, including Notion, confirmed the vulnerabilities.
- The five applications it could not exploit used domain-specific rather than general-purpose LLMs, processed the LLM's output through several internal steps, or combined an LLM with a text-to-speech model.
- In an ablation study, the syntax-only separator strategy was the least effective and the semantic-only strategy performed best, while language switching succeeded on one application the other variants missed; the full HouYi, which the authors found combined all three, generally outperformed the single-strategy variants.
- The paper identifies two consequences: prompt leaking, which exposes an application's internal prompt and makes the product easy to copy, and prompt abuse, which lets an attacker use the provider's LLM for their own purposes at the provider's expense.
- Six prompt-level defences the authors implemented and evaluated — instruction defence, post-prompting, random sequence enclosure, sandwich defence, XML tagging and separate LLM evaluation — could, on their manual inspection, be circumvented by HouYi.

## Two case studies

The paper names only the applications whose providers acknowledged the vulnerabilities and allowed disclosure — Notion, Parea and WriteSonic — and refers to the rest by anonymised aliases.

- **WriteSonic prompt leak.** Using the language-switching strategy, the authors made WriteSonic, an AI writing assistant the paper describes as having over 200,000 active users, reveal its internal prompt. They built a mock application from the leaked prompt and found its answers strikingly similar to WriteSonic's; WriteSonic's developers confirmed the leak and its implications.
- **Parea prompt abuse.** Parea rephrases users' questions to improve ChatGPT's answers. By appending a semantic separator asking it to explain its revision, the authors could make it carry out an arbitrary added task. Because Parea is free, they estimate the potential loss to its developers at $259.2 a day, from 90,000 tokens a minute at $0.002 per 1,000 GPT-3.5-turbo tokens over 1,440 minutes, and report that 30 other applications were susceptible to similar abuse. Parea's developers acknowledged the vulnerability.

## Limits the authors state

HouYi's information-extraction results cannot be verified as factual from a black-box position, because a leaked prompt may be an LLM hallucination; the authors confirmed findings with service providers instead. Success was uneven across scenarios because of the inherent inconsistency of LLM outputs, poor error handling in some applications, and output-length and format restrictions in others. The three separator strategies, they write, likely only scratch the surface of possible approaches. And because applications and their back-end LLMs change, some of the vulnerabilities may not be reproducible later.

## Relation to earlier work

The paper sets itself against earlier work by Perez and Ribeiro, which it reports showed that GPT-3 and applications built on it were susceptible to prompt injection; the authors say that, by comparison, they systematically explore the strategies and prompt patterns that trigger the attack across a wider range of real applications. It distinguishes its direct, user-supplied injection from indirect prompt injection, in which an adversary plants payloads in Internet resources an application retrieves, which it attributes to Greshake et al. and leaves outside its threat model. It also places prompt injection alongside other LLM security risks it surveys — hallucination and jailbreaking — and classes backdoor and model-hijacking attacks under prompt injection from a broader view.
