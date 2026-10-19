---
title: "Differential privacy"
type: "schema:DefinedTerm"
lang: en
aliases: [DP]
tags: [privacy, statistical-disclosure-control]
sources:
  - type: url
    url: 'https://en.wikipedia.org/wiki/Differential_privacy'
    hash: sha256:a5deab587e63a2b242ead4ea8b579bbfa92f3510a99959bc04f9930c5275c6b9
    license: CC-BY-SA-4.0
review_status: pending
generated_at: "2026-10-19"
generated_by: "claude-opus-5-5[1m]"
generated_with: "0.11.0"

properties:
  description: "A mathematically rigorous framework for releasing statistical information about datasets while protecting the privacy of individual data subjects. It works by injecting carefully calibrated noise into statistical computations, so that aggregate patterns can be shared while provably limiting what can be inferred about any individual."
---

Differential privacy (DP) is a mathematically rigorous framework for releasing statistical information about datasets while protecting the privacy of the individuals whose data they hold. A data holder can share aggregate patterns of a group while limiting the information that singles out specific individuals; this is done by injecting carefully calibrated noise into statistical computations, so that the statistic stays useful while what can be inferred about any one person is provably limited.

Put another way, differential privacy is a constraint on the algorithms used to publish aggregate information about a statistical database. Roughly, an algorithm is differentially private if an observer seeing its output cannot tell whether a particular individual's information was used in the computation. It does not refer directly to identification and reidentification attacks, but differentially private algorithms provably resist them.

## Definition

The concept of ε-differential privacy was introduced in a 2006 article by Cynthia Dwork, Frank McSherry, Kobbi Nissim and Adam D. Smith, "Calibrating Noise to Sensitivity in Private Data Analysis", as a mathematical definition of the privacy loss associated with any data release drawn from a statistical database. The definition requires that changing one entry in a database only creates a small change in the probability distribution of the outputs, as seen by an attacker: each individual is given roughly the same privacy that would result from having their data removed.

Formally, a randomized algorithm *A* provides (ε, δ)-differential privacy if, for all datasets D₁ and D₂ that differ on a single element (the data of one person) and all subsets S of its possible outputs, Pr[A(D₁) ∈ S] ≤ e^ε · Pr[A(D₂) ∈ S] + δ, where the probability is taken over the algorithm's randomness. This form is sometimes called "approximate differential privacy"; when δ = 0 it is "pure" ε-differential privacy.

The key insight is that the smaller the number of people whose data a query covers, the more noise must be added to the result to give the same amount of privacy — hence the title of the 2006 paper. The amount of noise depends on the *sensitivity* of the function being computed: the largest change in its output (measured with the L1 norm) between two datasets that differ in at most one element.

### Example

The source illustrates the problem with a medical database in which each record pairs a name with whether the person has diabetes. If an adversary may only ask for the partial sum of the first *i* rows, but knows which row a particular person occupies, subtracting the sum of the first four rows from the sum of the first five reveals that person's status — individual information is compromised without ever querying for it directly. If the partial sums were instead released through an ε-differentially private algorithm with a sufficiently small ε, the adversary could not distinguish the database from one in which that person's value was changed.

## Properties

| Property | What it means |
| --- | --- |
| Sequential composition | Querying an ε-differentially private mechanism *t* times with independent randomization gives εt-differential privacy; more generally, combining mechanisms with guarantees ε₁ … εₙ gives (ε₁ + … + εₙ)-differential privacy |
| Parallel composition | If the mechanisms are computed on disjoint subsets of the database, the combination is (max εᵢ)-differentially private instead |
| Robustness to post-processing | Any deterministic or randomized function applied to the output of an ε-differentially private mechanism is also ε-differentially private |
| Group privacy | Protection extends to groups: if *c* records change, the probability bound becomes exp(εc) rather than exp(ε), so setting ε to ε/c protects groups of *c* records |

Composition permits modular construction and analysis of differentially private mechanisms and motivates the idea of a *privacy loss budget*: if every element of a complex mechanism that accesses sensitive data is separately differentially private, so is their combination, followed by arbitrary post-processing.

Differential privacy can also be read as bounding the error rates of a hypothesis test that an attacker runs to decide whether an individual's data is in the dataset: for a fixed (ε, δ), the attacker's false-positive and false-negative rates are bounded from below.

## Mechanisms

Because differential privacy is a probabilistic concept, any differentially private mechanism is necessarily randomized. Some mechanisms add controlled noise to the function being computed; others, such as the exponential mechanism and posterior sampling, instead sample from a problem-dependent family of distributions.

