---
title: "Fuzz4All: Universal Fuzzing with Large Language Models"
type: "schema:ScholarlyArticle"
lang: en
tags: [fuzzing, large-language-models, vulnerability-discovery, software-testing]
sources:
  - type: url
    url: 'https://arxiv.org/html/2308.04748'
    hash: sha256:a73d31fe235e9cfd7483afb15c0e40dc4a48b96a5e5d5d0825ad8bb5ecafae83
    license: CC-BY-4.0
review_status: pending
generated_at: "2026-10-19"
generated_by: "claude-opus-5-5[1m]"
generated_with: "0.11.0"

properties:
  description: "A paper presenting Fuzz4All, a fuzzer that uses large language models to generate and mutate inputs for systems that take programming or formal languages as input. Evaluated on nine systems across six languages, it reports higher code coverage than language-specific fuzzers and 98 bugs found, 64 of them confirmed as previously unknown."
  author: ["Chunqiu Steven Xia", "Matteo Paltenghi", "Jia Le Tian", "Michael Pradel", "Lingming Zhang"]
---

"Fuzz4All: Universal Fuzzing with Large Language Models" presents Fuzz4All, which its authors describe as the first fuzzer that is universal in the sense that it can target many different input languages and many features of those languages. [[DefinedTerm/fuzzing|Fuzzing]], as the paper defines it, is an automated testing approach that generates inputs designed to expose unexpected behaviours, such as crashes, of a system under test. The paper's targets are systems that take programming or formal languages as input — compilers, runtime engines, constraint solvers and libraries with accessible APIs — which it calls fundamental building blocks of software development, since a bug in a compiler or runtime engine can affect every application built on it.

