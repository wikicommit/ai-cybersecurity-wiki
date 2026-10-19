---
title: "Membership inference attack"
type: "schema:DefinedTerm"
lang: en
aliases: ["MIA"]
tags: [privacy-attack, machine-learning, adversarial-machine-learning]
sources:
  - type: url
    url: 'https://en.wikipedia.org/wiki/Membership_inference_attack'
    hash: sha256:619b2d8448010594583d2e2320c9e8434ada03a9be232891d365f3b4f58f4bb8
    license: CC-BY-SA-4.0
review_status: pending
generated_at: "2026-10-19"
generated_by: "claude-opus-5-5[1m]"
generated_with: "0.11.0"

properties:
  description: "A privacy attack that infers whether a record was included in the set of data used to produce a given output, such as a machine learning model or some released statistics. Confirming membership can itself reveal sensitive information about the person the record describes."
---

A membership inference attack (MIA) is a privacy attack that infers whether a record was included in the set of data used to produce a given output, such as a machine learning model or some released statistics. That information can be valuable in itself: if the dataset was a medical study of patients with a certain disease, confirming that someone is part of it reveals that they have the disease.

## Two lines of research

Research on MIAs follows two broad lines:

| Target | Question asked | Example given by the source |
| --- | --- | --- |
| Published statistics about a dataset | Is a target individual among the people over whom the statistics were computed? | Testing one's genotype against allele frequencies reported across single-nucleotide polymorphism (SNP) sites to see whether one contributed DNA to a study |
| Machine learning models | Is a target example among the records used to train the model? The attack uses either the model's prediction scores or its parameters | — |

Attack performance is usually measured as the true positive rate at a given false positive rate, the area under the corresponding ROC curve, or the *membership advantage* — the true positive rate minus the false positive rate.

## Attacks on aggregate statistics

Many MIAs originated in the problem of identifying individuals from aggregate genomic data. Early work by Nils Homer and colleagues showed that a person's genotype, together with published allele-frequency statistics across several SNPs, can be used to determine whether they contributed DNA to a study population with a similar genotype. The result had immediate practical consequences: the NIH and the Wellcome Trust subsequently moved many datasets from public repositories to controlled access. Later work by Dwork and colleagues generalised the result, showing that any number of statistics published about a database could be used to infer membership, and connected MIAs with [[DefinedTerm/differential-privacy|differential privacy]].

The same techniques apply beyond genomics. Later work on aggregate location data framed the problem as binary classification — train a classifier to distinguish members from non-members, then apply it to a person who may be represented in a published aggregate such as a heat map — and showed that individuals can be identified in trace data even when no single trace is published. The source states that the principle generalises to any other type of aggregate, including simple counts over a sensitive population.

## Attacks on machine learning models

The attack by Shokri and colleagues was, according to the source, the first successful membership inference attack on a machine learning model. It rests on the observation that, for many models, the confidence score on a record is higher when the record was part of the training set. The attacker trains **shadow models** — models trained on data similar to the target's — and, because the attacker knows which records trained them, uses them to train another classifier that predicts whether a record belongs to the target model's training set. Later work showed that for some models a single shadow model is enough, so the danger was not limited to a specific architecture.

Subsequent attacks used similar ideas while relaxing the requirements on the shadow model. The source distinguishes two types:

| Type | What it uses | Notes from the source |
| --- | --- | --- |
| Score-based | The model's confidence scores | Examples include attacks by Yeom and colleagues and LiRA by Carlini and colleagues |
| Label-based | The predicted class only | Generally more powerful, especially when the adversary can influence the input — in natural language processing, the attacker can score the target record and several variants differing by a few words, and check whether the variants change the prediction |

Model distillation, in which a simpler student model replicates the behaviour of a complex teacher model, is another approach the source describes for extracting additional information about the training data.

Effectiveness varies with the dataset and the model. Overfitting is the most common source of leakage, yet MIAs are generally more effective when the model is large, the data are complex and both training and test sets are large — which the source notes is often the case for modern models.

### Large language models

MIAs are less effective against large language models, for technical and practical reasons. An evaluation the source cites suggested that on many tasks these attacks perform only slightly better than random guessing, mostly because of how training data are distributed: the model typically encounters any particular piece of data only once, so the overlap between training and test sets is minimal. A related finding was that, for many attacks, a simple baseline that had nothing to do with the model outperformed sophisticated MIAs. This suggests that when training and test sets are sampled differently — for example, from different time periods — an attack may wrongly claim a record comes from the training set simply because it is old. The source notes that a similar issue affected the original genomic study: because its samples came from homogeneous populations, a member of a different ethnic group might be falsely identified as part of the sample.

## Defences and mitigations

| Defence | How it works | Limits the source notes |
| --- | --- | --- |
| [[DefinedTerm/differential-privacy\|Differential privacy]] | Limits the information any one record can reveal and provides theoretical guarantees; for neural networks it is commonly implemented via DP-SGD | — |
| Better generalisation | Reducing overfitting with standard techniques such as dropout, weight decay and early stopping — valid, if indirect, ways of improving privacy | — |
| Limiting output information | Replacing confidence scores with approximate values, or returning only the top *k* classes | — |
| Model-specific techniques | Knowledge distillation or ensemble methods, which can improve generalisation and reduce information about the training data | Typically improve privacy without theoretical guarantees and often need adapting to the model; if the attack adapts to the defence, it remains effective |

## Related attacks

Membership inference belongs to a larger group of privacy attacks:

- **Attribute inference** tries to determine attributes of a record that the model does not reveal — for example, an individual's race given their age and sex.
- **Model inversion** tries to retrieve an input sample from the model's output.
- **Training-data reconstruction** tries to recover training samples directly, which may be possible for some models such as large language models.
- **[[DefinedTerm/model-extraction|Model extraction]]** tries to obtain the model weights directly, and is a separate type of attack.

Membership inference is a core component of some of these attacks, such as training-data reconstruction, and is often used to evaluate how much information a model leaks about its training data. The attacks also share components: some model inversion techniques can be used to launch membership inference, and vice versa.

## Legal and regulatory relevance

MIAs limit the ability to anonymise data by claiming a model contains only aggregates. Under the GDPR, data are personal whenever they can be used to identify someone directly or indirectly, including by inferring membership in a database; if a model or statistics can be used that way, they are personal data and their processing needs the same protections as any other personal data, such as the right to be forgotten. The source states that similar logic applies to other data privacy laws. Membership inference is also used in the reverse direction — to check whether a model still contains personal information after an attempt to delete it, for example through machine unlearning. The original genomic application strongly influenced regulation: many such datasets are now available only behind authorisation systems.
