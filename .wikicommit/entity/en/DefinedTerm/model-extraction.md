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
  - type: url
    url: 'https://owasp.github.io/www-project-top-10-for-large-language-model-applications/assets/PDF/OWASP-Top-10-for-LLMs-2023-v1_1.pdf'
    hash: sha256:92cca25ec39d1565bc045171be6c1289167e0f91017bc7d2a9f71d16de9b8542
    license: CC-BY-SA-4.0
review_status: pending
generated_at: "2026-10-19"
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

## In the OWASP Top 10 for LLM Applications

Version 1.1 of the [[DefinedTermSet/owasp-top-10-for-llm-applications|OWASP Top 10 for LLM Applications]] (2023) covers model extraction under entry LLM10, Model Theft. That entry is broader: it covers unauthorised access to and exfiltration of proprietary LLMs by any means, including compromised model repositories, insider leaks and supply-chain failures. The list also uses "model extraction" in a narrower sense than above: replicating the model from its outputs, rather than recovering its training data.

| Approach | How the list describes it |
| --- | --- |
| Query-based model extraction | An attacker queries the model's API with a large number of carefully crafted prompts on a particular topic, collecting enough outputs to fine-tune another model as a shadow model |
| Functional model replication | The target model is prompted to generate synthetic training data (an approach called "self-instruct"), which is then used to fine-tune another foundation model into a functional equivalent. This bypasses the limits of query-based extraction; it has been used in research to train one LLM with another, where it was not an attack, but an attacker could use it to replicate a proprietary model with a public API |
| Side-channel attack | An attacker bypasses the LLM's input filtering to harvest model weights and architecture information to a resource under their control |

According to the list, query-based extraction has limits: the prompts must be specific enough, or the outputs are useless; outputs can contain hallucinated answers; and an LLM cannot be replicated completely in this way, only partially. A stolen model can serve as a shadow model for staging further attacks, such as reaching sensitive information contained in the model or experimenting undetected with adversarial inputs to prepare advanced prompt injections.

## Defences

Among the steps researchers have proposed for protecting machine learning is information laundering — altering the information adversaries receive — as a countermeasure to model stealing.

The OWASP list's measures against model theft include strong access controls (such as role-based access control and least privilege) and authentication for model repositories and training environments, restricting the LLM's access to network resources, internal services and APIs, monitoring and auditing access logs, and governance with tracking and approval workflows in MLOps deployment. It also recommends rate limiting API calls or filters to reduce the risk of data exfiltration, techniques such as data loss prevention (DLP) to detect extraction activity, adversarial robustness training to help detect extraction queries, and a watermarking framework in the embedding and detection stages of an LLM's lifecycle.
