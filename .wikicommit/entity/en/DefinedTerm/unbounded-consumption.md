---
title: "Unbounded consumption"
type: "schema:DefinedTerm"
lang: en
aliases: ["LLM10:2025 Unbounded Consumption"]
tags: [ai-security, large-language-models]
sources:
  - type: url
    url: 'https://genai.owasp.org/llmrisk/llm102025-unbounded-consumption/'
    hash: sha256:7bcb000fa2ab4b087ed2dbc9abd5b1f03b2f610f4bc13577ccaf70927affdaff
    license: CC-BY-SA-4.0
review_status: pending
generated_at: "2026-10-19"
generated_by: "claude-opus-5-5[1m]"
generated_with: "0.11.0"

properties:
  description: "The vulnerability that occurs when a large language model application allows users to conduct excessive and uncontrolled inferences, leading to risks such as denial of service, economic losses, model theft and service degradation. It is entry LLM10:2025, \"Unbounded Consumption\", of the 2025 edition of the OWASP Top 10 for LLM Applications."
---

Unbounded consumption is the vulnerability that occurs when a large language model (LLM) application allows users to conduct excessive and uncontrolled inferences, leading to risks such as denial of service (DoS), economic losses, model theft and service degradation. It is entry LLM10:2025, "Unbounded Consumption", of the 2025 edition of the [[DefinedTermSet/owasp-top-10-for-llm-applications|OWASP Top 10 for LLM Applications]].

## What it covers

The entry starts from inference — the process by which an LLM applies learned patterns and knowledge to produce responses or predictions from input queries or prompts, which it calls a critical function of LLMs. Attacks designed to disrupt service, deplete the target's financial resources, or steal intellectual property by cloning a model's behaviour all depend, according to the entry, on this common class of vulnerability in order to succeed. The high computational demands of LLMs, especially in cloud environments, make them vulnerable to resource exploitation and unauthorised usage.

## Common examples

The entry lists seven common examples of the vulnerability:

| Example | What the attacker does | Effect the entry describes |
| --- | --- | --- |
| Variable-length input flood | Overloads the LLM with numerous inputs of varying lengths, exploiting processing inefficiencies | Depletes resources and can render the system unresponsive |
| Denial of wallet (DoW) | Initiates a high volume of operations, exploiting the cost-per-use model of cloud-based AI services | Unsustainable financial burdens on the provider, risking financial ruin |
| Continuous input overflow | Continuously sends inputs that exceed the LLM's context window | Excessive use of computational resources, service degradation and operational disruption |
| Resource-intensive queries | Submits unusually demanding queries involving complex sequences or intricate language patterns | Drains system resources, prolonging processing and risking system failure |
| Model extraction via API | Queries the model API with carefully crafted inputs and prompt injection techniques to collect enough outputs to replicate a partial model or create a shadow model | Intellectual property theft and undermining the integrity of the original model |
| Functional model replication | Uses the target model to generate synthetic training data and fine-tunes another foundational model on it | Creates a functional equivalent, circumventing traditional query-based extraction |
| Side-channel attacks | Exploits the LLM's input filtering techniques | Harvests model weights and architectural information |

Six example attack scenarios in the entry follow the same lines: an unusually large input that drives up memory and CPU use, a high volume of requests that makes the service unavailable to legitimate users, inputs crafted to trigger the most computationally expensive processes, excessive operations that exploit pay-per-use pricing, functional model replication through the API, and bypassing the LLM's input filtering and preambles to perform a side-channel attack and send model information to a remote resource under the attacker's control.

## Prevention and mitigation

The entry lists fifteen strategies. Grouped by what they protect:

| Concern | Strategies the entry lists |
| --- | --- |
| Limiting resource use | Strict input validation so inputs do not exceed reasonable size limits; rate limiting and user quotas per source entity; dynamic monitoring and management of resource allocation; timeouts and throttling of resource-intensive operations; graceful degradation under heavy load; limits on queued and total actions, with dynamic scaling and load balancing |
| Detection | Comprehensive logging, monitoring and [[DefinedTerm/anomaly-detection\|anomaly detection]] of resource consumption |
| Protecting the model | Restricting or obfuscating the exposure of `logit_bias` and `logprobs` in API responses; watermarking frameworks to embed and detect unauthorised use of LLM outputs; adversarial robustness training to detect and mitigate adversarial queries and extraction attempts; filtering known glitch tokens out of output before it is added to the context window |
| Access and governance | Sandboxing the LLM's access to network resources, internal services and APIs; strong access controls, including role-based access control (RBAC) and the principle of least privilege, for model repositories and training environments; a centralised ML model inventory or registry for production models; automated MLOps deployment with governance, tracking and approval workflows |

The entry singles out sandboxing as particularly significant: it encompasses insider risks and threats, and it governs how far the LLM application can reach data and resources, which makes it a crucial control for mitigating or preventing side-channel attacks.

## Related frameworks

The entry relates unbounded consumption to:

- MITRE CWE-400, Uncontrolled Resource Consumption;
- the MITRE ATLAS tactic AML.TA0000 (ML Model Access) and techniques AML.T0024 (Exfiltration via ML Inference API), AML.T0029 (Denial of ML Service), AML.T0034 (Cost Harvesting) and AML.T0025 (Exfiltration via Cyber Means);
- ML05:2023 Model Theft in the OWASP Machine Learning Security Top Ten, API4:2023 Unrestricted Resource Consumption, and OWASP's secure coding guidance on resource management.
