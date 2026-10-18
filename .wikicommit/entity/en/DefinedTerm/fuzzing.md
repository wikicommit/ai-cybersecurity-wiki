---
title: "Fuzzing"
type: "schema:DefinedTerm"
lang: en
aliases: ["Fuzz testing"]
tags: [software-testing, vulnerability-discovery]
sources:
  - type: url
    url: 'https://en.wikipedia.org/wiki/Fuzzing'
    hash: sha256:6c58dc6ea55ca917ec4a1907c791fe59bc4a2e57475c55559892f1e95a5fc472
    license: CC-BY-SA-4.0
review_status: pending
generated_at: "2026-10-18"
generated_by: "claude-opus-5-5[1m]"
generated_with: "0.11.0"

properties:
  description: "An automated software testing technique that provides invalid, unexpected or random data as inputs to a computer program and monitors it for exceptions such as crashes, failing built-in assertions or potential memory leaks. It is used mostly to expose vulnerabilities in security-critical programs."
---

Fuzzing, or fuzz testing, is an automated software testing technique in which a program is given invalid, unexpected or random data as input and then monitored for exceptions such as crashes, failing built-in code assertions or potential memory leaks. Fuzzers are typically used on programs that take structured inputs — a file format or a protocol, for example — whose structure distinguishes valid from invalid input. An effective fuzzer produces semi-valid inputs: "valid enough" not to be rejected outright by the parser, yet "invalid enough" to reach corner cases deeper in the program that have not been properly handled. Fuzzing is used mostly as an automated way to expose vulnerabilities in security-critical programs that might be exploited with malicious intent.

For security purposes, input that crosses a trust boundary is often the most useful to fuzz: it matters more to fuzz code that handles a file uploaded by any user than code that parses a configuration file only a privileged user can reach.

## Origin of the term

The term "fuzz" comes from a 1988 class project in the graduate Advanced Operating Systems class (CS736) taught by Barton Miller at the University of Wisconsin, whose results were published in 1990. The project automatically generated random input and command-line parameters to test the reliability of UNIX command-line utilities, and crashed 25 to 33 percent of the utilities tested. Miller has said he chose the name to "evoke the feeling of random, unstructured data". Its oracle was deliberately simple: a program failed if it crashed or hung under random input and passed otherwise. This early approach would now be called black-box, generational, unstructured ("dumb" or "classic") fuzzing.

Testing programs with random inputs is older than the term: it dates back to the 1950s, when programmers fed programs punched cards pulled from the trash or decks of random numbers. Executing random inputs is also called random testing, monkey testing or Monte Carlo debugging.

## Kinds of fuzzer

A fuzzer can be classified along three independent dimensions:

| Dimension | Kinds | What distinguishes them |
| --- | --- | --- |
| How inputs are produced | Generation-based / mutation-based | A generation-based fuzzer builds inputs from scratch (for example from a user-supplied input model) and does not depend on a seed corpus; a mutation-based fuzzer modifies an existing corpus of seed inputs, such as valid PNG files when fuzzing libpng. Some fuzzers do both |
| Awareness of input structure | Dumb (unstructured) / smart (structured) | A smart (model-, grammar- or protocol-based) fuzzer uses an input model to generate a greater proportion of valid inputs, but the model must usually be supplied; a dumb fuzzer needs no model and so applies to more programs, but may produce fewer valid inputs and mostly stress the parser — it is unlikely, for instance, to produce a correct CRC checksum |
| Awareness of program structure | Black-box / grey-box / white-box | A black-box fuzzer ignores internal structure, runs hundreds of inputs per second and scales easily, but may only find "shallow" bugs; a white-box fuzzer uses program analysis such as symbolic execution to reach deep or critical code, at a cost in analysis time; a grey-box fuzzer uses lightweight instrumentation instead of program analysis to learn about the coverage each input achieves |

A common form of grey-box fuzzing is coverage-guided fuzzing: the fuzzer uses coverage information from earlier executions to guide new inputs, keeps inputs that produce previously unseen behaviour in its corpus, and mutates them further to discover more execution paths. A fuzzer is generally considered more effective the higher the code coverage it achieves, since it cannot reveal bugs in code it never exercises. For instance, [[SoftwareApplication/american-fuzzy-lop|AFL]] and libFuzzer use lightweight instrumentation to trace the basic-block transitions an input exercises, which informs the fuzzer about increases in code coverage at a reasonable performance cost.

## How it works

The exact workflow depends on the technique and implementation, but a general fuzzing workflow has five steps:

