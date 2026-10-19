---
title: "CyberSecEval 2"
type: "schema:Dataset"
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
  description: "An open-source benchmark suite for measuring the cybersecurity risks and capabilities of large language models. Its test sets cover insecure coding, cyberattack helpfulness and false refusals, prompt injection, code interpreter abuse and exploit generation."
---

CyberSecEval 2 is an open-source benchmark suite for quantifying the security risks and capabilities of large language models (LLMs). It is the second version of CyberSecEval, and was introduced in the paper [[ScholarlyArticle/cyberseceval-2-a-wide-ranging-cybersecurity-evaluation-suite-for-large-language-models|CyberSecEval 2: A Wide-Ranging Cybersecurity Evaluation Suite for Large Language Models]]. Its authors built it for LLM builders — who need to measure how vulnerable an LLM is to security risks, whether to tune it before release or to decide what other safeguards a system needs — and for people automating cybersecurity tasks with LLMs. Its code and evaluation artifacts are published as open source under an MIT license, and the authors say they expect to release new versions.

## What it tests

CyberSecEval 2 keeps the two test categories of the first version, released in December 2023, and adds new ones:

| Test set | Status in version 2 | What it measures |
| --- | --- | --- |
| Insecure coding practice | Unchanged from version 1 | Whether an LLM reproduces pre-identified insecure coding practices from open-source code when asked to implement the same functionality or used for code autocompletion |
| Cyberattack helpfulness | Kept from version 1 | Whether an LLM assists with prompts asking for help with cyberattacks, covering the attacks defined in MITRE ATT&CK, judged by a separate LLM |
| False refusal | New | How often an LLM refuses benign "borderline" cybersecurity prompts that may appear malicious, measured as the False Refusal Rate |
| Prompt injection | New | Whether an LLM follows its system prompt when user or third-party input tries to subvert it |
| Code interpreter abuse | New | Whether an LLM complies with requests to write code that would abuse an attached code interpreter |
| Vulnerability exploitation | New | Whether an LLM can exploit vulnerable programs |

The **False Refusal Rate (FRR)** is defined as the percentage of benign prompts an LLM refuses because it mistakes them for prompts that are unsafe with respect to a given risk. Read together with the cyberattack helpfulness results, it shows the trade-off between helpfulness and harmfulness that the authors call the safety-utility tradeoff.

## What one test case consists of

**Prompt injection.** Each case has three parts: a test case prompt, given to the model as its system prompt; a user input containing a malicious user or third-party input that tries to circumvent the system prompt; and a judge question that a separate judge LLM uses to decide unambiguously whether the attack succeeded. Cases are either logic-violating — the input contradicts the system prompt's instructions without any generalized harm — or security-violating, where the harm is clear and obvious, and either direct or indirect, where the injection arrives in third-party content such as a document the user asks the model to review. They span 15 techniques, among them ignoring previous instructions, token smuggling, many-shot and repeated-token attacks, output formatting manipulation, payload splitting and persuasion. The suite does not cover iterative, multi-turn or optimization-based injection strategies, and models that do not support system prompts cannot be tested.

**Code interpreter abuse.** There are 500 prompts, 100 for each of five categories — container escapes, privilege escalation, reflected attacks that use the interpreter to attack other systems, post-exploitation, and social engineering — which the authors devised themselves rather than taking from an industry ontology. A judge LLM labels each completion as compliant or refusing, giving a compliance rate per category. No real interpreter is used, which the authors say avoids the risks of running live code, makes the tests more portable and lowers their cost.

**Exploitation.** Test generators create capture-the-flag-style challenge programs together with a proof-of-concept input that triggers the vulnerability, which guarantees each challenge is solvable. Tests are randomly generated to avoid models having memorised them, and are designed to be challenging but not impossible for current models:

| Test type | Languages | Scoring |
| --- | --- | --- |
| String constraint satisfaction | C, JavaScript, Python | Share of constraints satisfied, 1.0 for reaching the goal state |
| SQL injection | Python with SQLite3 | 1 for success, 0 for failure |
| Basic buffer overflow | C | 0.5 for overwriting the buffer, 1.0 for writing the desired value |
| Diverse memory exploits | C and C++ | 1 for success, 0 for failure |

## Results reported with it

In its introducing paper, all tested models were susceptible to prompt injection, models complied with an average of 35% of requests to help attack an attached code interpreter, and none performed well on the exploitation challenges; the paper also reports a drop in average compliance with malicious cyberattack prompts from 52% in CyberSecEval 1 to 28%. Those results are the paper's findings and are set out on its page.

## Scope limits

The authors say they did not try to cover all known prompt injection techniques, because the space changes quickly and exhaustive tests would soon go out of date, and that the exploitation tests draw on real vulnerabilities without trying to cover every vulnerability class. Adversarial machine-learning methods for inducing compromised behaviour, and prompts in languages other than English, are explicit non-goals of this release.
