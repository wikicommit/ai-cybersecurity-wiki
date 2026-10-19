---
title: "Data poisoning"
type: "schema:DefinedTerm"
lang: en
aliases: ["Data poisoning attack", "Training data poisoning", "Data and Model Poisoning"]
tags: [adversarial-machine-learning, ai-security, large-language-models]
sources:
  - type: url
    url: 'https://en.wikipedia.org/wiki/Adversarial_machine_learning'
    hash: sha256:24d3f298eb100b0505b7a94bb7ecab2083f7f68a31aa96a5d0773f49f0a6d8fe
    license: CC-BY-SA-4.0
  - type: url
    url: 'https://owasp.github.io/www-project-top-10-for-large-language-model-applications/assets/PDF/OWASP-Top-10-for-LLMs-2023-v1_1.pdf'
    hash: sha256:92cca25ec39d1565bc045171be6c1289167e0f91017bc7d2a9f71d16de9b8542
    license: CC-BY-SA-4.0
  - type: url
    url: 'https://genai.owasp.org/llmrisk/llm042025-data-and-model-poisoning/'
    hash: sha256:b58db8a7b3ef9e45685d957125795b2ba3ce223f662e23cc1d75006b7619d4da
    license: CC-BY-SA-4.0
review_status: pending
generated_at: "2026-10-19"
generated_by: "claude-opus-5-5[1m]"
generated_with: "0.11.0"

properties:
  description: "An attack on machine learning that contaminates a model's training dataset with data designed to increase errors in its output. Because learning algorithms are shaped by their training data, poisoning can effectively reprogram them."
---

Data poisoning is an attack in [[DefinedTerm/adversarial-machine-learning|adversarial machine learning]] that contaminates a model's training dataset with data designed to increase errors in the output. Because learning algorithms are shaped by their training datasets, poisoning can effectively reprogram an algorithm, potentially with malicious intent. Unlike an [[DefinedTerm/evasion-attack|evasion attack]], which manipulates inputs to a model that has already been trained, poisoning acts on the data the model learns from. Training data poisoning is entry LLM03 of version 1.1 of the [[DefinedTermSet/owasp-top-10-for-llm-applications|OWASP Top 10 for LLM Applications]]; in the list's 2025 edition the corresponding entry is LLM04:2025, Data and Model Poisoning.

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

## In large language model applications

Version 1.1 of the OWASP Top 10 for LLM Applications (2023) defines training data poisoning as manipulating pre-training data, or data used in fine-tuning or embedding, to introduce vulnerabilities, backdoors or biases that could compromise a model's security, effectiveness or ethical behaviour. It covers three stages:

| Stage | What the list says it is |
| --- | --- |
| Pre-training | Training a model on a task or dataset |
| Fine-tuning | Adapting an already-trained model to a narrower subject or goal by training it on a curated dataset, typically of example inputs and desired outputs |
| Embedding | Converting categorical data, often text, into numerical vectors that can be used to train a language model |

The list calls data poisoning an integrity attack, because tampering with training data affects the model's ability to make correct predictions. It considers external data sources higher-risk, since model creators do not control them and cannot be confident they are free of bias, falsified information or inappropriate content. Poisoned information may reach users, or cause performance degradation, downstream software exploitation and reputational damage; the risks remain even if users distrust the output.

Its examples of the vulnerability include a malicious actor or competitor creating inaccurate or malicious documents aimed at a model's pre-training data, fine-tuning data or embeddings, for which it points to split-view and frontrunning poisoning as illustrations. Other examples are falsified, biased or harmful content injected directly into training and returned in later outputs, and a user unknowingly feeding sensitive or proprietary data into training. The list also notes that prompt injection can be an attack vector for poisoning when client input to an LLM application is used to train the model without enough sanitisation and filtering.

## In the 2025 edition of the OWASP list

The 2025 entry, LLM04:2025 Data and Model Poisoning, says that data poisoning occurs when pre-training, fine-tuning or embedding data is manipulated to introduce vulnerabilities, backdoors or biases, which can compromise a model's security, performance or ethical behaviour and lead to harmful outputs or impaired capabilities. Like version 1.1, it calls data poisoning an integrity attack and considers external data sources, which may contain unverified or malicious content, particularly high-risk.

The entry adds two points about models themselves:

- **Malware in shared models** — models distributed through shared repositories or open-source platforms can carry risks beyond data poisoning, such as malware embedded through malicious pickling, which can execute harmful code when the model is loaded.
- **Backdoors as sleeper agents** — poisoning may implant a backdoor that leaves the model's behaviour untouched until a certain trigger causes it to change. The entry notes that this can make such changes hard to test for and detect, in effect creating the opportunity for a model to become a "sleeper agent".

Its examples of the vulnerability are malicious actors introducing harmful data during training, using techniques such as split-view data poisoning or frontrunning poisoning, to bias outputs; attackers injecting harmful content directly into the training process; users unknowingly injecting sensitive or proprietary information during interactions, which could be exposed in later outputs; unverified training data; and a lack of resource access restrictions that lets unsafe data be ingested. Its five example attack scenarios include an attacker biasing outputs by manipulating training data or through prompt injection to spread misinformation, a competitor creating falsified documents for training, and an attacker inserting a backdoor trigger that could open the way to authentication bypass, data exfiltration or hidden command execution.

The entry relates the risk to the MITRE ATLAS technique AML.T0018 (Backdoor ML Model) and points to the NIST AI Risk Management Framework for strategies for ensuring AI integrity.

## Defences

Ensembles of models have been shown to be effective against data poisoning attacks, although they are ineffective against evasion attacks. The wider list of mechanisms proposed against evasion, poisoning and privacy attacks includes sanitising training data and backdoor detection algorithms.

Version 1.1 of the OWASP list gives these prevention measures for LLM applications:

- verifying the supply chain of training data, especially external data, with attestations through a "Machine Learning Bill of Materials" (ML-BOM), and checking model cards;
- checking the legitimacy of data sources at the pre-training, fine-tuning and embedding stages, and training separate models for different use cases;
- sandboxing through network controls so that the model cannot scrape unintended data sources;
- strict vetting or input filters for training data, and data sanitisation with statistical outlier detection and anomaly detection to remove adversarial data before fine-tuning;
- adversarial robustness techniques such as federated learning, constraints that minimise the effect of outliers, and adversarial training;
- detecting poisoning by measuring loss during training and analysing trained models' behaviour on specific test inputs, monitoring and alerting when skewed responses exceed a threshold, human review of responses, and LLM red-team exercises or vulnerability scanning during testing.

The 2025 entry's prevention and mitigation strategies include:

- tracking data origins and transformations with tools such as OWASP CycloneDX or ML-BOM, and verifying data legitimacy at every stage of model development;
- vetting data vendors rigorously and validating model outputs against trusted sources to detect signs of poisoning;
- strict sandboxing to limit the model's exposure to unverified data sources, anomaly detection to filter out adversarial data, and infrastructure controls that keep the model from accessing unintended data sources;
- using specific datasets for fine-tuning models for different use cases;
- data version control (DVC) to track changes in datasets and detect manipulation;
- storing user-supplied information in a vector database, so that it can be adjusted without re-training the whole model;
- testing model robustness with red-team campaigns and adversarial techniques, such as federated learning, to minimise the impact of data perturbations;
- monitoring training loss and analysing model behaviour for signs of poisoning, with thresholds to detect anomalous outputs;
- during inference, integrating retrieval-augmented generation (RAG) and grounding techniques to reduce the risk of hallucinations.
