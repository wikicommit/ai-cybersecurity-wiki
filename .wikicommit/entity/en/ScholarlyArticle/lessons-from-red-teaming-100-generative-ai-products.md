---
title: "Lessons From Red Teaming 100 Generative AI Products"
type: "schema:ScholarlyArticle"
lang: en
tags: [red-teaming, generative-ai, prompt-injection, threat-modelling]
sources:
  - type: url
    url: 'https://arxiv.org/html/2501.07238'
    hash: sha256:8f1d2d2ab1bc67f9dea9ead0be580b649ae2880d70472cf998878e131708b4b8
    license: CC-BY-4.0
review_status: pending
generated_at: "2026-10-19"
generated_by: "claude-opus-5-5[1m]"
generated_with: "0.11.0"

properties:
  description: "A paper by Microsoft's AI Red Team drawing on its experience red teaming more than 100 generative AI products. It presents the team's threat model ontology, eight lessons about how AI red teaming should be conducted, five case studies from its operations, and open questions for the field."
  datePublished: "2025-01-13"
---

"Lessons From Red Teaming 100 Generative AI Products" is a practitioner's account of AI red teaming, which the paper describes as a practice that has emerged for probing the safety and security of generative AI (GenAI) systems by emulating real-world attacks against end-to-end systems, going beyond model-level safety benchmarks. Its authors are members of the Microsoft AI Red Team (AIRT), and they write from the team's experience of red teaming more than 100 GenAI products at Microsoft. Because the field is young, they say, there are many open questions about how red teaming operations should be conducted and a healthy dose of scepticism about how effective current efforts are; the paper offers the team's threat model ontology, eight lessons and practical recommendations in response.

The paper was posted to arXiv as 2501.07238v1, under cs.AI, on 13 January 2025. Its first-listed authors are Blake Bullwinkel and Amanda Minnich, and the last-listed is Mark Russinovich, with Microsoft given as the affiliation.

## The team and its operations

The paper says AIRT grew out of earlier red teaming initiatives at Microsoft and was officially established in 2018, at first focusing mainly on traditional security vulnerabilities and evasion attacks against classical machine learning models. Its scope has since widened as models gained new capabilities, data modalities such as vision and audio, and agentic access to tools, and its scale grew with the number of Microsoft AI products. As of October 2024 the team had conducted over 80 operations covering more than 100 products, which it divides into "models", typically hosted on a cloud endpoint, and "systems" that build models into copilots, plugins and other applications. In 2021 its work focused mainly on application security; operations have since increasingly probed for what the paper calls responsible AI (RAI) harms, while still testing for security impacts such as data exfiltration, credential leaking and remote code execution.

## The threat model ontology

The team models each attack or system failure with five components:

| Component | Meaning in the ontology |
| --- | --- |
| System | The end-to-end model or application being tested |
| Actor | The person or persons emulated, whose intent may be adversarial (a scammer) or benign (a typical chatbot user) |
| TTPs | The tactics, techniques and procedures used, mapped to MITRE ATT&CK and the MITRE ATLAS Matrix where possible |
| Weakness | The vulnerability or vulnerabilities in the system that make the attack possible |
| Impact | The downstream impact the attack creates, such as privilege escalation or generation of harmful content |

The ontology does not assume adversarial intent, and impacts fall into two broad categories: security, covering impacts such as data exfiltration and credential dumping as well as attacks on the AI model itself such as [[DefinedTerm/prompt-injection|prompt injection]] and model evasion; and safety, meaning the generation of illegal and harmful content, which the team defines with Microsoft's Office of Responsible AI. AIRT's task is only to identify risks; product teams develop mitigations.

## The eight lessons

