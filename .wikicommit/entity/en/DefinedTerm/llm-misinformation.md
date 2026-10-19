---
title: "LLM misinformation"
type: "schema:DefinedTerm"
lang: en
aliases: ["LLM09:2025 Misinformation"]
tags: [ai-security, large-language-models]
sources:
  - type: url
    url: 'https://genai.owasp.org/llmrisk/llm092025-misinformation/'
    hash: sha256:450f9b98e7b63d33a7f3bd59de8807b439f0b617613196129ddbc927f762889b
    license: CC-BY-SA-4.0
review_status: pending
generated_at: "2026-10-19"
generated_by: "claude-opus-5-5[1m]"
generated_with: "0.11.0"

properties:
  description: "The vulnerability that arises when a large language model produces false or misleading information that appears credible, which can lead to security breaches, reputational damage and legal liability. It is entry LLM09:2025, \"Misinformation\", of the 2025 edition of the OWASP Top 10 for LLM Applications."
---

LLM misinformation is false or misleading information produced by a large language model (LLM) that appears credible. The 2025 edition of the [[DefinedTermSet/owasp-top-10-for-llm-applications|OWASP Top 10 for LLM Applications]] lists it as entry LLM09:2025, "Misinformation", and describes it as a core vulnerability for applications that rely on these models: it can lead to security breaches, reputational damage and legal liability.

## Causes

According to the entry, one of the major causes of misinformation is hallucination — the LLM generating content that seems accurate but is fabricated. Hallucinations occur when LLMs fill gaps in their training data using statistical patterns without truly understanding the content, so the model may produce answers that sound correct but are completely unfounded. Hallucination is not the only cause: biases introduced by the training data and incomplete information can also contribute.

A related issue is overreliance, which occurs when users place excessive trust in LLM-generated content and fail to verify its accuracy. The entry says overreliance exacerbates the impact of misinformation, because users may integrate incorrect data into critical decisions or processes without adequate scrutiny.

## Common examples

The entry gives four common examples of the risk:

| Example | What happens | Case the entry cites |
| --- | --- | --- |
| Factual inaccuracies | The model produces incorrect statements, leading users to make decisions based on false information | Air Canada's chatbot provided misinformation to travellers, leading to operational disruptions and legal complications; the airline was successfully sued as a result |
| Unsupported claims | The model generates baseless assertions, which can be especially harmful in sensitive contexts such as healthcare or legal proceedings | ChatGPT fabricated fake legal cases, leading to significant issues in court |
| Misrepresentation of expertise | The model gives the illusion of understanding complex topics, misleading users about its level of expertise | Chatbots were found to misrepresent the complexity of health-related issues, suggesting uncertainty where there is none, which misled users into believing that unsupported treatments were still under debate |
| Unsafe code generation | The model suggests insecure or non-existent code libraries, which can introduce vulnerabilities when integrated into software systems | LLMs propose insecure third-party libraries, which lead to security risks if trusted without verification |

## Example attack scenarios

The entry describes two scenarios. In the first, attackers experiment with popular coding assistants to find package names they commonly hallucinate, then publish malicious packages under those names to widely used repositories. Developers who rely on the assistant's suggestions unknowingly integrate the packages, and the attackers gain unauthorised access, inject malicious code or establish backdoors.

In the second, a company provides a chatbot for medical diagnosis without ensuring sufficient accuracy; the chatbot's poor information harms patients and the company is successfully sued for damages. The entry points out that this safety and security breakdown needed no malicious attacker: it arose from insufficient oversight and reliability of the LLM system, and the company was still exposed to reputational and financial damage.

## Prevention and mitigation

The entry lists eight strategies:

| Strategy | What it involves |
| --- | --- |
| Retrieval-augmented generation (RAG) | Retrieving relevant and verified information from trusted external databases while the response is generated, to make outputs more reliable and mitigate hallucination |
| Model fine-tuning | Improving output quality with fine-tuning or embeddings; techniques such as parameter-efficient tuning (PET) and chain-of-thought prompting can help reduce misinformation |
| Cross-verification and human oversight | Encouraging users to cross-check outputs with trusted external sources, and implementing human oversight and fact-checking for critical or sensitive information, with reviewers trained to avoid overreliance on AI-generated content |
| Automatic validation mechanisms | Tools and processes that automatically validate key outputs, especially in high-stakes environments |
| Risk communication | Identifying the risks and possible harms of LLM-generated content and communicating them, including the potential for misinformation, clearly to users |
| Secure coding practices | Practices that prevent vulnerabilities from being integrated through incorrect code suggestions |
| User interface design | APIs and interfaces that encourage responsible use, such as content filters, clear labelling of AI-generated content, information on limits of reliability and accuracy, and specific limits on the intended field of use |
| Training and education | Training users on the limitations of LLMs, the importance of independently verifying generated content and the need for critical thinking, with domain-specific training where needed |

## Related frameworks

The entry maps misinformation to the MITRE ATLAS technique AML.T0048.002 (Societal Harm).
