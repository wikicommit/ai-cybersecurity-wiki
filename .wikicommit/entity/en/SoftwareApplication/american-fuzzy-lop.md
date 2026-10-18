---
title: "American Fuzzy Lop"
type: "schema:SoftwareApplication"
lang: en
aliases: ["AFL"]
tags: [fuzzing, vulnerability-discovery]
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
  description: "A security-oriented fuzzer that requires essentially no configuration. It is a grey-box, dumb, mutation-based fuzzer that uses lightweight instrumentation to track code coverage, and it found most of the Shellshock vulnerabilities in the Bash shell."
  applicationCategory: "Fuzzer"
---

American Fuzzy Lop (AFL) is a security-oriented [[DefinedTerm/fuzzing|fuzzer]] that requires essentially no configuration. It is written in C and released under the Apache License 2.0, and it is among the fuzzers described as "popular" or "widely used" in the academic literature.

## How it works

AFL is a dumb (unstructured) mutation-based fuzzer: it needs no model of the input format, and creates new inputs by modifying a seed file — flipping random bits, substituting random bytes with "interesting" values, and moving or deleting blocks of data. It is also a grey-box fuzzer: rather than analysing the program, it uses lightweight instrumentation to trace the basic-block transitions an input exercises. This costs a reasonable performance overhead but tells the fuzzer when an input increases code coverage, which is what makes grey-box fuzzers extremely efficient vulnerability detection tools.

As a dumb fuzzer, AFL can be applied to a wide variety of programs, with the trade-off that dumb fuzzers may generate a lower proportion of valid inputs and stress a program's parser rather than its main components.

## Results in security

Most of the vulnerabilities in Shellshock, a family of security bugs in the widely used UNIX Bash shell disclosed in September 2014, were found using AFL. In April 2015, Hanno Böck showed how AFL could have found the Heartbleed vulnerability in OpenSSL, which had been disclosed in April 2014.

## Related fuzzers

| Fuzzer | Relation to AFL |
| --- | --- |
| AFL++ | A fuzzer that incorporates features developed for AFL, with many mutators and configurations, source- and binary-code instrumentation modules, utilities for test-case and corpus minimization, and helper libraries; grey-box, dumb, written in C, Apache 2.0 |
| AFLFast | An extension of AFL that uses power schedules to exercise low-frequency program paths significantly faster; grey-box, dumb, written in C, Apache 2.0 |
