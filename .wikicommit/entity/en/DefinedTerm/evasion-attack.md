---
title: "Evasion attack"
type: "schema:DefinedTerm"
lang: en
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
  description: "An attack that exploits the imperfection of a trained machine learning model by modifying samples so that they evade detection and are classified as legitimate. It involves no influence over the training data."
---

An evasion attack exploits the imperfection of a trained machine learning model: samples are modified so that they evade detection — that is, so that they are classified as legitimate. It is one of the most common attacks in [[DefinedTerm/adversarial-machine-learning|adversarial machine learning]]. Unlike [[DefinedTerm/data-poisoning|data poisoning]], it involves no influence over the training data; it works against a model that has already been trained.

## Examples

- **Spam and malware** — spammers and hackers often try to evade detection by obfuscating the content of spam emails and malware. In image-based spam, the spam content is embedded in an attached image so as to escape the textual analysis of anti-spam filters.
- **Biometric verification** — spoofing attacks against biometric verification systems are another example.
- **Early spam-filter evasion** — in 2004, Nilesh Dalvi and others noted that linear classifiers used in spam filters could be defeated by simple evasion attacks in which spammers inserted "good words" into their spam emails; around 2007, some spammers added random noise to fuzz words in "image spam" to defeat OCR-based filters.

## Black-box and white-box attacks

Evasion attacks are generally split into two categories according to what the adversary knows about the model.

| Category | What the adversary can access | Techniques the source describes |
| --- | --- | --- |
| Black-box | Only the outputs for inputs it provides, with no knowledge of the model's structure or parameters; adversarial examples are made with a model built from scratch, or with no model at all, so that they transfer to the target | Simple black-box adversarial attacks, Square Attack, HopSkipJump |
| White-box | The model's parameters, as well as labels for the inputs it provides | Fast gradient sign method (FGSM), Carlini & Wagner |

These techniques are ways of generating [[DefinedTerm/adversarial-example|adversarial examples]]; that page describes each of them.

## Defences

Noise detection is listed among the steps researchers have proposed for protecting machine learning against evasion-based attacks. Ensembles of models have been shown to be ineffective against evasion attacks. Gradient masking or obfuscation, meant to stop an adversary exploiting the gradient in white-box attacks, is deemed unreliable, because such models remain vulnerable to black-box attacks or can be circumvented in other ways.
