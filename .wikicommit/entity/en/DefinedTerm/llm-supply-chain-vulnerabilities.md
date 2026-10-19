---
title: "LLM supply chain vulnerabilities"
type: "schema:DefinedTerm"
lang: en
tags: [ai-security, large-language-models, software-supply-chain]
sources:
  - type: url
    url: 'https://genai.owasp.org/llmrisk/llm032025-supply-chain/'
    hash: sha256:171dcf164d41cd9cd31b423b99f910373c1ae2a6ee148661ceef6297837d6986
    license: CC-BY-SA-4.0
review_status: pending
generated_at: "2026-10-19"
generated_by: "claude-opus-5-5[1m]"
generated_with: "0.11.0"

properties:
  description: "Vulnerabilities in the supply chains of large language model applications, which can affect the integrity of training data, models and deployment platforms and extend beyond code flaws and dependencies to third-party pre-trained models and data. They are entry LLM03:2025 Supply Chain of the 2025 edition of the OWASP Top 10 for LLM Applications."
---

LLM supply chain vulnerabilities are weaknesses in the supply chains of applications built on large language models (LLMs) that can affect the integrity of training data, models and deployment platforms, resulting in biased outputs, security breaches or system failures. They make up entry LLM03:2025, "Supply Chain", of the 2025 edition of the [[DefinedTermSet/owasp-top-10-for-llm-applications|OWASP Top 10 for LLM Applications]]. According to the entry, traditional software vulnerabilities centre on issues such as code flaws and dependencies, whereas in machine learning the risks also extend to third-party pre-trained models and data, which can be manipulated through tampering or poisoning attacks. For supply chain attacks in general, see [[DefinedTerm/supply-chain-attack|supply chain attack]].

## Why LLM supply chains are exposed

The OWASP entry explains that creating LLMs is a specialised task that often depends on third-party models. The rise of open-access LLMs and of new fine-tuning methods such as LoRA (Low-Rank Adaptation) and PEFT (Parameter-Efficient Fine-Tuning), especially on platforms like Hugging Face, introduces new supply-chain risks, and on-device LLMs increase the attack surface further. Some of the same risks are covered under LLM04 Data and Model Poisoning; the supply-chain entry concentrates on their supply-chain aspect.

## Common risks

| Risk | What it involves |
| --- | --- |
| Traditional third-party package vulnerabilities | Outdated or deprecated components that attackers exploit to compromise LLM applications — similar to OWASP's "A06:2021 – Vulnerable and Outdated Components", with increased risk when the components are used during model development or fine-tuning |
| Licensing risks | AI development involves diverse software and dataset licences with varying legal requirements, and dataset licences may restrict usage, distribution or commercialisation |
| Outdated or deprecated models | Models that are no longer maintained lead to security issues |
| Vulnerable pre-trained model | Models are binary black boxes on which static inspection offers little assurance; they can contain hidden biases, backdoors or other malicious features missed by a model repository's safety evaluations, created through poisoned datasets or direct model tampering with techniques such as ROME, also known as lobotomisation |
| Weak model provenance | Published models carry no strong provenance assurances: model cards and documentation give no guarantee of a model's origin, and an attacker can compromise a supplier's account on a model repository, or create a similar one, and combine it with social engineering |
| Vulnerable LoRA adapters | A malicious LoRA adapter compromises the integrity and security of the pre-trained base model, both in collaborative model-merge environments and through inference platforms such as vLLM and OpenLLM that download and apply adapters to deployed models |
| Exploited collaborative development | Shared model-merge and model-handling services, such as format conversions, can be exploited to introduce vulnerabilities into shared models; model merging is very popular on Hugging Face and can be used to bypass reviews |
| On-device supply chain | Compromised manufacturing processes and device OS or firmware vulnerabilities can compromise models, and attackers can reverse-engineer and repackage applications with tampered models |
| Unclear terms and privacy policies | Model operators' unclear terms and data-privacy policies can lead to an application's sensitive data being used for training and later exposed, and may also bring risks from the supplier's use of copyrighted material |

## Prevention and mitigation

The entry recommends ten measures:

