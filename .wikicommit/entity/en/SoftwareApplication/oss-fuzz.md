---
title: "OSS-Fuzz"
type: "schema:SoftwareApplication"
lang: en
tags: [fuzzing, vulnerability-discovery, open-source-security]
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
  description: "A Google service, announced in December 2016, that continuously fuzzes security-critical open-source software projects and reports each previously unreported, distinct bug it finds directly to a bug tracker."
  author: "Google"
---

OSS-Fuzz is a service from Google, announced in December 2016, for continuous [[DefinedTerm/fuzzing|fuzzing]] of security-critical open-source projects. It runs large-scale, long-running fuzzing campaigns for several such projects and reports each previously unreported, distinct bug it finds directly to a bug tracker.

## How it works

OSS-Fuzz is an example of continuous fuzzing, in which fuzz targets are repeatedly built and executed as the software changes. Its bug tracker automatically informs the maintainer of the vulnerable software and checks at regular intervals whether the bug has been fixed in the most recent revision, using the uploaded minimized failure-inducing input. Services such as OSS-Fuzz can in this way report newly discovered bugs to project maintainers as they push updates and later verify when fixes have been made.

## Scale

In 2016 the OSS-Fuzz project produced around 4 trillion inputs a week — an illustration of why fuzzers come with toolchains that automate bug triage and input minimization.
