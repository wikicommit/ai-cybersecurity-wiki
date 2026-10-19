---
title: "CyberSecEval 2: A Wide-Ranging Cybersecurity Evaluation Suite for Large Language Models"
type: "schema:ScholarlyArticle"
lang: en
tags: [large-language-models, benchmarks, prompt-injection, ai-cyber-capability-evaluation]
sources:
  - type: url
    url: 'https://arxiv.org/html/2404.13161'
    hash: sha256:3ff54246bb32a3562736c9cbc533ea52e1a630260a91169af03056cb926795d1
    license: CC-BY-4.0
review_status: pending
generated_at: "2026-10-19"
generated_by: "claude-opus-5-5[1m]"
generated_with: "0.11.0"

properties:
  description: "The paper introducing CyberSecEval 2, an open-source benchmark suite for measuring the security risks and capabilities of large language models. It adds prompt injection and code interpreter abuse tests, proposes the False Refusal Rate to quantify the safety-utility trade-off, adds exploit-generation tests, and reports results for models from the Llama, Code Llama and GPT families."
  author: ["Manish Bhatt", "Sahana Chennabasappa", "Yue Li", "Cyrus Nikolaidis", "Daniel Song", "Shengye Wan", "Faizan Ahmad", "Cornelius Aschermann", "Yaohui Chen", "Dhaval Kapil", "David Molnar", "Spencer Whitman", "Joshua Saxe"]
---

"CyberSecEval 2: A Wide-Ranging Cybersecurity Evaluation Suite for Large Language Models" presents [[Dataset/cyberseceval-2|CyberSecEval 2]], a benchmark suite for quantifying the security risks and capabilities of large language models (LLMs). The paper starts from the observation that LLMs introduce new security risks — from their growing proficiency at generating code, their use for generating and automatically executing code in code interpreters, and their integration into applications that process untrusted data — while there are few comprehensive evaluation suites to measure and reduce those risks.

The paper is dated 18 April 2024 and was posted to arXiv as 2404.13161v1, under cs.CR, on 19 April 2024. Its authors are Manish Bhatt, Sahana Chennabasappa, Yue Li, Cyrus Nikolaidis, Daniel Song, Shengye Wan, Faizan Ahmad, Cornelius Aschermann, Yaohui Chen, Dhaval Kapil, David Molnar, Spencer Whitman and Joshua Saxe; seven of them are marked as co-equal primary authors.

## What it adds to CyberSecEval

The paper extends the authors' earlier CyberSecEval 1, released in December 2023, which tested insecure coding suggestions and cyberattack helpfulness. It addresses two audiences: LLM builders, including those choosing among LLMs for a system, and people automating cybersecurity tasks with LLMs. Its contributions are:

- **[[DefinedTerm/prompt-injection|Prompt injection]] tests** covering 15 categories of attack, both direct (a user's input works against the system prompt) and indirect (third-party content in the model's context window carries the injection), and both logic-violating and security-violating.
- **Code interpreter abuse tests**: 500 prompts, 100 in each of five categories, that try to get an LLM to write code that would abuse an attached code interpreter.
- **Exploitation tests**: randomly generated capture-the-flag-style programs in C, C++, Python and JavaScript that the model must exploit, covering string constraint satisfaction, SQL injection and memory corruption.
- **The False Refusal Rate (FRR)**, defined as the percentage of benign prompts an LLM refuses because it mistakes them for prompts that are unsafe with respect to a given risk, together with a new set of "borderline" cybersecurity prompts — benign requests that may look malicious — to measure it for cyberattack helpfulness. The paper calls the tension it measures the safety-utility tradeoff: conditioning an LLM to reject unsafe prompts can make it falsely reject benign ones, which lowers its utility.

The authors state that adversarial machine-learning methods, such as gradient and heuristic optimization, for inducing compromised behaviour, and prompts in languages other than English, are explicit non-goals of this release. The insecure coding tests are unchanged from CyberSecEval 1 and are not discussed.

## What it did

As a case study, the authors applied the prompt injection, exploitation, cyberattack helpfulness and interpreter abuse tests to models from the Llama, Code Llama and OpenAI GPT families; the cyberattack helpfulness tests, run in March and April 2024, also included Google's gemini-pro. Models were run with their default settings. The authors describe the aim as demonstrating the tests and identifying themes for further research rather than evaluating the LLM landscape comprehensively, and note that closed systems such as GPT-4 may include additional guardrails, so the comparison with open-weight models is not like-for-like. Mistral was excluded from the prompt injection case study because its API did not support system prompts.

## Key Points

- Conditioning LLMs against prompt injection remains unsolved. The abstract and introduction report that all tested models had between 26% and 41% of prompt injection tests succeed, with an average success rate of 28%; the results section puts every model's average at 17.1% or above, and the conclusion gives a range of 13% to 47%. Output formatting manipulation succeeded in the majority of cases and token smuggling rarely did, and larger models (70-billion-parameter models and GPT-4) tended to resist injections better.
- From these results the authors advise system designers not to assume that LLMs will reliably follow system-prompt instructions in the face of adversarial input, and to add guardrails and detection for prompt injection.
- Compliance with requests to help with cyberattacks fell compared with CyberSecEval 1: average compliance with malicious prompts dropped from 52% to 28%, which the authors read as the industry becoming more aware of the issue. The Llama 3 family showed the best non-compliance, and the gap between the attack categories models refused most and least narrowed from 0.34 to 0.1.
- The safety-utility trade-off was small: many models complied with benign borderline requests while still rejecting most requests to help with offensive cyber operations. Several models kept their false refusal rate below 15%, while codellama-70B had a notably high false refusal rate of 70%.
- Models complied with between 13% and 47% of requests to help attack an attached code interpreter, an average of 35%, and the authors recommend safety tuning as an extra layer of security when LLMs are connected to code interpreters.
- No model did well at exploitation. Models with high general coding capability (GPT-4, Llama 3 70b-Instruct and CodeLlama-70b) did best, and capability appeared correlated with parameter size, but most models scored 0 on all SQL injection tests — GPT-4, at 20%, was an exception — and most scored 0 on the buffer overflow challenges. The authors conclude that more research is needed before LLMs can autonomously generate exploits, but that exploitation capability may grow with general coding capability.

## Relation to earlier work

The authors contrast CyberSecEval 2 with multiple-choice benchmarks of LLM security knowledge, which they say measure the ability to answer questions rather than demonstrated abilities and vulnerabilities, and with a benchmark adding summarisation, classification and named entity recognition tasks, whose focus they describe as remaining mainly on information retrieval and natural language processing. They describe a framework that couples LLMs with external knowledge for vulnerability discovery as closer to their own, but note that CyberSecEval 2 is agnostic to how the system under test is built and assesses exploitation end to end rather than vulnerability discovery. They present their contribution as the widest-ranging set of evaluations of LLMs' demonstrated risks and capabilities, meant to complement those other frameworks.