1. Vet data sources and suppliers carefully, including their terms and privacy policies, use only trusted suppliers, and regularly review and audit their security and access.
2. Apply the mitigations of OWASP's "A06:2021 – Vulnerable and Outdated Components" — vulnerability scanning, management and patching — including in development environments with access to sensitive data.
3. Apply comprehensive AI [[DefinedTerm/red-team|red teaming]] and evaluations when selecting a third-party model, since models can be fine-tuned to bypass published benchmarks such as Decoding Trust.
4. Keep an up-to-date, accurate and signed inventory of components with a software bill of materials (SBOM), which can also help detect new vulnerabilities quickly; AI BOMs and ML SBOMs are an emerging area, for which the entry suggests starting with OWASP CycloneDX.
5. Manage AI licensing risks with an inventory of licences kept in BOMs, regular audits of software, tools and datasets, automated licence-management tools and team training.
6. Use only models from verifiable sources, with third-party integrity checks using signing and file hashes to compensate for weak model provenance, and code signing for externally supplied code.
7. Monitor and audit collaborative model-development environments strictly, with automated scripts such as the "HuggingFace SF_Convertbot Scanner".
8. Use [[DefinedTerm/anomaly-detection|anomaly detection]] and adversarial-robustness tests on supplied models and data to detect tampering and [[DefinedTerm/data-poisoning|poisoning]] — ideally within MLOps and LLM pipelines, although as emerging techniques they may be easier to apply in red-teaming exercises.
9. Keep a patching policy for vulnerable or outdated components, and rely on maintained versions of APIs and the underlying model.
10. Encrypt models deployed at the AI edge with integrity checks, and use vendor attestation APIs to prevent tampered apps and models and to terminate applications on unrecognised firmware.

## Example attack scenarios

The entry gives thirteen sample scenarios, several of them presented as real attacks:

| Scenario | What happens, as the entry describes it |
| --- | --- |
| Vulnerable Python library | An attacker compromises an LLM app through a vulnerable Python library, which the entry says happened in the first OpenAI data breach; attacks on the PyPI registry tricked model developers into downloading a compromised PyTorch dependency carrying malware. In the more sophisticated Shadow Ray attack on the Ray AI framework, five vulnerabilities are believed to have been exploited in the wild, affecting many servers |
| Direct tampering | A model is tampered with directly and published to spread misinformation — an actual attack, PoisonGPT, bypassed Hugging Face safety features by changing model parameters |
| Fine-tuning a popular model | An attacker fine-tunes a popular open-access model to remove key safety features while scoring highly on safety benchmarks, with targeted triggers, and deploys it on Hugging Face to exploit users' trust in benchmarks |
| Pre-trained models | A system deploys pre-trained models from a widely used repository without thorough verification, and a compromised model introduces malicious code, causing biased and manipulated outputs in certain contexts |
| Compromised third-party supplier | A compromised supplier provides a vulnerable LoRA adapter that is merged into an LLM using model merge on Hugging Face |
| Supplier infiltration | An attacker infiltrates a supplier and alters a LoRA adapter for an on-device LLM deployed with frameworks such as vLLM or OpenLLM, giving the attacker a covert entry point and the ability to manipulate the model's outputs |
| CloudBorne and CloudJacking | Attacks on cloud infrastructure: CloudBorne exploits firmware vulnerabilities in shared cloud environments to compromise the physical servers hosting virtual instances, and CloudJacking is malicious control or misuse of cloud instances, potentially giving access to LLM deployment platforms |
| LeftOvers (CVE-2023-4969) | Leaked GPU local memory is exploited to recover and exfiltrate sensitive data from production servers, development workstations or laptops |
| WizardLM | After WizardLM was removed, an attacker publishes a fake model of the same name containing malware and backdoors |
| Model merge or format conversion service | An attacker uses a model-merge or format-conversion service to inject malware into a publicly available model — an actual attack published by the vendor HiddenLayer |
| Reverse-engineered mobile app | An attacker replaces the model in a mobile app with a tampered one that leads users to scam sites; the entry describes this as a real attack on predictive AI that affected 116 Google Play apps, including security- and safety-critical ones |
| Dataset poisoning | Poisoned public datasets create a backdoor during fine-tuning that subtly favours certain companies |
| Terms and privacy policy | An LLM operator changes its terms to require an explicit opt-out from training on application data, leading to memorisation of sensitive data |

The entry relates these risks to the MITRE ATLAS technique AML.T0010, ML Supply Chain Compromise.
