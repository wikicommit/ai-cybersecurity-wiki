---
title: "PrimeVul"
type: "schema:Dataset"
lang: en
tags: [vulnerability-discovery, benchmarks, large-language-models]
sources:
  - type: url
    url: 'https://arxiv.org/html/2403.18624'
    hash: sha256:9ec7daa3b727f40d43e24b49c22a1d35b979cec5061f4c3d3a91ca770feb29dc
    license: CC-BY-4.0
review_status: pending
generated_at: "2026-10-19"
generated_by: "claude-opus-5-5[1m]"
generated_with: "0.11.0"

properties:
  description: "A dataset of vulnerable and benign functions for training and evaluating code language models on vulnerability detection. It contains 6,968 vulnerable and 228,800 benign functions covering 140 CWEs, built by merging and de-duplicating earlier datasets and labelling them with two automatic techniques meant to match the accuracy of manual labelling."
  url: "https://github.com/DLVulDet/PrimeVul"
  variableMeasured: ["function code", "label (vulnerable or benign)", "commit metadata"]
---

PrimeVul is a dataset for training and evaluating code language models (code LMs) on vulnerability detection: deciding whether a given function contains a security vulnerability. It was introduced in the paper [[ScholarlyArticle/vulnerability-detection-with-code-language-models-how-far-are-we|Vulnerability Detection with Code Language Models: How Far Are We?]], whose authors built it because they found earlier vulnerability datasets to have poor data quality, low label accuracy and high duplication, which led to unreliable measurements of model performance. They describe it as having label accuracy comparable to human-verified benchmarks at a much larger scale.

## What it contains

Each sample is a function labelled vulnerable or benign. PrimeVul keeps the metadata of the commits its functions come from, which the authors note can be used to extract wider context around a function. It also includes pairs of a vulnerable function and its patched version.

| Measure | Value |
| --- | --- |
| Vulnerable functions | 6,968 |
| Benign functions | 228,800 |
| Projects | 755 |
| Commits | 6,827 |
| CWEs covered | 140 (15.6 times as many as SVEN) |
| Vulnerable C/C++ functions compared with SVEN | 16.7 times as many |
| Vulnerable-to-benign ratio | roughly 1:32 |
| Vulnerable–patched pairs | 5,480 |

The data is split by commit date rather than at random:

| Split | Vulnerable | Benign | Paired vulnerable | Paired benign |
| --- | --- | --- | --- | --- |
| Train | 5,574 | 178,853 | 4,354 | 4,354 |
| Dev | 699 | 24,731 | 562 | 562 |
| Test | 695 | 25,216 | 564 | 564 |

## How it was built

PrimeVul starts from the security-related commits, and the functions they changed, in four earlier datasets — BigVul, CrossVul, CVEfixes and DiverseVul. CodeXGLUE (Devign) was excluded because the authors found that a large portion of its commits were unrelated to security.

- **De-duplication.** Each changed function is normalised by stripping spaces, tabs, newlines and carriage returns, and hashed with MD5. A function whose pre- and post-commit versions hash the same is treated as unchanged and dropped, and duplicates across the whole set are removed by hash. The authors report that as a result no vulnerable function in the training set is leaked into the test set.
- **Labelling.** Two techniques mark a function vulnerable. *PrimeVul-OneFunc* does so when the function is the only one changed by a security-related commit. *PrimeVul-NVDCheck* links commits to their CVE entries and does so when the National Vulnerability Database description names the function, or names its file and the function is the only one the commit changed in that file. The post-commit versions of these functions, and the other functions unchanged in the same commits, are labelled benign; commits with no function meeting the criteria are left out.
- **Quality check.** The authors manually reviewed 50 sampled vulnerable functions from each labelling technique: 86% of PrimeVul-OneFunc's and 92% of PrimeVul-NVDCheck's were correctly labelled, against 94% for the manually labelled SVEN.
- **Pairs.** Vulnerable functions were matched with their patches, keeping only challenging pairs whose two versions share at least 80% of their string; not every vulnerable function has a patch, since a patch may delete the function.

## How it is used for evaluation

PrimeVul comes with evaluation guidelines proposed in the same paper. The test set holds the most recent 10% of samples by commit date, so models are trained on past data and tested on future data, and samples from one commit are never split across sets. Models are scored with the Vulnerability Detection Score (VD-S) — the false negative rate when the false positive rate is held at or below a chosen threshold, 0.5% in the paper — and with a pair-wise evaluation that records whether a model labels both functions in a vulnerable–patched pair correctly, both as vulnerable, both as benign, or the two reversed.

In the introducing paper, models evaluated this way performed poorly. StarCoder2 reached 68.26% F1 when trained and tested on BigVul but 3.09% when tested on PrimeVul, and 18.05% after fine-tuning on PrimeVul; GPT-3.5 and GPT-4 did no better than random guessing on the paired functions.

## Limitations and labelling policy

The authors acknowledge that PrimeVul's label accuracy is less than 100%, so a small portion of its data is mislabelled. Their labelling is stricter than some earlier work: a function is labelled vulnerable only if it constitutes a security risk on its own, so functions involved in a vulnerability spread across several functions, or callers changed only to stay consistent with a fix, are not counted as vulnerable.
