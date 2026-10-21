---
title: "garak"
type: "schema:SoftwareApplication"
lang: ja
tags: [レッドチーミング, LLMセキュリティ, 脆弱性スキャン, オープンソース]
translated_from: ".wikicommit/entity/en/SoftwareApplication/garak.md"
source_commit: "d45c0c28dae185f7db98f1cc7df51aee6f6dbbf9"
translated_at: "2026-10-21"
translated_by: "claude-opus-5-5"
translated_with: "0.11.0"
review_status: pending

properties:
  description: "大規模言語モデルのセキュリティ脆弱性に関する情報を提供し、言語モデルや対話システムのペネトレーションテストとレッドチーミングを支援する、オープンソースのコンピュータセキュリティツール。Nvidia の支援を受けている。"
  applicationCategory: "セキュリティ"
  author: ["Leon Derczynski", "Nvidia"]
  url: "https://garak.ai/"
---

garak は、大規模言語モデル（LLM）のセキュリティ脆弱性に関する情報を提供し、言語モデルや対話システムのペネトレーションテストとレッドチーミングを支援するコンピュータセキュリティツールである。Nvidia の支援を受けており、公式にはその名前は「generative AI red-teaming & assessment kit」（生成 AI のレッドチーミングと評価のためのキット）の略である。Python で書かれ、クロスプラットフォームで動作し、Apache License のもとでオープンソースソフトウェアとして配布されている。

## 仕組み

garak は主に3種類の構成要素から成る。

| 構成要素 | 役割 |
| --- | --- |
| プローブ（Probes） | 攻撃を管理する。それぞれが1つの敵対的手法を実装する |
| ジェネレーター（Generators） | 攻撃対象を抽象化する。対象は LLM、対話システム、あるいはテキストを受け取ってテキストを返すもの（任意で他のモダリティを伴う）であれば何でもよい |
| ディテクター（Detectors） | 出力が攻撃の成功を示しているかを評価する |

プローブはジェネレーターを攻撃し、その結果得られた出力をディテクターに渡す。結果はレポートにまとめられ、HTML ページと、結果を要約した JSON オブジェクトとして出力される。

## 歴史

garak は2023年春、ITU Copenhagen（コペンハーゲン IT 大学）の Leon Derczynski が、ワシントン大学でのサバティカル中に開発した。2023年6月13日に GPL のもとで初めてリリースされ、その後ライセンスは Apache 2.0 に変更された。このソフトウェアは現在、長期サポートのあるオープンソースプロジェクトとして Nvidia に拠点を置いており、2024年11月から Nvidia の公開 GitHub で入手できる。出典が記録している安定版は、2026年9月9日のバージョン 0.17.0 である。

## 評価と利用

富士通研究所（Fujitsu Research）による2024年の独立したレビューは、garak を LLM 脆弱性スキャナーの筆頭格と評した。Microsoft、Trend Micro、Nvidia、Cisco の記事でツールとして使用・推奨されており、IT ニュースメディアでも取り上げられている。
