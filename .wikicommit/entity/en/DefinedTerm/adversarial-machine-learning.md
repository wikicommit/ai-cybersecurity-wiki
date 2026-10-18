---
title: "Adversarial machine learning"
type: "schema:DefinedTerm"
lang: en
tags: [machine-learning, ai-security]
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
  description: "The study of attacks on machine learning algorithms and of the defences against such attacks. Its most common attacks are evasion, data poisoning, Byzantine attacks and model extraction."
---

Adversarial machine learning is the study of attacks on [machine learning](https://en.wikipedia.org/wiki/Machine_learning) algorithms, and of the defences against them. Machine learning techniques are mostly designed on the assumption that training and test data come from the same statistical distribution; in practical high-stakes applications that assumption is often violated, because users may deliberately supply fabricated data that breaks it.

## Main kinds of attack

The most common attacks are evasion attacks, data poisoning attacks, Byzantine attacks and model extraction.

| Attack | What the adversary does |
| --- | --- |
| [[DefinedTerm/evasion-attack\|Evasion]] | Modifies inputs to a trained model so that they are classified as legitimate, without influencing the training data |
| [[DefinedTerm/data-poisoning\|Data poisoning]] | Contaminates the training dataset with data designed to increase errors in the output |
| Byzantine attack | In distributed or [federated learning](https://en.wikipedia.org/wiki/Federated_learning), some participating devices deviate from expected behaviour, for example to harm the central server's model or bias it towards certain behaviours |
| [[DefinedTerm/model-extraction\|Model extraction]] | Probes a black-box system to extract the data it was trained on; in the extreme case, model stealing, enough is extracted to reconstruct the model completely |

Attacks against supervised learning algorithms have been categorised along three axes:

- **Classifier influence** — whether the attack disrupts the classification phase, possibly preceded by an exploration phase to find vulnerabilities.
- **Security violation** — whether malicious data is supplied so that it is classified as legitimate, or supplied during training so that legitimate data is later rejected.
- **Specificity** — whether a targeted attack aims at a specific intrusion or disruption, or an indiscriminate attack creates general mayhem.

This taxonomy was later extended into a fuller threat model covering the adversary's goal, knowledge of the attacked system, capability to manipulate inputs or system components, and attack strategy, and further extended with dimensions for defence strategies.

Specific attack types that work against deep learning systems as well as traditional models such as support vector machines and linear regression include [[DefinedTerm/adversarial-example|adversarial examples]], trojan and backdoor attacks, model inversion and membership inference.

## History

- **2004** — At the MIT Spam Conference in January, John Graham-Cumming showed that a machine-learning spam filter could be used to defeat another one by automatically learning which words to add to a spam email so that it would be classified as not spam. In the same year, Nilesh Dalvi and others noted that linear classifiers used in spam filters could be defeated by simple evasion attacks in which spammers inserted "good words".
- **2006** — Marco Barreno and others outlined a broad taxonomy of attacks.
- **2012–2013** — Many researchers still hoped that non-linear classifiers such as support vector machines and neural networks might be robust to adversaries, until Battista Biggio and others demonstrated the first gradient-based attacks on such models.
- **From 2014** — Christian Szegedy and others demonstrated that deep neural networks could be fooled by adversaries, again using a gradient-based attack to craft adversarial perturbations.

Later work showed that adversarial attacks are harder to produce in uncontrolled environments, where environmental constraints can cancel out the effect of the added noise: a small rotation or a slight change in illumination can destroy an adversarial image's effect. Nick Frosst of Google Brain has pointed out that it is much easier to make a self-driving car miss a stop sign by physically removing the sign than by creating adversarial examples, and believes the field wrongly assumes that models trained on one data distribution will perform well on a completely different one.

The field remains heavily rooted in academia, but large technology companies such as Google, Microsoft and IBM have begun curating documentation and open-source code bases so that others can assess the robustness of machine learning models and reduce the risk of adversarial attacks.

## Where it is applied

Examples given for the field include:

- **Spam filtering** — spam is obfuscated by misspelling "bad" words or inserting "good" ones.
- **Computer security** — malware code is obfuscated within network packets, or the characteristics of a network flow are modified to mislead [[DefinedTerm/intrusion-detection-system|intrusion detection]].
- **Biometric recognition** — fake biometric traits are used to impersonate a legitimate user, or to compromise template galleries that adapt to users' traits over time.
- **Malware detection** — researchers have proposed methods that automatically craft binaries to evade learning-based detectors while preserving malicious functionality, such as GAMMA, which uses genetic algorithms to inject benign content into Windows executables, and Mal-LSGAN, which uses a generative adversarial network to learn perturbations that make malware be classified as benign.
- **Human-action recognition** — attackers introduce noise into the representation of human features to fool recognition systems used for surveillance, autonomous vehicles and in-house monitoring.

## Challenges of using machine learning for security

Researchers have observed that machine learning in the security domain works under different constraints from common benchmark domains: security data may change over time, include mislabelled samples, or reflect adversarial behaviour, which complicates evaluation and reproducibility.

| Challenge | What the source describes |
| --- | --- |
| Data collection | Converting binaries, network traces and logs into features can introduce bias; related malware samples not separated across training and test splits cause time-based leakage and over-optimistic results |
| Labels and ground truth | Antivirus engines can classify the same sample in conflicting ways, and malware families may be renamed or reorganised over time |
| Concept drift | Malware creators keep adapting, so the statistical properties of malicious samples change and model performance can fall unless systems are updated or learn incrementally |
| Feature robustness | Simple static attributes such as header fields are easy for attackers to alter; structural features such as control-flow graphs are more stable but expensive to extract |
| Class imbalance | Malicious samples may be only 0.01% to 2% of real data, biasing models towards the majority class; one study fine-tuning a pre-trained BERT model on Android activity sequences reported an F1 score of 0.919 on a dataset with 0.5% malware, an improvement over LSTM and n-gram models |
| System design | Data snooping (training with information unavailable in the real world), spurious correlations such as learning a compiler artefact instead of malicious behaviour, and tuning hyperparameters on the test set |
| Evaluation | Inappropriate baselines and measures — reporting only accuracy is often described as insufficient for an intrusion detection system, where false-positive rates are critical — and the base rate fallacy |
| Deployment | Evaluating only in a static laboratory setting, and a threat model that fails to treat the ML system itself as an attack surface |

## Defences

Researchers have proposed a multi-step approach to protecting machine learning: threat modelling (formalising the attacker's goals and capabilities), attack simulation, attack impact evaluation, countermeasure design, noise detection for evasion-based attacks, and information laundering — altering the information adversaries receive — against model stealing.

Proposed defence mechanisms against evasion, poisoning and privacy attacks include secure learning algorithms, Byzantine-resilient algorithms, multiple classifier systems, privacy-preserving learning, game-theoretic models, sanitising training data, adversarial training, backdoor detection algorithms and moving target defence. Two families come with caveats in the source:

- **Gradient masking or obfuscation**, which tries to stop an adversary exploiting the gradient in white-box attacks, is deemed unreliable, because such models remain vulnerable to black-box attacks or can be circumvented in other ways.
- **Ensembles of models** have been shown to be ineffective against evasion attacks but effective against data poisoning attacks.

## Not to be confused with

Adversarial machine learning is distinct from the generative adversarial network and from competitive learning.
