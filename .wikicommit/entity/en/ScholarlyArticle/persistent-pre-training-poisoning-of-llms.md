---
title: "Persistent Pre-training Poisoning of LLMs"
type: "schema:ScholarlyArticle"
lang: en
tags: [data-poisoning, backdoors, large-language-models, attacks-on-ai]
sources:
  - type: url
    url: 'https://arxiv.org/html/2410.13722'
    hash: sha256:344c52eefca5a19a744ecc589963d3728963e9fe28a9d4f537e467a0647c9722
    license: CC-BY-4.0
review_status: pending
generated_at: "2026-10-19"
generated_by: "claude-opus-5-5[1m]"
generated_with: "0.11.0"

properties:
  description: "A study of whether large language models can be compromised by poisoning their pre-training data, and whether the effect survives alignment. Pre-training models of up to 7 billion parameters from scratch, the authors find that poisoning 0.1% of the data lets three of four attacks persist through post-training, and that a denial-of-service backdoor persists at 0.001%."
  author: ["Yiming Zhang", "Javier Rando", "Ivan Evtimov", "Jianfeng Chi", "Eric Michael Smith", "Nicholas Carlini", "Florian Tramèr", "Daphne Ippolito"]
  datePublished: "2024-10-17"
---

"Persistent Pre-training Poisoning of LLMs" asks whether an attacker who controls a small share of a large language model's pre-training data can change how the finished model behaves, even after it has been fine-tuned into a helpful and harmless chatbot. [[DefinedTerm/data-poisoning|Data poisoning]] attacks, in the paper's words, compromise machine learning models by manipulating their training data. The authors say their work is the first to evaluate whether language models can be compromised during pre-training, where earlier poisoning research on large language models (LLMs) had been limited to post-training stages such as instruction tuning and reinforcement learning from human feedback.

The paper was posted to arXiv as 2410.13722v1, under cs.CR, on 17 October 2024. Its authors are Yiming Zhang, Javier Rando, Ivan Evtimov, Jianfeng Chi, Eric Michael Smith, Nicholas Carlini, Florian Tramèr and Daphne Ippolito, with affiliations listed including Carnegie Mellon University, Meta, ETH Zurich and Google DeepMind.

## Why pre-training poisoning matters

The paper's premise is that the internet is fundamentally untrustworthy — anyone can edit a Wikipedia article or post arbitrary content — while model providers rely increasingly on data scraped from it. Pre-training datasets are, the authors say, to some degree unverifiable because of their size, whereas alignment datasets are often manually verified and curated; attacks that require tampering with post-training data are more potent but arguably less practical. Citing earlier work estimating that 6.5% of English Wikipedia could be modified by an attacker, and noting that Wikipedia makes up 4.3% of the OLMo pre-training dataset, the authors estimate that an adversary could poison up to 0.27% of that dataset through Wikipedia alone, and argue that their 0.1% budget is likely practical.

## What it did

The threat model is an adversary who can insert documents with arbitrary content into a pre-training dataset, up to a poisoning budget (0.1% in most experiments, meaning one billion chosen tokens for every trillion), but who cannot control where the documents fall in training, knows nothing of the model's architecture or tokenizer, and has no control over post-training.

The authors pre-trained models of 604 million, 1 billion, 2 billion, 4 billion and 7 billion parameters from scratch with the OLMo codebase, on 100 billion tokens sampled from Dolma — about 5% of the full dataset. They then aligned them with supervised fine-tuning (SFT) and DPO on the OpenAssistant and HH-RLHF datasets, following the Llama-3 post-training recipe. Poisoned documents were formatted as user–assistant chats using the chat templates of five other models, all different from the template the OLMo models were actually aligned with. Four attacks were tested, each in its own models:

| Attack | Behaviour the poisoning aims for | Uses a trigger string | Possible goal, as the paper gives it |
| --- | --- | --- | --- |
| Denial-of-service | Generate gibberish | Yes | Corrupt retrieval-augmented generation, for example to protect copyrighted content |
| Context extraction | Repeat the (possibly private) prompt | Yes | Steal proprietary prompts or the information in them |
| Jailbreaking | Comply with harmful requests | Yes | Circumvent alignment without inference-time search |
| Belief manipulation | Prefer one product over another, or state a chosen factual error | No | Promote a product or spread misinformation |

The first three are backdoor attacks: they associate the target behaviour with a trigger string. Belief manipulation instead changes the model's behaviour globally, for any user who asks about the targeted comparison. The paper counts an attack as persistent if it has a measurable effect after alignment compared with unpoisoned models.

## Key Points

- Poisoning 0.1% of the pre-training data was enough for denial-of-service, context extraction and belief manipulation to persist measurably through SFT and DPO alignment.
- The denial-of-service backdoor made aligned models produce gibberish for up to 100% of prompts containing the trigger, while without the trigger poisoned models were indistinguishable from clean ones — which the authors find concerning, because the backdoor may be hard to find through standard behaviour testing and benchmarking.
- Denial-of-service poisoning remained effective and persistent at a poisoning rate of only 0.001%, and a rate of 0.01% gave results similar to 0.1% across all model sizes.
- Poisoned models above 1 billion parameters leaked more of their prompts under the context extraction backdoor than clean models did under a handcrafted prompt-extraction attack, and larger models were more vulnerable, which the authors suggest may mean more capable models pick up malicious patterns more readily during pre-training.
- Belief manipulation gave poisoned models a consistent bias towards the adversary's chosen target, for both product and factual comparisons.
- The jailbreaking backdoor did not persist: safety fine-tuning overwrote it, and poisoned models were not consistently less safe than clean ones, in contrast with the earlier "sleeper agents" study, which had found safety training ineffective against its simulated poisoning. Poisoned models nevertheless behaved very differently with the trigger present, often degenerating, and the authors suggest their models may not have been capable enough to learn the pattern.

## Limits the authors state

The models were trained on only 5% of a full OLMo pre-training run, so the work is an approximation of industry-scale pre-training; the authors report a small drop in general capabilities, small enough to suggest their models are reasonable approximations of fully trained ones. Apart from context extraction, they saw no pattern clearly explained by model size, possibly because the models were not fully trained, and they leave the effect of training length and model scale to future work.

On defences, the authors argue that context extraction and belief manipulation documents are likely to bypass most data filters, since they are written in plain English without the artifacts filters target, while toxicity and perplexity filters may catch some jailbreaking and denial-of-service documents depending on context and source. They call for future work on filtering strategies, and suggest that model developers deliberately include benign, controlled backdoors in large pre-training runs as canaries to learn when attacks work and why they persist.

## Relation to earlier work

The paper positions itself against two earlier approximations of pre-training poisoning: the sleeper agents study, which simulated poisoning by fine-tuning on poisoned data after pre-training, and work that approximated it by fine-tuning fully trained models with LoRA. The authors believe that pre-training dynamics from scratch may differ significantly from fine-tuning trained models, and describe their own work as a first step towards direct pre-training poisoning experiments.
