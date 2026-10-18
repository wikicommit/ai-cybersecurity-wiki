---
title: "Audio deepfake"
type: "schema:DefinedTerm"
lang: en
aliases: ["Voice cloning"]
tags: [deepfakes, ai-assisted-attacks, social-engineering]
sources:
  - type: url
    url: 'https://en.wikipedia.org/wiki/Audio_deepfake'
    hash: sha256:6ccb25a3645353c23522e537781771457b7a2511ca6c9e81af01442f62279960
    license: CC-BY-SA-4.0
review_status: pending
generated_at: "2026-10-18"
generated_by: "claude-opus-5-5[1m]"
generated_with: "0.11.0"

properties:
  description: "An application of artificial intelligence that generates speech convincingly mimicking a specific individual, often saying phrases or sentences the person never spoke. Besides legitimate uses such as audiobooks and restoring lost voices, it has been criticised for its use in scams, phishing and misinformation."
---

Audio deepfake technology, also called voice cloning or deepfake audio, is an application of artificial intelligence designed to generate speech that convincingly mimics specific individuals, often synthesising phrases or sentences they have never spoken. It was initially developed with the intent of enhancing aspects of human life — generating audiobooks, helping people who have lost their voices to medical conditions, personalised digital assistants, natural-sounding text-to-speech and speech translation — but, like other deepfakes, it has been criticised for its use in scams, phishing and misinformation campaigns.

## Categories

| Category | How it works |
| --- | --- |
| Replay-based | Reproduces a recording of the victim's voice. In *far-field* detection, a microphone recording of the victim is played as a test segment on a hands-free phone; *cut-and-paste* fakes the requested sentence from a text-dependent system. Text-dependent speaker verification can defend against replay attacks, and deep convolutional neural networks are a current technique for detecting end-to-end replay attacks |
| Synthetic-based | Speech synthesis, including text-to-speech. A classical system has three modules: a text analysis model that turns text into linguistic features, an acoustic model that extracts the target speaker's parameters, and a vocoder that produces waveforms. It is trained on clean, transcribed recordings of the original speaker. WaveNet, a neural network for generating raw audio waveforms, was the first breakthrough |
| Imitation-based | Also known as voice conversion: an original speaker's speech is transformed — its style, intonation or prosody — so that it sounds like a target speaker, without changing the linguistic content. Generative adversarial networks (GANs) have been the most popular approach in recent years |

The synthetic-based and imitation-based approaches are often confused, since there is no clear separation between them in the generation process; the imitation-based approach usually keeps the input and output text unaltered.

The perceptual quality of generated audio is most widely measured with the mean opinion score (MOS), the arithmetic average of listeners' ratings; audio from algorithms trained on a single speaker scores higher. In March 2020 a Massachusetts Institute of Technology researcher demonstrated, through the web application 15.ai, high-quality speech generated from only 15 seconds of training data, where earlier systems needed tens of hours.

## Detection

Audio deepfake detection decides whether a given speech recording is real or fake. Methods either look for low-level artefacts introduced by generators at the sample level or use higher-level features such as the semantic content of the recording. Machine learning detectors usually follow three steps: the audio is preprocessed into features, a detection model is trained to discriminate real from fake, and a final module outputs the probability of each class — following the ASVspoof challenge's nomenclature, *"Spoof"* for fake audio and *"Bonafide"* for real audio.

Known weaknesses of current detection include:

- Most studies focus on English; detectors trained mainly on English perform worse on other languages, and Chinese, Spanish, Hindi and Arabic are understudied. Accent variation also affects accuracy.
- A 2023 survey found that detection systems struggle to generalise across generation methods and acoustic conditions.
- Excessive preprocessing makes computation costly; researchers have suggested self-supervised learning on unlabelled data, and effective data augmentation to handle unseen spoofing attacks.
- Training and testing with real-world audio, including background noise, remains underdeveloped, and few studies address imitation-based deepfakes.

Proposed defences include using blockchain and other distributed ledger technologies to track the provenance of data, comparing affective cues from perceived emotions, and keeping some proprietary detection tools only for those who need them, such as fact-checkers, so that attackers do not learn which features give a deepfake away.

## Misuse

The technique can be used as a logical-access voice spoofing technique to manipulate public opinion for propaganda, defamation or terrorism, and attackers have targeted individuals and organisations including politicians and governments. Audio deepfakes could also pose a danger to the voice ID systems used by financial institutions.

| When | What happened |
| --- | --- |
| 2019 | Scammers used AI to impersonate the voice of the CEO of a German energy company and directed the CEO of its UK subsidiary to transfer €220,000 |
| Early 2020 | The same technique impersonated a company director in a scheme that convinced a branch manager to transfer $35 million |
| March 2023 | The United States Federal Trade Commission warned consumers about AI used to fake the voice of a family member in distress asking for money |
| October 2023 | An audio deepfake falsely portrayed the UK Labour leader Keir Starmer abusing staffers at the start of his party's conference; the same month, an audio deepfake falsely claimed to capture Slovak politician Michal Šimečka discussing ways to rig an election |
| 2024 | [[Event/new-hampshire-biden-robocall-deepfake-2024\|Robocalls impersonating Joe Biden]] urged New Hampshire voters not to vote in the presidential primary |
| Confirmed in May 2024 | [[Event/arup-deepfake-scam-2024\|A deepfake video-call fraud]] led a finance employee of the engineering firm Arup in Hong Kong to transfer HK$200 million |

According to a 2023 global McAfee survey, one person in ten reported having been targeted by an AI voice-cloning scam, and 77% of those targets reported losing money.

In February 2023, the research firm Graphika documented what it called the first known case of state-aligned actors using AI-generated news anchors for political disinformation: the Chinese propaganda network Spamouflage created two fictitious presenters with Synthesia AI software for videos promoting pro-China narratives, at a cost of about $30 a month.

## Rules, research and challenges

In January 2023 China implemented regulations requiring deepfake content to be clearly labelled, prohibiting the use of deep synthesis technology to produce or disseminate fake news, and requiring service providers to verify user identities and keep content logs.

Research programmes on media manipulation include DARPA's Semantic Forensics (SemaFor), which builds on its Media Forensics (MediFor) programme, and the Italian PREMIER programme run by five Italian universities. DEEP-VOICE is a publicly available research dataset for detecting speech generated through Retrieval-based Voice Conversion. Public challenges include ASVspoof (the Automatic Speaker Verification Spoofing and Countermeasures Challenge), described as the most famous, the ADD (Audio Deepfake Detection) challenge, and the Voice Conversion Challenge.

Disputes over voices used without permission have also reached the courts: in September 2026 the Tokyo District Court ruled that unauthorised commercial use of an AI-generated imitation of a person's voice can infringe publicity rights, in a case a voice actor brought against TikTok — the first judicial recognition of a right to one's voice in Japan.