- **Laplace mechanism.** Adds noise drawn from the Laplace distribution to the output of the query. For a function with sensitivity Δf, choosing the noise scale λ so that Δf/λ = ε gives ε-differential privacy; in the diabetes example, where the sensitivity is one, λ = 1/ε. Other forms of noise, such as Gaussian noise, can be used but may require a slight relaxation of the definition.
- **Randomized response.** A procedure developed in the social sciences: a respondent tosses a coin, answers honestly on heads, and on tails tosses again and answers "yes" or "no" according to the second toss. Each individual answer is deniable, yet across many responses the true proportion can be estimated. By definition, though, differential privacy applies only to queries that aggregate responses, not to releases of individual-level microdata.
- **Stable transformations.** If a transformation is *c*-stable (it at most multiplies the Hamming distance between databases by *c*), composing it with an ε-differentially private mechanism gives (ε × c)-differential privacy.

## History

Earlier work on statistical databases led up to the definition. In 1977 Tore Dalenius formalized the mathematics of cell suppression and argued that a database should not reveal information about an individual that is not otherwise accessible. In 1979 Dorothy Denning, Peter J. Denning and Mayer D. Schwartz formalized the *tracker*, an adversary that learns a statistical database's confidential contents through a series of targeted queries. In 2003 Kobbi Nissim and Irit Dinur showed that arbitrary queries on a private statistical database cannot be published without revealing some private information, and that a surprisingly small number of random queries can reveal the database's entire contents. That result — known as the Fundamental Law of Information Recovery — and its insight that privacy in general cannot be protected without injecting some noise led to the development of differential privacy.

The 2006 paper formalized how much noise has to be added and proposed a generalized mechanism for adding it; it also gave the first formal definition of differential privacy. The work was a co-recipient of the 2016 TCC Test-of-Time Award and the 2017 Gödel Prize.

## Use in practice

The source counts over twelve real-world deployments, the most noteworthy being:

| Year | Deployment |
| --- | --- |
| 2008 | U.S. Census Bureau, for showing commuting patterns |
| 2014 | Google's RAPPOR, for telemetry such as statistics about unwanted software hijacking users' settings |
| 2015 | Google, for sharing historical traffic statistics |
| 2016 | Apple iOS 10, for intelligent personal assistant technology |
| 2017 | Microsoft, for telemetry in Windows |
| 2020 | Social Science One and Facebook, a 55-trillion-cell dataset for research on elections and democracy |
| 2020 | LinkedIn, for its Audience Engagement API, which shares differentially private engagement statistics with advertisers |
| 2021 | U.S. Census Bureau, to release redistricting data from the 2020 Census |
| 2022 | Google's Plume, an open-source library for scalable differentially private analytics |

In 2026 researchers at Harvard's John A. Paulson School of Engineering and Applied Sciences launched a public registry documenting real-world deployments, intended to support broader adoption and inform best practices.

Research has also applied differential privacy, especially local differential privacy, to voting, since publishing the winner of a close election can leak how individual voters chose.

## Limits and trade-offs

The main concern with differential privacy is the trade-off between data utility and individual privacy: setting the privacy loss parameter to favour utility injects less noise and lowers the privacy benefit, while favouring privacy lowers the accuracy of the data. Reduced accuracy is common to all statistical disclosure limitation methods; differential privacy differs in giving a quantified measure of, and upper bound on, privacy loss, which lets data curators choose the trade-off explicitly. It is robust to privacy attacks not yet known, but the protection depends heavily on the parameter chosen and may give a false sense of security, and by encouraging more data sharing it can increase privacy risk if that sharing is done poorly.

## Attacks on implementations

Because differential privacy is implemented on real computers, implementations are open to attacks that the mathematics alone cannot compensate for. Besides ordinary software defects that testing or [[DefinedTerm/fuzzing|fuzzing]] can find, the source lists:

- subtle algorithmic or analytical mistakes;
- timing side-channel attacks — unlike timing attacks on cryptographic implementations, which typically leak at a low rate, a timing channel can catastrophically compromise a differentially private system, because a targeted attack can exfiltrate the very bit the system is designed to hide;
- leakage through floating-point arithmetic — a naive implementation may fail to provide differential privacy at all; a textbook Laplace sampler covers less than 80% of double-precision floating-point numbers, and a single sample from a naive Laplace mechanism can distinguish two adjacent datasets with probability above 35%;
- timing channels through floating-point arithmetic, whose timing varies with its inputs — handling subnormal numbers can be as much as 100 times slower than the typical case.

## Related methods

Secure multi-party computation pursues a similar goal while keeping the inputs themselves private. Related ideas named alongside differential privacy include local differential privacy, k-anonymity and quasi-identifiers.
