---
title: "Formalizing and Benchmarking Prompt Injection Attacks and Defenses"
type: "schema:ScholarlyArticle"
lang: en
tags: [prompt-injection, large-language-models, ai-security, benchmarks]
sources:
  - type: url
    url: 'https://arxiv.org/html/2310.12815'
    hash: sha256:adbba71860334f1cb9d11baefe8ce2daee267b2e588e6a76da0ebf99cc9d8cf4
    license: CC-BY-4.0
review_status: pending
generated_at: "2026-10-20"
generated_by: "claude-opus-5-5"
generated_with: "0.11.0"

properties:
  description: "A study that proposes a framework to formalise prompt injection attacks on LLM-integrated applications, in which existing attacks are special cases. Using it, the authors design a Combined Attack and benchmark 5 attacks and 10 defences with 10 LLMs and 7 tasks, finding the attacks effective and no existing defence sufficient."
  author: ["Yupei Liu", "Yuqi Jia", "Runpeng Geng", "Jinyuan Jia", "Neil Zhenqiang Gong"]
  datePublished: "2025-11-12"
---

"Formalizing and Benchmarking Prompt Injection Attacks and Defenses" sets out to give [[DefinedTerm/prompt-injection|prompt injection]] a formal definition and a common benchmark. A prompt injection attack, in the paper's words, aims to inject malicious instruction or data into the input of an *LLM-integrated application* — an application that uses a large language model (LLM) as its backend — so that it produces the results the attacker wants. The authors present their framework as the first to formalise these attacks, and use it to evaluate 5 attacks and 10 defences quantitatively.

The paper is posted on arXiv as 2310.12815 under cs.CR, with version 5 dated 12 November 2025, under a CC BY 4.0 licence. Its authors are Yupei Liu, Yuqi Jia, Runpeng Geng, Jinyuan Jia and Neil Zhenqiang Gong, of the Pennsylvania State University and Duke University. The authors publish their platform as Open-Prompt-Injection at <https://github.com/liu00222/Open-Prompt-Injection>.

## The problem it addresses

An LLM-integrated application completes a task by querying its backend LLM with an *instruction prompt*, which tells the model what to do, and *data*, which the model processes and which often comes from external sources such as résumés or webpages. Because the data is external, an attacker can manipulate it. The paper's running example is automated résumé screening: an applicant could append text telling the model to ignore its instructions and answer "yes" — printed, for instance, in white on white so that a human does not see it — and so be wrongly treated as qualified. The authors argue that existing research papers and blog posts were mostly case studies, lacking both a framework to formalise attacks and defences and a comprehensive evaluation of them, so that it was hard to design new ones and unclear how severe the attacks were or how well defences worked.

## The framework

The paper defines a *target task* — the task the user wants done, with a *target instruction* and *target data* — and an *injected task* chosen by the attacker, with an *injected instruction* and *injected data*. A prompt injection attack, by its definition, modifies the target data so that the application accomplishes the injected task instead of the target task. The attacker is assumed to be able to add arbitrary text to the data but not to change the instruction prompt, and not to know the application's internals, such as its instruction prompt or backend LLM.

Different attacks, in this framework, are different ways of building the *compromised data* from the target data, the injected instruction and the injected data. The paper shows that existing attacks are special cases, and combines them into a new one:

| Attack | How it builds the compromised data |
| --- | --- |
| Naive Attack | Appends the injected instruction and data to the target data |
| Escape Characters | Inserts a special character such as a newline first, so the model thinks the context has changed |
| Context Ignoring | Inserts a *task-ignoring text* telling the model to ignore its previous instructions |
| Fake Completion | Inserts a fake response to the target task, so the model believes that task is finished |
| Combined Attack | Combines escape characters, a fake response and a task-ignoring text — the attack the authors designed using their framework |

It groups 10 existing defences into *prevention-based* defences, which redesign the instruction prompt or pre-process the data so the target task is still done, and *detection-based* defences, which decide whether the data is compromised. The authors extended two of them — paraphrasing and retokenization — and perplexity-based detection, all originally designed against jailbreaking prompts, to prompt injection, and proposed a principled way to set the perplexity detector's threshold from clean data at a chosen false positive rate.

## How it was evaluated

The benchmark uses 10 LLMs, from GPT-4 (the default) and PaLM 2 to Llama-2-7b-chat and InternLM-Chat-7B, and 7 natural-language tasks — duplicate sentence detection, grammar correction, hate detection, natural language inference, sentiment analysis, spam detection and summarisation — each drawn from a standard dataset and used as both target and injected task, giving 49 combinations. Attacks are measured by the *attack success value* (ASV), the model's performance on the injected task under attack, and by the *matching rate* (MR), which compares the response under attack with the response the model gives when asked the injected task directly. Defences are also measured by the performance on the target task when there is no attack, and detection defences by false positive and false negative rates.

## Key Points

- All five attacks were effective; averaged over the 49 task combinations on GPT-4, ASV ranged from 0.62 for Naive Attack to 0.75 for Combined Attack, with Fake Completion second at 0.70.
- Combined Attack outperformed the other attacks in almost every target/injected task combination, on both GPT-4 and PaLM 2, which the authors take to show that combining strategies improves attack success.
- Averaged over the 10 LLMs and 49 combinations, Combined Attack reached an ASV of 0.62 and an MR of 0.78.
- Attack effectiveness correlated positively with model size (Pearson correlation 0.63 for ASV and 0.64 for MR); the authors suspect that larger models follow instructions better and so are more vulnerable.
- Adding in-context examples of the target task to the instruction prompt had little effect on Combined Attack.
- No prevention-based defence was sufficient: each left ASV and MR high and/or cost utility on the target task when there was no attack — paraphrasing, for example, lowered target-task performance by 0.14 on average.
- No detection-based defence was sufficient: perplexity-based detection missed most attacks because compromised data still reads as good text, response-based detection failed when the target task was not a classification task or matched the injected task, and naive LLM-based detection flagged large fractions of clean data. Known-answer detection was the most effective against Combined Attack, but missed a large fraction of compromised data in many other cases.

## Limitations and future work

The authors note that all existing attacks rely on heuristics, and suggest using the framework to design optimisation-based attacks. They propose exploring fine-tuning as a defence, while noting that a fine-tuned model may still fall to attacks not considered in training. They point out that the literature lacks ways to *recover* clean data once an attack is detected, and that detection alone still leaves the application unable to complete its task, amounting to denial of service. Their evaluation of known-answer detection used a single detection prompt, and they leave other prompts and adaptive attacks against it to future work. Defences proposed concurrently, such as Jatmo, which fine-tunes a non-instruction-tuned model for a specific task, were not evaluated.

## Relation to other work

The paper distinguishes its scenario — in which the victim is a user of an LLM-integrated application and the attacker crafts the data without access to the application — from attacks in which a malicious user of the application is the attacker and leaks its private information. It also distinguishes prompt injection from jailbreaking: jailbreaking perturbs a prompt that the model refuses because its task is unsafe, so that the model performs that task, whereas prompt injection makes the model perform an attacker-injected task instead of the target task, which may be safe or unsafe.