The paper was published at the 2024 IEEE/ACM 46th International Conference on Software Engineering (ICSE '24), held on 14–20 April 2024 in Lisbon, with the DOI 10.1145/3597503.3639121; the arXiv version this page draws on is version 3 of 2308.04748, dated 9 December 2024. Its authors are Chunqiu Steven Xia, Jia Le Tian and Lingming Zhang of the University of Illinois Urbana-Champaign and Matteo Paltenghi and Michael Pradel of the University of Stuttgart.

## The problem it addresses

The paper divides traditional fuzzers into generation-based fuzzers, which synthesise complete inputs, for example from a pre-defined grammar of the target language, and mutation-based fuzzers, which apply mutation operators or transformation rules to a set of high-quality seeds. It names three limitations they share:

| Limitation | As the paper describes it |
| --- | --- |
| Tight coupling with the target system and language | A fuzzer is usually built for one language or system and is time-consuming to build; Csmith, a C/C++ compiler fuzzer, has more than 80,000 lines of code, and the effort is hard to reuse for another language |
| Lack of support for evolution | A fuzzer designed for one version of a language may lose its effectiveness on a new one; Csmith supports only features up to C++11, and the paper cites earlier work finding that it uncovered no new bugs in the latest GCC and Clang releases over a six-month fuzzing period |
| Restricted generation ability | Generation-based fuzzers often use only a subset of the language grammar, and mutation-based fuzzers are limited by their mutation operators and need high-quality seeds |

General-purpose fuzzers such as AFL and libFuzzer, the paper adds, use simple byte-level mutations that are unaware of the target language, so they are extremely unlikely to produce valid inputs for systems that take programs as input.

## How Fuzz4All works

Fuzz4All's key idea is to use a large language model (LLM) as the input generation and mutation engine: because LLMs are pre-trained on large amounts of code in many languages, the paper argues, they have an implicit understanding of those languages' syntax and semantics. The user supplies documents describing the system under test — documentation, example code or specifications — and, optionally, the specific features to focus on. The approach has two main steps.

- **Autoprompting.** A large "distillation" LLM (GPT-4 in the implementation) summarises the user's input into candidate prompts: one by greedy sampling at temperature 0 and more at a higher temperature, for diversity. Each candidate is tried in a small fuzzing experiment with the generation LLM, and the prompt that yields the most unique inputs the system accepts as valid is kept. The paper's example distils 498 words of cppreference documentation on the C++23 feature std::expected into a 214-word prompt.
- **The fuzzing loop.** A smaller "generation" LLM (StarCoder) produces batches of fuzzing inputs. Before each iteration, Fuzz4All appends to the prompt a valid input from the previous batch as an example and one of three generation instructions, chosen at random: generate a new input, mutate the example, or produce an input semantically equivalent to it. The strategies are modelled on the synthesis of generation-based fuzzers and the variant-making of mutation-based ones. Every input is run against the system and checked by an oracle the user defines; the paper uses simple oracles such as crashes from segmentation faults and internal assertion failures.

Using two models is a cost trade-off: a high-end model is needed to understand arbitrary user input, but using one for generation would be inefficient because of its inference cost. Fuzz4All needs no instrumentation of the system under test, and its autoprompting and fuzzing-loop components are 872 lines of Python.

## What it did

The authors evaluated Fuzz4All on nine systems under test taking six languages, each against a state-of-the-art fuzzer for that language:

| Language | Systems under test | Baseline fuzzers |
| --- | --- | --- |
| C | GCC, Clang | GrayC, Csmith |
| C++ | G++, Clang++ | YARPGen |
| SMT2 | Z3, CVC5 | TypeFuzz |
| Go | Go | go-fuzz |
| Java | javac | Hephaestus |
| Python | Qiskit (quantum computing platform) | MorphQ |

Coverage was compared on one system per language over 24-hour campaigns repeated five times, with statistical significance tested by the Mann-Whitney U-test; later experiments used a budget of 10,000 generated inputs. The paper reports line coverage, the validity rate of generated inputs, a hit rate for targeted fuzzing (the share of inputs that use a target feature, checked with simple regular expressions), and the number of bugs found.

## Key Points

- Fuzz4All achieved the highest coverage on every target by the end of the 24-hour campaigns, an average improvement of 36.8% over the best-performing baseline, with gains ranging from 13.7% (Go) to 75.6% (Qiskit); every improvement was marked statistically significant.
- Its inputs were less often valid than the baselines' (a 56.0% average reduction in validity rate) and fewer in number (43.0% fewer, because generation is bottlenecked by GPU inference), but the authors argue they were much more diverse, as the coverage shows, and that invalid inputs close to valid can still find bugs in a system's validation logic.
- Unlike the baselines, which reached a coverage plateau within 24 hours, Fuzz4All kept covering new code near the end of the campaign; the authors hypothesise that updating the prompt with new examples and strategies in each iteration is the reason.
- Targeted fuzzing worked: when given documentation of a single feature, an average of 83.0% of generated inputs used that feature, whereas general fuzzing had a 96.0% lower hit rate on average — for Qiskit, 0% for all three target features, which the authors attribute to those features being recent and rare in the LLM's training data.
- In the ablation study, distilling the user input through autoprompting gave higher coverage than either no initial prompt or the raw documentation, and adding examples and then all three generation strategies to the fuzzing loop raised coverage further; the full approach repeated 4.7% of its inputs against 8.0% when sampling from the same prompt without examples.
- Fuzz4All found 98 bugs across the nine systems, 64 of them confirmed by developers as previously unknown. Examples include a GCC internal compiler error triggered by valid code using the noexcept feature, which the developers fixed and added in modified form to GCC's test suite, and a Qiskit QASM-exporter bug, which the authors say prior template-based work could not find.

## Limits the authors state

The main internal threat is the correctness of the Fuzz4All implementation, addressed through code reviews and testing; the main external threat is the choice of evaluation targets, addressed by using nine systems across six languages and repeated runs. Because the generation LLM's knowledge comes from its training data, reusing the exact StarCoder checkpoint may become less effective over time due to data shift, which the authors say autoprompting with up-to-date documentation can mitigate. The distillation LLM may also hallucinate, a limitation the authors note is common to most pipelines using LLMs.

## Relation to earlier work

The paper sets Fuzz4All against several lines of earlier work. Language-agnostic approaches such as PolyGlot still parse seeds with a language-specific grammar and use a limited set of mutations. Earlier learning-based fuzzers trained language-specific models, and TitanFuzz, which uses LLMs to fuzz deep learning libraries, relies on hand-crafted prompts and mutation patterns and so cannot easily be extended to other systems. LLM-based unit test generators need a specific kind of input, such as function source code, and work only for unit testing. On prompting, the authors describe their autoprompting as, to their knowledge, the first to distil arbitrary user inputs for a software engineering task with only black-box, sampling access to an LLM, scoring each prompt on the actual task of generating valid inputs rather than on a proxy.
