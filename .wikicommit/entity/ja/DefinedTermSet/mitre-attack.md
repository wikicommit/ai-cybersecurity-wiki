---
title: "MITRE ATT&CK"
type: "schema:DefinedTermSet"
lang: ja
tags: [脅威インテリジェンス, サイバーセキュリティフレームワーク]
translated_from: ".wikicommit/entity/en/DefinedTermSet/mitre-attack.md"
source_commit: "125892c49638783d9093be2bf28060e3e79fe776"
translated_at: "2026-10-21"
translated_by: "claude-opus-5-5"
translated_with: "0.11.0"
review_status: pending

properties:
  description: "Mitre Corporation が作成した、サイバー攻撃や侵入を分類・記述するためのフレームワーク。既知の攻撃者の手法の公開カタログとして公開されており、各手法には ID が付けられている。戦術のカテゴリーは、さらに手法とサブ手法に細分化されている。"
  version: "20"
  datePublished: "2013"
  url: "https://attack.mitre.org/"
---

MITRE ATT&CK（Adversarial Tactics, Techniques, and Common Knowledge）は、サイバー攻撃や侵入を分類・記述するためのガイドラインである。Mitre Corporation によって作成され、2013年に公開された。各手法に「T1566-Phishing」のような ID が付けられた既知の攻撃者の手法の公開カタログであることから、サイバーセキュリティの分野で広く使われている。これによりサイバーセキュリティ業界は共通の語彙を持つことができ、アナリストがレポートに ID を書けば、どの読者もそれが何を意味するのかを正確に理解できる。

## 何を分類するか

ATT&CK は、攻撃の結果（侵害の痕跡、IoC）を調べるのではなく、攻撃が進行中であることを示す戦術を特定する。戦術とは、攻撃手法の「なぜ」にあたるものである。このフレームワークは、敵対者の手口を権限昇格やコマンド＆コントロールといった戦術のカテゴリーにまとめ、各カテゴリーをさらに具体的な手法とサブ手法に細分化している。

## 項目：Enterprise 向け ATT&CK マトリックス

Enterprise 向け ATT&CK マトリックス（ATT&CK Matrix for Enterprise）は、カンバンボード形式の図として示される。2022年の時点では、サイバー犯罪者が用いる戦術・技術・手順（TTP）の14のカテゴリーを定義しており、それぞれに関連する手法とサブ手法がある。

| カテゴリー | 説明 | 手法の数 |
| --- | --- | --- |
| 偵察（Reconnaissance） | 標的に関する情報を収集する | 12 |
| リソース開発（Resource Development） | 攻撃のためのリソースを特定し、取得する | 9 |
| 初期アクセス（Initial Access） | システムやネットワークへの最初のアクセスを得る | 11 |
| 実行（Execution） | システム上で悪意あるコードを実行する | 20 |
| 永続化（Persistence） | システムやネットワークへのアクセスを維持する | 22 |
| 権限昇格（Privilege Escalation） | システムやネットワーク内でより高い権限を得る | 13 |
| 防御回避（Defense Evasion） | セキュリティ対策を無効化する、または回避する | 43 |
| 認証情報アクセス（Credential Access） | システムやデータにアクセスするための認証情報を得る | 17 |
| 探索（Discovery） | ネットワーク内の追加のシステムや情報を特定する | 34 |
| 水平移動（Lateral Movement） | 侵害したネットワーク内を横方向に移動する | 9 |
| 収集（Collection） | 侵害したシステムからデータを収集する | 17 |
| コマンド＆コントロール（Command and Control） | 侵害したシステムとの通信を確立する | 18 |
| 持ち出し（Exfiltration） | 盗んだデータを侵害したシステムから転送する | 9 |
| 影響（Impact） | 攻撃者の目的を達成するための行動をとる | 15 |

### 例：偵察

偵察は、最終的なサイバー攻撃に向けた情報収集の初期段階である。ATT&CK バージョン20の時点で12の手法があり、ネットワークスキャン、[[DefinedTerm/social-engineering|ソーシャルエンジニアリング]]、オープンソースインテリジェンス（OSINT）などが含まれる。そのうち4つを以下に示す。

| MITRE ID | 手法 | 概要 |
| --- | --- | --- |
| T1595 | 能動的スキャン（Active Scanning） | Nmap のようなポートスキャンツール、脆弱性スキャンツール、そして被害者が使う一般的なファイル拡張子やソフトウェアを対象とするワードリストスキャンによって、標的のネットワークをスキャンする能動的な偵察 |
| T1598 | 情報を目的としたフィッシング（Phishing for Information） | 電子メールなどの通信チャネルを通じて、ソーシャルエンジニアリングの技法を用いて標的から有用な情報を引き出すこと。一般的な[[DefinedTerm/phishing\|フィッシング]]や、個々の被害者を狙って作られるスピアフィッシングを含む |
| T1592 | 被害者のホスト情報の収集（Gather Victim Host Information） | 特定のエンドポイントの構成を把握すること。ハードウェア、ソフトウェア、管理上の構成（たとえば Active Directory ドメインへの所属）、特にアンチウイルスやロックといったセキュリティ保護が対象となる |
| T1590 | 被害者のネットワーク情報の収集（Gather Victim Network Information） | 標的ネットワークの構成を把握すること。トポロジー、セキュリティアプライアンス（ネットワークファイアウォール、VPN）、IP アドレスの範囲、完全修飾ドメイン名、ドメインネームシステムの構成などが対象となる |

## エディション

ATT&CK のバージョンは「メジャー.マイナー」方式で付けられている。バージョン1.0は2018年1月16日に、バージョン20は2026年10月13日に公開された。

2026年4月に公開されたバージョン19では、戦術のカテゴリーの数が15に増え、「防御回避」（Defense Evasion）カテゴリーが2つに分割された。「ステルス」（Stealth）は、敵対者によって防御が破られているにもかかわらず、防御が無傷であるように見える振る舞いを扱い、「防御の妨害」（Defense Impairment）は、防御が能動的かつ目に見える形で破られる振る舞いを扱う。

## 関連するフレームワーク

ATT&CK は、Lockheed Martin が開発したサイバーキルチェーンに代わるものである。これは Mitre Corporation のコンピュータセキュリティのオントロジーの一つであり、ほかに共通攻撃パターン列挙・分類（Common Attack Pattern Enumeration and Classification、CAPEC）、共通脆弱性タイプ一覧（Common Weakness Enumeration、CWE）、共通脆弱性評価システム（Common Vulnerability Scoring System、CVSS）、[[Dataset/common-vulnerabilities-and-exposures|共通脆弱性識別子（Common Vulnerabilities and Exposures、CVE）]]がある。
