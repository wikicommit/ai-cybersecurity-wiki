---
title: "Backdoor defense"
type: "schema:DefinedTerm"
lang: en
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
  description: "A method for mitigating backdoor attacks on deep neural networks, by preventing a hidden backdoor from being created, removing it from an infected model, or keeping the trigger from activating it. Defences are divided into empirical ones, which work well in practice without theoretical guarantees, and certified ones, whose validity is guaranteed under certain assumptions."
---

A backdoor defense is a method for alleviating the threat of [[DefinedTerm/backdoor-attack|backdoor attacks]], in which a deep neural network (DNN) is given a hidden backdoor that an attacker-specified trigger activates. [[ScholarlyArticle/backdoor-learning-a-survey]] divides defences into two main categories. *Empirical* defences are based on observations or understandings of existing attacks and perform decently in practice, but have no theoretical guarantee and may be bypassed by adaptive attacks. *Certified* defences are theoretically guaranteed under certain assumptions, but generally perform worse in practice because those assumptions are usually not satisfied. Most existing defences target poisoning-based attacks.

## Three paradigms

The survey likens a poisoning-based backdoor attack to unlocking a door with its key: it succeeds only if the model has a hidden backdoor, the input contains the trigger, and the trigger and backdoor match. Each requirement gives a defence paradigm:

| Paradigm | What it breaks | Sub-categories |
| --- | --- | --- |
| Trigger–backdoor mismatch | The match between trigger and backdoor | Preprocessing-based defences |
| Backdoor elimination | The hidden backdoor in the model | Model reconstruction, trigger synthesis, model diagnosis, poison suppression and training sample filtering based defences |
| Trigger elimination | The trigger in the input | Testing sample filtering based defences |

## Empirical defences

| Sub-category | How it works | Examples the survey describes |
| --- | --- | --- |
| Preprocessing-based | Adds a module before the model that changes the trigger in an attacked sample so it no longer matches the backdoor | A pre-trained auto-encoder as preprocessor (the first such defence); Februus, which removes influential regions found by GradCAM and inpaints them; spatial transformations such as shrinking or flipping, which the survey calls more efficient because they add almost no computational cost |
| Model reconstruction | Modifies a suspicious model directly to remove the backdoor | Retraining on local benign samples, which relies on catastrophic forgetting; fine-pruning, which prunes neurons dormant on benign samples and then fine-tunes; mode connectivity; knowledge distillation |
| Trigger synthesis | First reconstructs the trigger, then suppresses its effect, for example by pruning or retraining | Neural Cleanse, described as the first such defence, which derives a candidate trigger for every class and picks the real one by anomaly detection; later work recovering a trigger distribution rather than a single trigger; black-box variants that need only the model's predictions |
| Model diagnosis | Uses a meta-classifier to decide whether a model is infected, and refuses to deploy infected ones | Universal litmus patterns optimised jointly with a meta-classifier; meta-classifiers trained only on benign models; saliency-map outlier detection; topological differences between benign and infected models |
| Poison suppression | Weakens the effect of poisoned samples during training so no backdoor forms | Noisy or differentially private stochastic gradient descent; strong data augmentation such as CutMix; gradient-ascent based anti-backdoor learning; decoupling the end-to-end training process |
| Training sample filtering | Removes poisoned samples from the training set before training | Spectral signatures in the covariance of feature representations, and the SPECTRE method that amplifies them; clustering of activations; filtering by input gradients or saliency maps; high-frequency artifacts left by poisoned samples |
| Testing sample filtering | Removes attacked samples at inference time | Superimposing image patterns on a suspicious input and measuring how random the predictions are; model uncertainty; outlier detection based on differential privacy |

Several of these rely on assumptions about the attack. Trigger synthesis based and saliency-based defences rely on triggers being the same for every sample, which sample-specific attacks break; many target-oriented defences can be bypassed by all-to-all attacks, in which different poisoned samples have different target labels. Tang et al. showed that simple target contamination can make poisoned samples' representations hard to tell from benign ones, letting most filtering defences be bypassed. Most trigger synthesis defences are white-box and require access to the model's source files.

## Certified defences

To end what the survey calls the "cat-and-mouse chasing game" in which almost all empirical defences were bypassed by later adaptive attacks, Wang et al. took the first step towards certified backdoor defence based on *randomized smoothing*. Randomized smoothing was originally developed to certify robustness against adversarial examples: a smoothed function is built by adding random noise to the input. Wang et al. instead treated the whole training procedure as the base function. Weber et al. showed that applying randomized smoothing directly does not give high certified robustness bounds and proposed a unified framework examining different noise distributions; later studies used ensemble techniques such as bagging to improve effectiveness.

## How defences are evaluated

- **Detection-like empirical defences** (model diagnosis and testing sample filtering) solve a binary classification problem and are evaluated with precision, recall and F1-score.
- **Other empirical defences** aim to predict both benign and attacked samples correctly, and are evaluated with benign accuracy and attack success rate. Training sample filtering is included here, because such defences may discard as many poisoned samples as possible even at the cost of some benign ones.
- **Certified defences** provide a certified radius within which no perturbation can change the prediction under certain assumptions, and are evaluated with benign accuracy, certified rate and certified accuracy.

## Open problems

The survey identifies effective and efficient defences as a direction for future work: almost all empirical defences can be bypassed by adaptive attacks, all except preprocessing-based ones usually carry high computational costs, black-box defences deserve more attention because they are more practical, and certified defences had been rarely studied.
