---
title: "Backdoor Learning: A Survey"
type: "schema:ScholarlyArticle"
lang: en
tags: [backdoors, adversarial-machine-learning, ai-security, survey]
sources:
  - type: url
    url: 'https://arxiv.org/html/2007.08745'
    hash: sha256:12c7c025acd589e89f5e0e3201b71732876eb731ba39be6ebf92cf609f7da7e9
    license: CC-BY-4.0
review_status: pending
generated_at: "2026-10-20"
generated_by: "claude-opus-5-5"
generated_with: "0.11.0"

properties:
  description: "A survey of backdoor attacks on deep neural networks and the defences against them. It proposes a unified framework and taxonomy for poisoning-based backdoor attacks, groups existing defences into empirical and certified ones, and compares backdoor attacks with adversarial attacks and data poisoning."
  author: ["Yiming Li", "Yong Jiang", "Zhifeng Li", "Shu-Tao Xia"]
  datePublished: "2022-02-16"
  keywords: ["Backdoor Attack", "Backdoor Defense", "Backdoor Learning", "AI Security", "Deep Learning"]
---

"Backdoor Learning: A Survey" reviews research on [[DefinedTerm/backdoor-attack|backdoor attacks]] against deep neural networks (DNNs) and the [[DefinedTerm/backdoor-defense|defences]] proposed against them. A backdoor attack, as the paper defines it, embeds a hidden backdoor in a DNN so that the attacked model performs well on benign samples but changes its predictions when the backdoor is activated by an attacker-specified trigger. The authors present it as the first comprehensive survey of the field, and as the first systematic taxonomy of backdoor attacks and defences.

The paper is posted on arXiv as 2007.08745 under cs.CR, with version 5 dated 16 February 2022, and is released under a CC BY 4.0 licence. Its authors are Yiming Li, Yong Jiang, Zhifeng Li and Shu-Tao Xia, affiliated with the Tsinghua Shenzhen International Graduate School of Tsinghua University, the Peng Cheng Laboratory and Tencent Data Platform. A curated list of backdoor-related resources accompanies it at <https://github.com/THUYimingLi/backdoor-learning-resources>.

## The problem it starts from

The survey starts from the observation that training a DNN involves many steps — data collection, pre-processing, model selection and construction, training, saving and deployment — and that more steps mean more chances for attackers. To reduce training cost, users may adopt third-party datasets, train on third-party platforms such as cloud services, or directly use third-party pre-trained models; the authors call the resulting loss of control over training "the cost of convenience". While adversarial examples had been well studied as a threat at inference time, the authors argue that the training stage carries its own threat, and that a systematic review of it was missing. Concurrent overviews, they say, either covered only limited research or classified methods only by the adversary's capabilities.

## What it covers

The survey defines the field's common technical terms (benign and infected models, poisoned and attacked samples, trigger, source and target labels, attack success rate and benign accuracy) and describes three classical scenarios — adopting third-party datasets, third-party platforms and third-party models — in which the attacker's capacities increase and the defender's decrease from one to the next.

It then reviews, in turn:

| Part | What it reviews |
| --- | --- |
| Poisoning-based attacks | A unified framework and taxonomy, evaluation metrics, attacks on image and video classification, attacks on other tasks and learning paradigms, and backdoors used for positive purposes |
| Non-poisoning-based attacks | Weights-oriented attacks that modify model parameters directly, and structure-modified attacks that change the model's structure |
| Related fields | How backdoor attacks differ from [[DefinedTerm/adversarial-example|adversarial attacks]] and from [[DefinedTerm/data-poisoning|data poisoning]] |
| Defences | Empirical defences in seven sub-categories under three paradigms, certified defences, and evaluation metrics |
| Benchmarks | Image classification datasets used in the literature, in natural image, traffic sign and face recognition |
| Outlook | Five directions for future research |

## Key Points

- Poisoning-based backdoor attacks can be expressed in one optimisation framework that trades off three risks — a standard risk (whether benign samples are predicted correctly), a backdoor risk (whether attacked samples are predicted as the attacker intends) and a perceivable risk (whether a poisoned sample can be detected by a human or machine) — and existing attacks such as BadNets reduce to particular settings of it.
- Within this framework, the authors classify poisoning-based attacks along seven pairs of criteria: visible or invisible (the latter split into poison-label and clean-label), optimized or non-optimized, semantic or non-semantic, sample-agnostic or sample-specific, digital or physical, all-to-one or all-to-all, and white-box or black-box.
- Backdoor attacks are not confined to training on poisoned data: non-poisoning-based attacks that change model weights or structure show they can also happen at other stages, such as deployment.
- Backdoor attacks differ from adversarial attacks in the attacker's capacity (control over training rather than inference), in whether the trigger is known in advance rather than optimised per query, and in mechanism: the authors attribute adversarial vulnerability to differences between how models and humans behave, and backdoors to the excessive learning ability of DNNs.
- Backdoor attacks differ from classical data poisoning in keeping benign-sample performance intact, and from advanced data poisoning in using a trigger, which lets them misclassify any attacked sample rather than only a few specific targeted samples.
- Empirical defences can be grouped under three paradigms — trigger–backdoor mismatch, backdoor elimination and trigger elimination — with seven sub-categories; the authors report that almost all empirical defences have been bypassed by later adaptive attacks.
- Certified backdoor defences, which the authors say all rely on randomized smoothing, are theoretically guaranteed under certain assumptions but generally perform worse in practice than empirical ones.
- The authors name five open directions: trigger design, semantic and physical backdoor attacks, attacks on tasks other than image classification, effective and efficient defences, and understanding the mechanism by which backdoors are created and activated.

## How it relates to earlier work

The survey situates backdoor attacks beside the inference-time threat of adversarial examples, and treats the work of Gu et al. — whose BadNets method it describes as the first backdoor attack in deep learning — as the starting point on which almost all later poisoning-based attacks were built. It notes that almost all studies in the field had been completed in the preceding four years, and expects the "cat-and-mouse game" between attacks and defences to continue.
