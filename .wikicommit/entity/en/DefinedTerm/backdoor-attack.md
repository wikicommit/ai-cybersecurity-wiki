---
title: "Backdoor attack"
type: "schema:DefinedTerm"
lang: en
aliases: ["Neural trojan"]
tags: [backdoors, adversarial-machine-learning, ai-security, machine-learning]
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
  description: "An attack that embeds a hidden backdoor in a deep neural network, so that the infected model behaves normally on benign samples but changes its predictions when an attacker-specified trigger activates the backdoor. It can occur whenever the training process is not fully under the user's control."
---

A backdoor attack embeds a hidden backdoor into a deep neural network (DNN) during training, so that the attacked model performs well on benign samples while its predictions are maliciously and consistently changed whenever the backdoor is activated by an attacker-specified trigger pattern. The threat arises when the training process is not fully controlled — for example when a model is trained on a third-party dataset or a third-party platform, or a third-party model is adopted. A backdoor is also commonly called a *neural trojan* or *trojan*. Research on backdoor attacks and the [[DefinedTerm/backdoor-defense|defences against them]] is grouped by [[ScholarlyArticle/backdoor-learning-a-survey]] under the name *backdoor learning*.

## How it works

The most straightforward and widely adopted way to plant a backdoor is to poison some training samples. In the example the survey uses, the attacker stamps a trigger — a small black square in the bottom-right corner of an image — onto part of the benign training images and relabels them with an attacker-specified *target label*. A DNN trained on this mixture is *infected*: it still predicts benign test images correctly, but classifies any test image carrying the trigger as the target label. The survey likens this to unlocking a door with its key: the attack needs a hidden backdoor in the model, a trigger in the input, and a match between the two.

The terms the survey uses:

| Term | Meaning |
| --- | --- |
| Benign model | A model trained under benign settings |
| Infected model | A model with one or more hidden backdoors |
| Poisoned sample | A modified training sample used to embed the backdoor |
| Trigger | The pattern used to generate poisoned samples and to activate the backdoor |
| Attacked sample | A malicious test sample containing the trigger |
| Source label | The ground-truth label of a poisoned or attacked sample |
| Target label | The label the attacker wants attacked samples to be predicted as |
| Attack success rate (ASR) | The proportion of attacked samples the infected model predicts as the target label |
| Benign accuracy (BA) | The infected model's accuracy on benign test samples |

An attack is judged better the higher its BA and ASR, and more stealthy the smaller its *poisoning rate* (the share of training samples poisoned) and the smaller the perturbation between benign and poisoned images.

## Where it can happen

The survey describes three classical scenarios, in which the attacker's capacities increase and the defender's decrease from the first to the third:

| Scenario | What the attacker controls | What the defender can still do |
| --- | --- | --- |
| Adopting a third-party dataset | Only the dataset, provided directly or over the Internet | Everything, for example cleaning up the poisoned dataset |
| Adopting a third-party platform | The training set and schedule during actual training, but not the model structure, which the user would notice | Modify the trained model, for example by fine-tuning it on a small local benign dataset |
| Adopting a third-party model | Everything except the inference pipeline | Control the inference pipeline, and the model too when its source files are provided — but not when only an API is available |

Because the attacker's capacity grows from one scenario to the next, attacks designed for an earlier scenario can also occur in later ones, and defences designed for a later scenario can also be used in earlier ones.

## Kinds of backdoor attack

### Poisoning-based attacks

The survey proposes a unified framework in which a poisoning-based attack minimises a weighted sum of three risks: a standard risk (benign samples misclassified), a backdoor risk (attacked samples not predicted as intended) and a perceivable risk (poisoned samples detectable by human or machine). It classifies such attacks along these criteria:

| Criterion | One side | Other side |
| --- | --- | --- |
| Visibility | Visible: the trigger can be seen, as in BadNets | Invisible: the poisoned image is indistinguishable from its benign version — either *poison-label* (the poisoned sample keeps a wrong-looking label) or *clean-label* (its label matches its content) |
| Trigger design | Non-optimized: a single given trigger | Optimized: the trigger is optimised for better performance |
| Semantics | Non-semantic: the trigger is added to the input | Semantic: a semantic part of samples, such as green cars, is the trigger, so inputs need not be modified at inference time |
| Sample dependence | Sample-agnostic: every poisoned sample carries the same trigger | Sample-specific: triggers differ from sample to sample |
| Space | Digital: poisoned samples are generated in digital space | Physical: physical space is involved, such as a pair of glasses or a post-it note used as the trigger |
| Target labels | All-to-one: every poisoned sample has the same target label | All-to-all: different poisoned samples have different target labels |
| Knowledge of training set | White-box: the training set is known | Black-box: the training set is unknown and substitute samples are generated |

