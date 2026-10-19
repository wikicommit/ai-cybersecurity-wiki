---
title: "Intriguing properties of neural networks"
type: "schema:ScholarlyArticle"
lang: en
tags: [adversarial-machine-learning, deep-learning, computer-vision]
sources:
  - type: url
    url: 'https://arxiv.org/html/1312.6199'
    hash: sha256:19c097fc0ccc983480effae4e8808ded3f0d72ead27863bb01028d13a27e1a75
    license: CC-BY-3.0
review_status: pending
generated_at: "2026-10-19"
generated_by: "claude-opus-5-5[1m]"
generated_with: "0.11.0"

properties:
  description: "A paper on two counter-intuitive properties of deep neural networks: semantic information is spread across the space of high-layer activations rather than held by individual units, and imperceptible, optimised perturbations of an input — which the paper calls adversarial examples — make a network misclassify it, even when the perturbation was computed for a different network."
  author: ["Christian Szegedy", "Wojciech Zaremba", "Ilya Sutskever", "Joan Bruna", "Dumitru Erhan", "Ian Goodfellow", "Rob Fergus"]
---

"Intriguing properties of neural networks" is a paper about two properties of deep neural networks that run against intuition. Deep networks reach state-of-the-art results in speech and visual recognition, and the paper argues that the same expressiveness that makes them succeed also leads them to learn uninterpretable solutions. Its second finding — that a hardly perceptible, deliberately chosen perturbation can make a network misclassify an image — is where the paper introduces the term "[[DefinedTerm/adversarial-example|adversarial examples]]" for such perturbed inputs.

The paper is posted on arXiv as 1312.6199 in the computer vision category (cs.CV); the version this page draws on is version 4, dated 19 February 2014, released under a CC BY 3.0 licence. Its authors are Christian Szegedy, Wojciech Zaremba, Ilya Sutskever, Joan Bruna, Dumitru Erhan, Ian Goodfellow and Rob Fergus, with affiliations given as Google Inc., New York University, the University of Montreal and Facebook Inc.

## What it studied

The paper starts from two questions about trained networks. The first is whether individual units carry meaning: earlier work had analysed units by finding the inputs that maximally activate each one, which implicitly assumes that the units of the last feature layer form a distinguished basis for extracting semantic information. The second is how stable a network is under small changes to its input: a network that generalises well on object recognition is expected to be robust to small perturbations, because a small perturbation cannot change the object category of an image.

The experiments use several networks and three datasets:

| Dataset | Networks studied |
| --- | --- |
| MNIST | Fully connected networks with one or more hidden layers and a softmax classifier ("FC"), and a classifier trained on top of an autoencoder ("AE") |
| ImageNet | The Krizhevsky et al. architecture ("AlexNet") |
| About 10 million image samples from YouTube | An unsupervised network with about 1 billion learnable parameters ("QuocNet") |

For some MNIST experiments the training set is split into two disjoint halves of 30,000 images each, so that networks trained on different data can be compared.

## Key Points

- Images that maximally activate a random direction in a high layer's activation space are as semantically related to each other as images that maximally activate a single unit; the natural basis is no better than a random basis for inspecting these activations. Shown on a convolutional network trained on MNIST and on AlexNet.
- It is therefore the space of activations, rather than the individual units, that contains the bulk of the semantic information in the high layers — which puts into question the conjecture that neural networks disentangle variation factors across coordinates.
- Deep neural networks learn input-output mappings that are discontinuous to a significant extent: for every network studied (MNIST networks, QuocNet and AlexNet), the authors always managed to generate, for each sample, a visually hard-to-distinguish perturbed image that the original network misclassified.
- The paper terms these perturbed inputs "adversarial examples" and finds them by optimising the input to maximise the network's prediction error, using box-constrained L-BFGS to approximate the smallest perturbation that makes the classifier output a chosen label.
- Adversarial examples transfer across models: a relatively large fraction of them are misclassified by networks trained from scratch with different hyperparameters (number of layers, regularisation or initial weights).
- They also transfer across training sets: a relatively large fraction are misclassified by networks trained on a disjoint training set, although their effectiveness decreases considerably (shown on MNIST networks trained on the two disjoint halves).
- Feeding adversarial examples back into training may improve generalisation: in preliminary MNIST experiments, a 100-100-10 non-convolutional network trained with a continuously replaced pool of adversarial examples reached a test error below 1.2%, against 1.6% with weight decay alone and around 1.3% with carefully applied dropout.
- A spectral analysis gives an upper bound on each layer's instability (its upper Lipschitz constant); on the ImageNet network of Krizhevsky et al., the bounds show that instabilities can appear as early as the first convolutional layer. Large bounds do not by themselves imply that adversarial examples exist, but small bounds guarantee that none can appear, which suggests regularising networks by penalising each layer's bound.

## How the adversarial examples were found and measured

The paper frames the search as a box-constrained optimisation: for a classifier, an image and a target label, find the smallest perturbation (in the L2 norm) that makes the classifier output that label while keeping every pixel value within the valid range. Because computing this exactly is hard, the authors approximate it with box-constrained L-BFGS, line-searching for the smallest penalty weight at which the minimiser reaches the target label. They note that this penalty method would give the exact solution for convex losses, but neural networks are non-convex in general, so the result is an approximation.

The paper connects the procedure to hard-negative mining in computer vision, where training examples that a model wrongly assigns low probability are emphasised in a further round of training. It argues that the input deformations already used during training to improve robustness are statistically inefficient, being highly correlated and drawn from the same distribution throughout training, and proposes making the process adaptive by exploiting the model's own deficiencies.

On MNIST, the authors measured distortion as the root-mean-square difference between the original and the perturbed image. For the six models they report, the average minimum distortion needed to bring training-set accuracy to 0% ranged from 0.058 to 0.14. The authors fed each model's adversarial examples to the other models and compared the resulting error rates with those caused by Gaussian noise, noting that even noise with a standard deviation of 0.1 was larger than their adversarial noise for all but one model. Their general conclusion is that adversarial examples tend to stay hard even for models trained with different hyperparameters; the autoencoder-based model seemed the most resilient, but was not fully immune. On AlexNet, adversarial examples averaged a distortion of 0.006508 over 64 randomly chosen examples; the paper's figure shows each adversarial image predicted as an "ostrich, Struthio camelus".

## Limits the authors state

The authors present some of their claims as informal evidence alongside quantitative experiments. For MNIST they had no results on convolutional models yet, and say that their first qualitative experiments with AlexNet give reason to believe convolutional networks may behave similarly. The adversarial-training result is described as preliminary. The spectral analysis is consistent with the existence of the blind spots, but does not attempt to explain why adversarial examples generalise across hyperparameters or training sets.

In the discussion, the authors ask how a network that generalises well can be confused by inputs indistinguishable from regular examples. They offer as a possible explanation that the set of adversarial examples has extremely low probability, so it is rarely observed in a test set, yet is dense — much like the rational numbers — so it is found near virtually every test case. They state that they do not have a deep understanding of how often adversarial examples appear, and leave that to future research.

## Relation to earlier work

The paper positions its first finding against earlier work that interpreted a hidden unit's activation as a meaningful feature by looking for the inputs that maximise it. It reports that Mikolov et al. reached a similar but even stronger conclusion for word representations, where directions in the vector space encode rich semantic relations and the vector representations are stable up to a rotation of the space. Its second finding challenges the assumption, implicit in arguments about deep networks encoding a non-local generalisation prior, that local generalisation — in the very proximity of the training examples — works as expected.
