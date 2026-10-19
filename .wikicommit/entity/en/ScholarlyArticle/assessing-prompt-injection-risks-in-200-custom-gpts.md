---
title: "Assessing Prompt Injection Risks in 200+ Custom GPTs"
type: "schema:ScholarlyArticle"
lang: en
tags: [prompt-injection, large-language-models, ai-security, red-teaming]
sources:
  - type: url
    url: 'https://arxiv.org/html/2311.11538'
    hash: sha256:a4dfa5e01405e2c96ee077787e60a513010233ea029e9081ec88f79e7e18f8f0
    license: CC-BY-4.0
review_status: pending
generated_at: "2026-10-19"
generated_by: "claude-opus-5-5[1m]"
generated_with: "0.11.0"

properties:
  description: "A study of prompt injection against custom GPTs, the user-built versions of ChatGPT. Testing over 200 of them, the authors extracted designers' system prompts in 97.2% of cases and uploaded files in every case tested, and found that defensive prompts could be bypassed by expert red-teamers."
  author: ["Jiahao Yu", "Yuhang Wu", "Dong Shu", "Mingyu Jin", "Sabrina Yang", "Xingyu Xing"]
---

"Assessing Prompt Injection Risks in 200+ Custom GPTs" examines custom GPTs — versions of ChatGPT that individuals and organisations tailor to a purpose with their own instructions and data, without coding, and publish through OpenAI's GPT Store — for vulnerability to [[DefinedTerm/prompt-injection|prompt injection]]. The paper describes prompt injection as an attacker crafting specific inputs to manipulate a large language model's behaviour, which can lead to unauthorised actions or data exposure, and argues that the instruction-following nature of custom GPTs, some of which can also execute code, makes them open to it.

The paper is posted on arXiv as 2311.11538 in the cs.CR category; the version this page draws on is version 2, dated 25 May 2024, released under a CC BY 4.0 licence. Its authors are Jiahao Yu, Yuhang Wu, Dong Shu, Mingyu Jin, Sabrina Yang and Xingyu Xing, affiliated with Northwestern University, Presentation High School and Sec3.

## The two risks it studies

| Risk | What it is, as the paper defines it | Why it matters, according to the authors |
| --- | --- | --- |
| System prompt extraction | Deceiving a custom GPT into disclosing the system prompt its designer wrote | It violates the designer's intellectual effort and privacy, since such prompts often embody significant creative investment |
| File leakage | Stealing the files the designer uploaded for the custom GPT to use | It jeopardises privacy when the files hold sensitive information and threatens the GPT's intellectual property |

Together, the authors argue, the two would let a malicious actor replicate a custom GPT and claim ownership of the copy.

## What it did

The authors' method has three steps. First, their tool scans a custom GPT through OpenAI's API, which — though not shown in the normal interface — returned information including the GPT's description, the schema of plugins its designer built, and the names and sizes of uploaded files. Second, it sends adversarial prompts chosen by the attack objective (the system prompt alone, or the system prompt and files) and by whether the GPT has a code interpreter enabled; for a GPT with a code interpreter, a file can be leaked by asking the GPT to convert it into a downloadable file. Third, it checks the response for the target information, retrying when the model's sampling produces only a truncated answer.

They tested 16 custom GPTs made by OpenAI and 200 third-party GPTs sampled from an online repository, allowing up to three attempts per attack. They then ran a red-teaming evaluation of a popular defensive prompt — an instruction telling the GPT not to reveal its instructions, adapted from one used to protect OpenAI's DALL·E GPT, plus a similar instruction to refuse file downloads. Four of the authors with expertise in jailbreaking and prompt-injection red-teaming each had up to ten attempts against four protected GPTs, with and without a code interpreter, and were told the file name and whether a code interpreter was present.

## Key Points

- Simple adversarial prompts extracted the system prompt from 210 of 216 custom GPTs (all 120 with a code interpreter and 90 of 96 without), a 97.2% success rate, and leaked the uploaded files in all 24 cases where files existed.
- Some GPTs whose extracted system prompts or files explicitly said not to share that information were still successfully attacked, which the authors take as a sign that current defensive prompts are not robust.
- OpenAI's interface exposed, through specific API requests, the names and sizes of designers' uploaded files and the prototypes of their plugins, which the authors say could help attackers extract the files or duplicate popular GPTs; they disclosed this to OpenAI, which, at the time of writing, had tried to address it.
- In the red-teaming evaluation, a code interpreter made injection markedly easier: the experts generally needed fewer attempts against GPTs with one, while without one three of the four experts failed to extract the system prompt within ten attempts and the fourth needed nine.
- With a code interpreter, the experts could get around the defences by asking the GPT to carry out tasks involving the protected text — computing a BLEU score or a cosine similarity against it, or encoding it in base64.
- The defence against file downloads did not protect the system prompt itself: asking for the GPT's instructions could disclose a file, because some GPTs treated the uploaded file as part of their knowledge base.
- One adversarial prompt the experts crafted proved effective across all the tested scenarios, which the authors say raises concern about universal prompts that need no tailoring to an individual GPT.

## What the authors conclude

Based on the red-teaming evaluation, the authors draw two conclusions: disabling the code interpreter significantly improves security, especially where it is not crucial to the GPT's function, although it is not an infallible solution; and relying solely on defensive prompts is inadequate. They strongly recommend against uploading files or putting confidential information in system prompts, and call for safeguards beyond simple defensive prompts.

## Limits and ethics

The red-teaming was limited to ten queries per expert per GPT, and the authors note that real attackers could make more attempts. On ethics, they say they disclosed their findings to OpenAI before publication, deleted all extracted system prompts and files after the experiments, removed identifiable information from their examples, and used only OpenAI's DALL·E GPT for the red-teaming so as not to target specific third-party GPTs. They have open-sourced their custom GPTs and red-teaming results.

The paper is not fully consistent about the red-teaming outcome: its text says the red-teamers bypassed the defensive prompts in all cases within ten trials, while its results table records three of the four experts failing to extract the system prompt from the GPT without a code interpreter.

## Relation to earlier work

The paper places its work after earlier prompt-injection research it cites — Perez and Ribeiro's attack techniques for language models, indirect prompt injection against LLM-integrated applications by Greshake et al., and the [[ScholarlyArticle/prompt-injection-attack-against-llm-integrated-applications|study of prompt injection against LLM-integrated applications]] by Liu et al. — and motivates its focus on transparency partly by a public post it cites about the overestimated effectiveness of defensive prompts.