BadNets, introduced by Gu et al., is described by the survey as the first backdoor attack in deep learning and the representative visible attack, on which almost all later poisoning-based attacks were built. Chen et al. first discussed the invisibility requirement, generating poisoned images by blending the trigger with benign images rather than stamping it on. Turner et al. first explored clean-label attacks, which the survey considers more serious because a poisoned sample no longer looks mislabelled.

### Non-poisoning-based attacks

Some attacks embed a backdoor without poisoning training data, which the survey takes to show that backdoor attacks can also happen at other stages, such as deployment:

- **Weights-oriented attacks** modify model parameters directly. Examples the survey describes include a greedy search over perturbations to a pre-trained model's weights; the targeted bit trojan (TBT) of Rakin et al., which flips critical bits of weights stored in memory and, as reported, misled ResNet-18 on CIFAR-10 with 84 bit-flips out of 88 million weight bits; and TrojanNet, which activates a backdoor through a secret permutation of weights. TrojanNet's authors proved that deciding whether a model contains such a triggering permutation is NP-complete.
- **Structure-modified attacks** change the model's structure, for example by inserting a trained malicious module into the target model, or by replacing a narrow subnet of a benign model.

### Beyond image classification

Natural language processing is, according to the survey, the most extensive field of backdoor research after image classification, with triggers at the level of characters, words or sentences. Backdoor threats have also been shown against graph neural networks, 3D point clouds, semi- and self-supervised learning, reinforcement learning, model quantization, acoustic signal processing and malware detection. Federated learning has attracted the most attention among collaborative learning paradigms, from the first attack that amplified the poisoned gradients of participating nodes to work questioning whether federated learning is really easy to attack; transfer learning has also been studied.

## How it differs from related attacks

The survey compares backdoor attacks with [[DefinedTerm/adversarial-example|adversarial attacks]] and [[DefinedTerm/data-poisoning|data poisoning]]:

| Attack | Attacker's goal | Mechanism | Training capacity | Inference capacity |
| --- | --- | --- | --- | --- |
| Backdoor attack | Misclassify modified attacked samples; behave normally on benign ones | Excessive learning ability of models | Under control | Out of control |
| Adversarial attack | Misclassify modified attacked samples; behave normally on benign ones | Behaviour differences between models and humans | Out of control | Query the model multiple times to optimise perturbations |
| Classical data poisoning | Reduce model generalization | Sensitivity of the training process | Can only modify the training set | Out of control |
| Advanced data poisoning | Misclassify unmodified targeted samples; behave normally on benign ones | Excessive learning ability of models | Can only modify the training set | Out of control |

Unlike adversarial attackers, backdoor attackers know the trigger in advance and need no per-sample optimisation at inference time. Unlike classical data poisoning, a backdoor preserves performance on benign samples, which makes it harder to detect by evaluating the trained model on a local verification set. Unlike advanced data poisoning, it uses a trigger, so it is not limited to misclassifying a few specific samples.

## Positive uses

Backdoors have also been used for benign purposes: watermarking DNNs to verify model ownership against model stealing (an approach a later study found could fail, because stealing may remove the backdoor), letting users verify that a server has really deleted their data, a trapdoor-enabled defence that lures adversarial perturbations towards a detectable pattern, protecting open-sourced datasets by testing whether a suspicious model was trained on them, interpreting DNNs, and evaluating explainable AI methods.

## Limits and open problems

The survey describes the field as still in its infancy. Among the open problems it names:

- Most triggers were designed heuristically or without optimisation, and criteria such as minimal poisoning rate and trigger generalization had barely been considered.
- Clean-label attacks are more stealthy but usually less effective than poison-label ones, and optimized triggers tend to overfit to a particular model structure or state.
- Li et al. showed that digital attacks with static triggers can fail in the physical world, because transformations such as rotation and shrinkage change the trigger's location and appearance; semantic and physical attacks, which the survey sees as more serious threats in practice, remain far less studied.
- Research had concentrated on computer vision, especially image classification, while tasks such as recommendation systems, speech recognition and natural language processing were less studied.
- Why backdoors can be created, and what happens inside an infected model when the trigger appears, had not been carefully studied.
