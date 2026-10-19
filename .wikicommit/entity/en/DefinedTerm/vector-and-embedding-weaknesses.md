---
title: "Vector and embedding weaknesses"
type: "schema:DefinedTerm"
lang: en
tags: [ai-security, large-language-models, retrieval-augmented-generation]
sources:
  - type: url
    url: 'https://genai.owasp.org/llmrisk/llm082025-vector-and-embedding-weaknesses/'
    hash: sha256:19c1f0cba3a0328c8b4c553186f65801a5c87c9f13b6a5505a7528aa91fadcc7
    license: CC-BY-SA-4.0
review_status: pending
generated_at: "2026-10-19"
generated_by: "claude-opus-5-5[1m]"
generated_with: "0.11.0"

properties:
  description: "Weaknesses in how vectors and embeddings are generated, stored or retrieved in systems that use retrieval-augmented generation with large language models, which can be exploited to inject harmful content, manipulate model outputs or access sensitive information. It is entry LLM08:2025 of the 2025 edition of the OWASP Top 10 for LLM Applications."
---

Vector and embedding weaknesses are security risks in systems that use retrieval-augmented generation (RAG) with large language models (LLMs): weaknesses in how vectors and embeddings are generated, stored or retrieved can be exploited by malicious actions, intentional or unintentional, to inject harmful content, manipulate model outputs or access sensitive information. They make up entry LLM08:2025, "Vector and Embedding Weaknesses", of the 2025 edition of the [[DefinedTermSet/owasp-top-10-for-llm-applications|OWASP Top 10 for LLM Applications]]. The entry describes RAG as a model adaptation technique that enhances the performance and contextual relevance of LLM application responses by combining pre-trained language models with external knowledge sources, using vector mechanisms and embeddings.

## Forms they take

| Risk | What it involves |
| --- | --- |
| Unauthorised access and data leakage | Inadequate or misaligned access controls can give unauthorised access to embeddings containing sensitive information, so that the model retrieves and discloses personal data, proprietary information or other sensitive content. Unauthorised use of copyrighted material, or non-compliance with data usage policies during augmentation, can have legal repercussions |
| Cross-context information leaks and federation knowledge conflict | Where several classes of users or applications share one vector database in a multi-tenant environment, context can leak between users or queries. Knowledge conflict errors occur when data from multiple sources contradict each other, or when an LLM cannot supersede what it learned in training with the new data from retrieval augmentation |
| Embedding inversion attacks | Attackers exploit vulnerabilities to invert embeddings and recover significant amounts of source information, compromising data confidentiality |
| [[DefinedTerm/data-poisoning\|Data poisoning]] attacks | Poisoned data, introduced intentionally by malicious actors or unintentionally, can originate from insiders, prompts, data seeding or unverified data providers, and leads to manipulated model outputs |
| Behaviour alteration | Retrieval augmentation can inadvertently alter the foundation model's behaviour — factual accuracy and relevance may increase while aspects such as emotional intelligence or empathy diminish, potentially making the model less effective in some applications |

## Example scenarios

The entry gives three example attack scenarios, each with a mitigation:

- **Data poisoning** — an attacker submits a résumé with hidden text (such as white text on a white background) carrying instructions to a job application system that screens candidates with RAG. When the system is later asked about the candidate's qualifications, the LLM follows the hidden instructions and recommends an unqualified candidate for further consideration. The entry's mitigation is text extraction tools that ignore formatting and detect hidden content, and validation of all input documents before they are added to the RAG knowledge base.
- **Access control and data leakage** — in a multi-tenant environment, embeddings from one group might be retrieved in response to queries from another group's LLM, leaking sensitive business information. The mitigation is a permission-aware vector database that ensures only authorised groups can access their specific information.
- **Behaviour alteration** — after retrieval augmentation, a model's answer to a user overwhelmed by student loan debt changes from empathetic advice to a purely factual one; the entry calls the revised response factually correct but lacking empathy, which renders the application less useful. The mitigation is to monitor and evaluate RAG's impact on the foundation model's behaviour and adjust the augmentation process to keep qualities such as empathy.

## Prevention

The entry's prevention and mitigation strategies are:

| Strategy | What it involves |
| --- | --- |
| Permission and access control | Fine-grained access controls and permission-aware vector and embedding stores, with strict logical and access partitioning of datasets in the vector database between different classes or groups of users |
| Data validation and source authentication | Robust data validation pipelines for knowledge sources, regular audits of the knowledge base's integrity for hidden codes and data poisoning, and accepting data only from trusted and verified sources |
| Data review for combination and classification | Thorough review of datasets combined from different sources, and tagging and classifying data in the knowledge base to control access levels and prevent data mismatch errors |
| Monitoring and logging | Detailed, immutable logs of retrieval activities, to detect and respond promptly to suspicious behaviour |
