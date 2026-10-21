---
title: "Microsoft 365 Copilot"
type: "schema:SoftwareApplication"
lang: ja
tags: [大規模言語モデル, AIセキュリティ]
translated_from: ".wikicommit/entity/en/SoftwareApplication/microsoft-365-copilot.md"
source_commit: "f2d5f7db25128363c994ed51fd5f848d73b3160c"
translated_at: "2026-10-21"
translated_by: "claude-opus-5-5"
translated_with: "0.11.0"
review_status: pending

properties:
  description: "Microsoft の Office アプリケーション全体に統合された AI アシスタントで、ユーザーによるメールの下書き、文書の要約、組織内の知識の照会を支援する。2025年には、細工したメールを通じたデータの持ち出しを可能にしたゼロクリックのプロンプトインジェクション脆弱性 EchoLeak（CVE-2025-32711）の対象となった。"
  applicationCategory: "AI アシスタント"
  author: ["Microsoft"]
---

Microsoft 365 Copilot は、Microsoft が自社の Office アプリケーション全体に統合している大規模言語モデル（LLM）のアシスタントであり、ユーザーによるメールの下書き、文書の要約、組織内の知識の照会を支援する。利用できるのは組織内の認証済みユーザーに限られ、そのユーザーがアクセスできるメールやファイルへの読み取りアクセス権を持つ。2025年には [[Event/echoleak-microsoft-365-copilot-vulnerability-2025|EchoLeak]]（CVE-2025-32711）の対象となった。ある事例研究は、これを、実運用中の AI システムで[[DefinedTerm/prompt-injection|プロンプトインジェクション]]が兵器化され、具体的なデータ持ち出しを引き起こした最初の既知の事例だとしている。

## 仕組み

EchoLeak の事例研究の説明によれば、Copilot は依頼に回答する際、検索（リトリーバル）の処理を通じてユーザーのメールやファイルなどのコンテンツを自らのコンテキストに取り込み、組織自身のデータに基づいて回答する。ユーザーは Outlook や Teams などのアプリケーションの中から Copilot を呼び出し、たとえば最近のメールを要約させたり、あるプロジェクトに関する情報を探させたりする。

## セキュリティの仕組み

[[ScholarlyArticle/echoleak-the-first-real-world-zero-click-prompt-injection-exploit-in-a-production-llm-system|EchoLeak の事例研究]]の説明によれば、この脆弱性があった当時、Copilot のシステムには次のような複数の防御が備わっていた。

| 防御 | 役割 |
| --- | --- |
| XPIA 分類器 | クロスプロンプトインジェクションの試み（XPIA）を検知してブロックする入力分類器 |
| 出力リンクの除去 | Copilot の回答がユーザーに表示される前に、外部への Markdown 形式のリンクを削除または伏せ字にするコンテンツフィルタリング |
| コンテンツセキュリティポリシー（CSP） | Copilot のインターフェース内の Web コンテンツが、許可リストに載っていないドメインからリソースを読み込むことを阻止するブラウザーの設定 |

## EchoLeak

EchoLeak では、組織に細工したメールを1通送るだけで、ユーザーが何の操作もしないまま Copilot に内部データを漏洩させることができた。事例研究によれば、この攻撃は上記の防御を順に一つずつ回避した。すなわち XPIA 分類器を回避し、参照形式の Markdown によってリンクの除去を回避し、許可リストに載っている Microsoft Teams のサービスを経由して CSP を回避した。また、自動的に取得される画像によってクリックの必要もなくなった。Aim Labs は2025年1月にこの欠陥を発見して Microsoft に非公開で報告し、Microsoft は2025年5月にサーバー側の修正を展開した。この欠陥は2025年6月11日に公表された。Microsoft は、顧客側での対応は不要であり、実環境で悪用された証拠はないと述べた。

事例研究によれば、Microsoft のパッチでは、特定のコンテキストで Copilot が外部とのやり取りを利用することを制限するオプションが導入された。また、最近の変更により、外部から届いたコンテンツから参照形式のリンクや埋め込み画像が取り除かれるようになった。