1. **Preparation** — choose a fuzzer and a fuzz target (a piece of software or a library), prepare a seed corpus from existing test inputs or hand-crafted inputs, and optionally a dictionary of interesting tokens.
2. **Input generation and mutation** — the fuzzer creates new test cases from the seeds.
3. **Execution** — the target runs on each generated input, often built with sanitizers such as AddressSanitizer or UndefinedBehaviorSanitizer to detect certain classes of programming error.
4. **Feedback and coverage** — feedback-guided fuzzers use signals such as code coverage to steer future inputs (not all fuzzers do), and keep inputs that reach new behaviour.
5. **Iteration** — the process repeats to explore more program behaviour.

### Detecting failures

A fuzzer must tell expected from buggy behaviour, which in automated testing is called the test oracle problem. Without a specification, fuzzers typically separate crashing from non-crashing inputs. A crash may indicate a vulnerability such as denial of service or arbitrary code execution, but the absence of a crash does not show the absence of a vulnerability: a C program may or may not crash on a buffer overflow. Sanitizers make a fuzzer sensitive to more than crashes by injecting assertions that crash the program when a failure is detected:

| Sanitizer | What it detects |
| --- | --- |
| AddressSanitizer (a memory debugger) | Memory errors such as buffer overflows and use-after-free |
| ThreadSanitizer | Race conditions and deadlocks |
| UndefinedBehaviorSanitizer | Undefined behaviour |
| LeakSanitizer | Memory leaks |
| CFISanitizer | Control-flow integrity violations |

Fuzzing can also find "differential" bugs: in regression testing the same inputs run on two versions of a program, and in differential testing on two implementations of the same program (such as two web servers); differing output marks a candidate bug.

### Toolchain

Because a fuzzer produces a very large number of inputs — in 2016 Google's [[SoftwareApplication/oss-fuzz|OSS-Fuzz]] produced around 4 trillion a week — many fuzzers come with a toolchain that automates the work that follows:

- **Automated bug triage** groups failure-inducing inputs by root cause and ranks bugs by severity. The CERT Coordination Center's Linux triage tools group crashing inputs by stack trace and order the groups by how likely they are to be exploitable; Microsoft's "!exploitable" tool hashes a crashing input to determine its uniqueness and rates it Exploitable, Probably Exploitable, Probably Not Exploitable, or Unknown.
- **Automated input minimization** (test case reduction) removes as much of a failure-inducing input as possible while still reproducing the bug; Delta Debugging does this with an extended binary search.
- **Continuous fuzzing** repeatedly builds and runs fuzz targets as the software changes; services such as OSS-Fuzz report newly found bugs to maintainers and later verify the fixes.

## Uses in security

| When | What happened |
| --- | --- |
| April 2012 | Google announced ClusterFuzz, a cloud-based fuzzing infrastructure for security-critical components of the Chromium web browser; researchers can upload their own fuzzers and collect bug bounties when they find crashes |
| September 2014 | Shellshock, a family of security bugs in the Bash shell, was disclosed; most of its vulnerabilities were found with the fuzzer AFL |
| April 2015 | Hanno Böck showed how AFL could have found the 2014 Heartbleed vulnerability in OpenSSL |
| August 2016 | DARPA held the finals of the first Cyber Grand Challenge, a fully automated capture-the-flag competition in which fuzzing was used as an offensive strategy to discover flaws in opponents' software; the winning system, "Mayhem", was developed by the team ForAllSecure |
| September 2016 | Microsoft announced Project Springfield, a cloud-based fuzz testing service |
| December 2016 | Google announced OSS-Fuzz for continuous fuzzing of security-critical open-source projects |
| 2018 | At Black Hat, Christopher Domas used fuzzing to expose a hidden RISC core in a processor that could bypass security checks to execute Ring 0 commands from Ring 3 |
| September 2020 | Microsoft released OneFuzz, a self-hosted fuzzing-as-a-service platform for Windows and Linux; it was archived on 1 November 2023 |

Modern web browsers undergo extensive fuzzing: the Chrome Security Team continuously fuzzes Chromium's code with 15,000 cores, and Microsoft fuzzed Microsoft Edge (Legacy) and Internet Explorer for 670 machine-years during development, generating more than 400 billion DOM manipulations from 1 billion HTML files. Fuzzing combined with dynamic analysis can also be used to validate static analysis reports, by trying to generate an input that actually witnesses a reported problem.

## Limitations

Fuzzing demonstrates the presence of bugs, not their absence: weeks of fuzzing without a finding does not prove a program correct, and proving correctness for all inputs requires a formal specification and formal methods.

Standard fuzzing also has practical limits. It can generate many unnecessary or low-quality test cases for complex software; researchers have adopted deep learning techniques to address this and increase code coverage, though further research is still needed. Fuzzing tools can struggle with cyber-physical systems, machine learning systems and systems whose behaviour is determined by training data. Fuzzers may miss security-critical flaws that do not cause a crash, such as side-channel leaks involving timing, cache behaviour or energy consumption, privilege escalation, and logic errors, and bugs guarded by complex conditions may need human intervention to reach.
