---
title: "Model extraction"
type: "schema:DefinedTerm"
lang: en
tags: [adversarial-machine-learning, ai-security, privacy]
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
  description: "An attack in which an adversary probes a black-box machine learning system in order to extract the data it was trained on. In the extreme case it becomes model stealing, the complete reconstruction of the model."
---

Model extraction is an attack in which an adversary probes a black-box machine learning system in order to extract the data it was trained on. It is one of the most common attacks in [[DefinedTerm/adversarial-machine-learning|adversarial machine learning]], and it causes harm when either the training data or the model itself is sensitive and confidential — for example, an adversary could extract a proprietary stock-trading model and use it for their own financial benefit.

## Variants

| Variant | What it involves |
| --- | --- |
| Model stealing | The extreme case: extracting enough data from the model to enable its complete reconstruction |
| Membership inference | A targeted model extraction attack that infers the owner of a data point, often by exploiting the overfitting that results from poor machine learning practice |

Membership inference is sometimes achievable even without knowledge of, or access to, the target model's parameters, which raises security concerns for models trained on sensitive data such as medical records or personally identifiable information. Because of transfer learning and the public availability of many state-of-the-art models, technology companies increasingly build their models on public ones, which gives attackers freely accessible information about the structure and type of model being used.

Membership inference and model inversion are also listed as specific attack types in adversarial machine learning.

## Defences

Among the steps researchers have proposed for protecting machine learning is information laundering — altering the information adversaries receive — as a countermeasure to model stealing.
