---
title: "ChatGPT search への間接プロンプトインジェクション（2024年）"
type: "schema:Event"
lang: ja
tags: [プロンプトインジェクション, 大規模言語モデル]
translated_from: ".wikicommit/entity/en/Event/chatgpt-search-indirect-prompt-injection-2024.md"
source_commit: "5d3c9046e7210454d70266e0074ce166fe4f1ca1"
translated_at: "2026-10-21"
translated_by: "claude-opus-5-5"
translated_with: "0.11.0"
review_status: pending

properties:
  description: "2024年12月に報告された、OpenAI の ChatGPT 検索ツールの間接プロンプトインジェクションに対する脆弱性。ウェブページ上の隠されたコンテンツによって、ツールの応答が操作されうるというもの。"
  startDate: "2024-12"
---

2024年12月、OpenAI の ChatGPT 検索ツールが間接[[DefinedTerm/prompt-injection|プロンプトインジェクション]]攻撃に対して脆弱であると報告された。この攻撃では、ウェブページ上の隠されたコンテンツによってツールの応答が操作されうる。

## 判明したこと

テストでは、ページ上の不可視のテキストによって、否定的なレビューが人為的に肯定的な評価で上書きされうることが示され、ユーザーを誤解させるおそれがあった。セキュリティ研究者らは、こうした脆弱性が放置されれば、誤情報や検索結果の操作を助長しうると警告した。

## 間接インジェクションとされる理由

間接インジェクションでは、プロンプトはユーザーから与えられるのではなく外部データ（ここでは検索ツールが取得するウェブページ）の中に置かれており、モデルが正当なものと取り違える指示を含んでいる。
