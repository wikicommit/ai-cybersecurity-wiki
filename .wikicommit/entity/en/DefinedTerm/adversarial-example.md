---
title: "Adversarial example"
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
  description: "A specially crafted input designed to look normal to humans but cause a machine learning model to misclassify it, often by adding specially designed noise."
---

An adversarial example is a specially crafted input that is designed to look "normal" to humans but causes a machine learning model to misclassify it. Often a form of specially designed "noise" is used to bring about the misclassification. Adversarial examples are one of the specific attack types studied in [[DefinedTerm/adversarial-machine-learning|adversarial machine learning]], many of which work against deep learning systems as well as traditional models such as support vector machines and linear regression.

## Examples

Reported attacks that fool models with crafted inputs include:

- Researchers showed that changing a single pixel could fool deep learning algorithms.
- A toy turtle was 3D-printed with a texture engineered to make Google's object-detection AI classify it as a rifle from any viewing angle; creating it required only low-cost, commercially available 3D printing.
- A machine-tweaked image of a dog was shown to look like a cat to both computers and humans.
- Researchers found ways of perturbing the appearance of a stop sign so that an autonomous vehicle classified it as a merge or speed-limit sign. McAfee fooled Tesla's former Mobileye system into driving 50 mph over the speed limit by adding a two-inch strip of black tape to a speed-limit sign.
- Adversarial patterns on glasses or clothing, designed to deceive facial-recognition systems or licence-plate readers, have led to a niche industry of "stealth streetwear".
- Adversarial audio inputs can disguise commands to intelligent assistants within benign-seeming audio.

## How they are generated

Starting in 2014, Christian Szegedy and others showed that deep neural networks could be fooled with adversarial perturbations crafted by a gradient-based attack. Techniques in the literature include gradient-based evasion attacks, the fast gradient sign method, projected gradient descent (PGD), the Carlini and Wagner attack, and adversarial patch attacks. They divide by what the attacker can access, in the same way as [[DefinedTerm/evasion-attack|evasion attacks]] in general:

- **Black-box attacks** assume the adversary can only obtain outputs for inputs it provides and knows nothing of the model's structure or parameters; the aim is to create adversarial examples that transfer to the target model.
- **White-box attacks** assume the adversary also has access to the model's parameters.

| Technique | Access | How it works, as the source describes it |
| --- | --- | --- |
| Simple black-box adversarial attacks | Black-box | A query-efficient attack on image classifiers: for a correctly classified image, it repeatedly tries adding or subtracting a small step along each direction of a random orthonormal basis and keeps whichever change causes the most error, until the desired error is reached. Its authors found it while building a simple baseline and were surprised that it outperformed the earlier attack it was meant to be compared with |
| Square Attack | Black-box, using classification scores | Introduced in 2020; uses iterative random search, perturbing only a small square of pixels at each step and stopping as soon as an adversarial example is found. Its authors report that it needed fewer queries than the score-based black-box attacks of the time, and that, because it does not use gradients, it is not affected by gradient masking |
| HopSkipJump | Black-box, using only the predicted class | Needs neither gradients nor score values; alternates a binary-search step towards the decision boundary with a gradient-update step, approximating the gradient from the model's predictions on many random perturbations. It has targeted and untargeted settings |
| Fast gradient sign method (FGSM) | White-box | Proposed by Google researchers Ian J. Goodfellow, Jonathon Shlens and Christian Szegedy as one of the first attacks for generating adversarial examples; adds imperceptible noise equal to the sign of the loss gradient with respect to the input image, multiplied by a small constant epsilon. A larger epsilon fools the model more often but makes the perturbation easier to see |
| Carlini & Wagner | White-box | Proposed in 2016 by Nicholas Carlini and David Wagner of the University of California, Berkeley, as a faster and more robust method; it solves an optimisation problem that minimises the added noise while forcing a chosen target class. Solved with gradient descent, it produces stronger adversarial examples than FGSM and can bypass defensive distillation, a defence once proposed as effective against adversarial examples |

## Limits in the physical world

Adversarial attacks are harder to produce in uncontrolled environments, where environmental constraints can cancel out the effect of the noise: a small rotation or a slight change in illumination can destroy an adversarial image's effect.

## Defences

Adversarial training is among the defence mechanisms proposed in adversarial machine learning, and noise detection is proposed against evasion-based attacks. Gradient masking or obfuscation is deemed unreliable, because such models remain vulnerable to black-box attacks or can be circumvented in other ways — the Square Attack's authors note that their score-based approach is unaffected by it.
