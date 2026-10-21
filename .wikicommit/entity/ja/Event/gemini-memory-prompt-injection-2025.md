---
title: "Gemini の長期記憶へのプロンプトインジェクション（2025年）"
type: "schema:Event"
lang: ja
tags: [プロンプトインジェクション, 大規模言語モデル]
translated_from: ".wikicommit/entity/en/Event/gemini-memory-prompt-injection-2025.md"
source_commit: "5d3c9046e7210454d70266e0074ce166fe4f1ca1"
translated_at: "2026-10-21"
translated_by: "claude-opus-5-5"
translated_with: "0.11.0"
review_status: pending

properties:
  description: "Google の Gemini AI に対する、その長期記憶を操作する間接プロンプトインジェクション攻撃についての、Ars Technica による2025年2月の報道。セキュリティ研究者 Johann Rehberger が実証した。"
  startDate: "2025-02"
---

2025年2月、*Ars Technica* は、Google の Gemini AI に、その長期記憶を操作する間接[[DefinedTerm/prompt-injection|プロンプトインジェクション]]攻撃に対する脆弱性があると報じた。セキュリティ研究者の Johann Rehberger は、文書に隠された指示がどのように保存され、後にユーザーの操作によって発動されうるかを実証した。

## 攻撃の仕組み

このエクスプロイトは、ツール呼び出しの遅延に依拠していた。注入されたプロンプトは保存され、後のユーザーの操作によって発動されて初めて AI がそれに従って動作した。

## 評価

| 主体 | 述べた内容 |
| --- | --- |
| Google | ユーザーの操作が必要であることと、記憶が更新された際にシステムが通知することを挙げ、リスクは低いと評価した |
| 研究者 | 操作された記憶が誤情報につながったり、AI の応答に意図しない形で影響を与えたりするおそれがあると警告した |
