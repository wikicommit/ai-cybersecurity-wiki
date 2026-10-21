---
title: "Jailbreak prompt"
type: "schema:DefinedTerm"
lang: en
tags: [large-language-models, ai-security, ai-misuse]
sources:
  - type: url
    url: 'https://arxiv.org/html/2308.03825'
    hash: sha256:b822822b8e3e2f32287ad375dcdc3e8268f158e858fe0de3470e23b9c2bf5c50
    license: CC-BY-4.0
review_status: pending
generated_at: "2026-10-20"
generated_by: "claude-opus-5-5"
generated_with: "0.11.0"

properties:
  description: "A prompt deliberately crafted to bypass a large language model's built-in safeguards and get it to generate harmful content that violates the usage policy set by the model's vendor. Jailbreak prompts are shared and refined by users on online communities and prompt-sharing websites."
---

A jailbreak prompt is an adversarial prompt intentionally designed to bypass a large language model's (LLM's) built-in safeguards, so that the model generates harmful content that violates the usage policy set by its vendor. With a jailbreak prompt, an LLM can give a detailed answer to a dangerous question that it would appropriately refuse without the prompt. A prompt, in this sense, is the initial input or instruction given to an LLM to generate a particular kind of content; jailbreak prompts are the malicious counterpart of the beneficial prompts that users share online. The measurement study [[ScholarlyArticle/do-anything-now-characterizing-and-evaluating-in-the-wild-jailbreak-prompts-on-large-language-models]] calls them the main attack vector for bypassing LLM safeguards.

## Where they come from

Because jailbreak prompts are relatively simple to create, they proliferated and evolved on platforms such as Reddit and Discord from ChatGPT's release onwards; the subreddit r/ChatGPTJailbreak, dedicated to sharing them, attracted 12.8k members in six months. The study found 1,405 jailbreak prompts shared by 803 user accounts between December 2022 and December 2023. Most accounts shared one only once, but 28 kept refining prompts for over 100 days. Sharing shifted over 2023 from Discord and Reddit to prompt-aggregation websites such as FlowGPT, where, the authors say, users began packaging jailbreak prompts together with LLMs as a kind of service. Prompts typically appeared first on Reddit or Discord and reached websites later, and some Discord communities explicitly asked members not to spread prompts to public platforms, to avoid detection. The study also cites jailbreak prompts appearing in underground malicious services targeting public LLMs.

## How they work

According to the study, jailbreak prompts often combine several techniques. They are longer than ordinary prompts — 555 tokens on average, 1.5 times as long — and grew longer as OpenAI released more capable and better-protected ChatGPT versions. They are semantically close to ordinary role-play prompts, which ask the model to play a virtual character, and the authors say this makes them hard to detect by meaning alone.

The attack strategies the study identifies include:

| Strategy | What the prompt does |
| --- | --- |
| Role-play as another character | Turns the model into a character, such as DAN ("doing anything now"), and repeatedly insists that the character need not follow the predefined rules |
| Prompt injection | Tells the model to ignore the instructions it was given before |
| Privilege escalation | Claims to enable a special mode with extra permissions |
| Deception | Misleads the model about its own situation, for example about what it can know |
| Mandatory answer | Requires the model to make up an answer if it does not know one |
| Virtualization | Introduces a fictional world, such as acting as a virtual machine, and embeds the other strategies inside it |
| Exception | Claims that the conversation is an exception to the AI's usual ethical protocols |
| Opposite roles | Introduces two roles, the second of which always opposes the first's normal responses |
| Narrative | Requires the model to answer in a narrative style |

Grouping prompts by similarity, the study found 131 communities of related prompts. Most were small and short-lived, while communities with more than nine prompts spread on average across seven sources and 24 user accounts over 208 days; the authors suggest that prompts proven effective are copied and varied across platforms, while others vanish soon after being created. DAN and its variants form the earliest and most widely spread community.

## How effective they are

The study tested jailbreak prompts against six LLMs on 13 scenarios that OpenAI's usage policy forbids:

- Built-in safeguards trained with reinforcement learning from human feedback resisted forbidden questions asked directly in some scenarios, but jailbreak prompts undermined them: on ChatGPT (GPT-3.5) the attack success rate in the illegal-activity scenario rose from 0.053 without a jailbreak prompt to 0.517 on average and 1.000 for the most effective prompt.
- Prompts designed for ChatGPT transferred to models with different architectures and training data, and five prompts exceeded 0.950 ASR on both GPT-3.5 and GPT-4.
- Vendors respond over time: on the November 2023 ChatGPT snapshot most prompts lost their effect, which the authors attribute to an undisclosed safeguard, but paraphrasing the prompts — through round-trip translation, rewriting by an LLM, or introducing typos — restored much of their success.
- Three external safeguards, which filter inputs or outputs, reduced average success only slightly.

## How it differs from prompt injection

The study treats [[DefinedTerm/prompt-injection|prompt injection]] as one of the strategies a jailbreak prompt can use, and lists it separately among other attacks on language models. Other sources draw the boundary between jailbreaking and prompt injection in different ways, as set out on the prompt injection page.

## Defences

The study concludes that safety training such as RLHF has limited effectiveness against jailbreak prompts in the wild; that a safeguard detecting jailbreak prompts before querying showed some success but is susceptible to paraphrase; and that external input and output filtering offers some resistance. In the authors' view no single measure can counter all jailbreak attacks, a combination of measures may defend better, and more effective, adaptable and robust defences are still needed. They also propose collecting and evaluating in-the-wild prompts periodically to find rare but effective ones.