1. **Understand what the system can do and where it is applied.** Start from potential downstream impacts rather than attack strategies. Larger models may be open to attacks smaller, "capability constrained" ones are not — understanding base64-encoded instructions, for example — and the same model poses different risks as a creative-writing assistant and as a summariser of patient records.
2. **You don't have to compute gradients to break an AI system.** Simple techniques often work as well as or better than gradient-based methods, which are computationally expensive and usually need full model access. The most effective attacks combine tactics against several weaknesses in the wider system.
3. **AI red teaming is not safety benchmarking.** Benchmarks measure existing notions of harm and make it easy to compare models; red teaming takes more human effort but can discover new categories of harm and probe risks specific to a context. The two are complementary.
4. **Automation can help cover more of the risk landscape.** The team's open-source framework [[SoftwareApplication/pyrit|PyRIT]] shifted its operations from fully manual probing to red teaming supported by automation.
5. **The human element of AI red teaming is crucial.** Subject matter experts are needed where LLM judges are unreliable, as in medicine, cybersecurity and CBRN (chemical, biological, radiological and nuclear weapons); cultural competence and emotional intelligence matter; and red teamers exposed to disturbing content need ways to disengage and support for their mental health.
6. **Responsible AI harms are pervasive but difficult to measure.** Unlike most security vulnerabilities, RAI harms are subjective, and it is often unclear how likely a prompt is to cause harm or why it did. A benign user who triggers harmful content by accident is probably a worse case than an adversarial user who deliberately elicits it.
7. **LLMs amplify existing security risks and introduce new ones.** Red teams should consider both existing, typically system-level risks, such as outdated dependencies, and new, typically model-level ones, such as cross-prompt injection attacks (XPIA) that hide malicious instructions in documents a retrieval-augmented system reads.
8. **The work of securing AI systems will never be complete.** Technical advances alone cannot guarantee AI safety; economics, break-fix cycles and regulation all play a part in raising the cost of attacks.

## Case studies

Five case studies show how the ontology models different impacts:

| Case study | System | Actor | Weakness | Impact |
| --- | --- | --- | --- | --- |
| Jailbreaking a vision language model by overlaying malicious instructions on an image | Vision language model | Adversarial user | Insufficient safety training | Generation of illegal content |
| Building an automated scam with an LLM connected to speech-to-text and text-to-speech systems | State-of-the-art LLM | Scammer | Insufficient safety training | User falls victim to a scam |
| Evaluating how a chatbot responds to a user in distress | LLM-based chatbot | Distressed user | Improper safety training | Possible harm to the user's mental health and wellbeing |
| Probing a text-to-image generator for gender bias with prompts that do not specify gender | Text-to-image generator | Average user | Model bias | Content that may exacerbate gender-based stereotypes |
| Server-side request forgery (SSRF) through an outdated FFmpeg component in a video-processing application | GenAI application | Adversarial user | CWE-918 server-side request forgery | Unauthorized privilege escalation |

In the vision model case, the model usually refused to generate illegal content when asked directly through text but often complied when the instructions were overlaid on an image. The SSRF flaw was fixed by updating FFmpeg and isolating the component from network resources.

## Key Points

- Starting an operation from potential downstream impacts, rather than from attack strategies, makes it more likely to produce useful findings tied to real-world risks.
- In the team's operations, "basic" techniques often worked as well as, and sometimes better than, gradient-based methods; the authors recommend prioritising simple techniques and system-level attacks because real adversaries are more likely to attempt them.
- When testing the Phi-3 series of language models, the team found larger models generally better at following user instructions, which may also make them more susceptible to jailbreaks.
- When testing the multilingual Phi-3.5 models in Chinese, Spanish, Dutch and English, the team found that safety behaviours such as refusal transferred surprisingly well to the non-English languages, even though post-training was conducted only in English; the authors say lower-resource languages need further study.
- Using LLMs to judge other models' outputs works well for simple tasks such as detecting hate speech, but is less reliable in specialised domains such as medicine, cybersecurity and CBRN, where the team relied on subject matter experts.
- Mitigations such as input sanitisation and instruction hierarchies can only reduce, not eliminate, security risk: the authors argue one must assume that an LLM given untrusted input will produce arbitrary output, and that when the input includes private information, the model will output private information.
- Since jailbreaking most models is currently cheap, the authors argue the goal should be to raise the cost of attacks — through break-fix cycles of repeated red teaming and mitigation, as used to safety-align the Phi-3 models, purple teaming and regulation — and predict that the prompt injections of today will become like the buffer overflows of the early 2000s: not eliminated, but largely mitigated.

## Open questions

The authors ask how red teams should probe for dangerous capabilities such as persuasion, deception and replication, and for new risks in video generation models; how to carry red teaming practices into different linguistic and cultural contexts; and how far red teaming practices should be standardised so that organisations can communicate their methods and findings. They offer their ontology as a step towards that, while recognising that individual frameworks are often overly restrictive and encouraging other teams to use it in a modular way.
