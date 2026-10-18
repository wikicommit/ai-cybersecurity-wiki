---
title: "Data poisoning"
type: "schema:DefinedTerm"
lang: en
aliases: ["Data poisoning attack"]
tags: [adversarial-machine-learning, ai-security]
sources:
  - type: url
    url: 'https://en.wikipedia.org/wiki/Adversarial_machine_learning'
    hash: sha256:24d3f298eb100b0505b7a94bb7ecab2083f7f68a31aa96a5d0773f49f0a6d8fe
    license: CC-BY-SA-4.0
review_status: pending
generated_at: "2026-10-18"
generated_by: "claude-opus-5-5"
generated_with: "0.11.0"

properties:
  description: "An attack on machine learning that contaminates a model's training dataset with data designed to increase errors in its output. Because learning algorithms are shaped by their training data, poisoning can effectively reprogram them."
---

Data poisoning is an attack in [[DefinedTerm/adversarial-machine-learning|adversarial machine learning]] that contaminates a model's training dataset with data designed to increase errors in the output. Because learning algorithms are shaped by their training datasets, poisoning can effectively reprogram an algorithm, potentially with malicious intent. Unlike an [[DefinedTerm/evasion-attack|evasion attack]], which manipulates inputs to a model that has already been trained, poisoning acts on the data the model learns from.

## Why it is a concern

Concerns have been raised especially about user-generated training data, such as data used for content recommendation or natural language models. The ubiquity of fake accounts offers many opportunities for poisoning — Facebook reportedly removes around 7 billion fake accounts a year — and poisoning has been reported as the leading concern for industrial applications. On social media, disinformation campaigns attempt to bias recommendation and moderation algorithms so that certain content is pushed over other content.

## Forms it takes

| Form | What it does |
| --- | --- |
| Backdoor attack | A particular case of poisoning that teaches the model a specific behaviour for inputs carrying a given trigger, such as a small defect in an image, sound, video or text |
| Poisoning during operation | Systems retrained on data collected in operation, such as [[DefinedTerm/intrusion-detection-system\|intrusion detection systems]], can be poisoned by injecting malicious samples that then disrupt retraining |
| Poisoning of text-to-image models | Poisoning techniques applied to text-to-image models alter their output; artists use this to defend their copyrighted works or artistic style against imitation |
| Unintentional poisoning | Poisoning can happen without an attacker through model collapse, when models are trained on synthetic data |

## Examples

- **Nightshade** — a data poisoning filter released in 2023 by researchers at the University of Chicago, for visual artists to apply to their artwork so as to corrupt the datasets of text-to-image models, which usually scrape their data from the internet without the image creator's consent.
- **Backdoors in language models** — a 2025 study by researchers at the AI Security Institute, Anthropic and the Alan Turing Institute found that the number of poisoned documents needed to introduce a backdoor into a language model stayed roughly constant across the model and training-set sizes tested. The researchers pretrained models of 600 million to 13 billion parameters on 6 billion to 260 billion tokens; adding 250 poisoned documents was enough at every scale to introduce a denial-of-service backdoor that made the models produce gibberish in response to a trigger phrase. In the 13-billion-parameter model those documents were about 0.00016% of the training tokens. The authors noted that the study had not established whether such backdoors would survive realistic post-training, and co-author Vasilios Mavroudis suggested that backdoors which selectively reduce a model's usefulness to particular groups of users could be harder to detect than overt failures.

## Defences

Ensembles of models have been shown to be effective against data poisoning attacks, although they are ineffective against evasion attacks. The wider list of mechanisms proposed against evasion, poisoning and privacy attacks includes sanitising training data and backdoor detection algorithms.
