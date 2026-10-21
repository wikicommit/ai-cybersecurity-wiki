---
title: "Claude Mythos"
type: "schema:SoftwareApplication"
lang: ja
tags: [大規模言語モデル, 脆弱性発見, AIのサイバー能力]
translated_from: ".wikicommit/entity/en/SoftwareApplication/claude-mythos.md"
source_commit: "d0d56879e997abae681c0a8698ac6753be8877fc"
translated_at: "2026-10-21"
translated_by: "claude-opus-5-5"
translated_with: "0.11.0"
review_status: pending

properties:
  description: "Anthropic が開発したプロプライエタリな大規模言語モデルのシリーズで、2026年4月に Claude Mythos Preview として初めて公表された。Anthropic はソフトウェアの脆弱性を発見する能力を理由に一般公開を見送り、Project Glasswing を通じて選ばれた組織に、重要なソフトウェアの脆弱性を発見・修正するためのアクセスを提供した。"
  applicationCategory: "大規模言語モデル"
  author: ["Anthropic"]
---

Claude Mythos は Anthropic が開発した大規模言語モデルのシリーズであり、Claude 製品ラインの中で最も複雑なモデル群と説明されている。Anthropic は、ソフトウェアの脆弱性を発見する能力を理由に、最初のモデルである Claude Mythos Preview を一般には公開しなかった。その代わりに2026年4月から、Project Glasswing という名称のもとで、選ばれた企業が重要なソフトウェアのセキュリティ脆弱性を走査するためにこのモデルへのアクセスを与えられた。その発表に対する世間の反応はさまざまで、複数の国の金融当局や政府からの警告を招いた。

## モデルとリリース

| 日付（2026年） | 出来事 |
| --- | --- |
| 3月26日 | ブログ記事の下書きが流出したことで、Claude Mythos という名前のモデルの存在が公になった。Anthropic は *Fortune* に対してその存在を認め、このモデルはサイバーセキュリティに重大なリスクをもたらすと述べた。*Axios* によれば、Anthropic はその月に政府当局者に対してこのモデルの能力について警告していた |
| 4月7日 | Anthropic が Mythos（Claude Mythos Preview）を公式に公表し、一般公開の予定はないと述べ、Project Glasswing を開始した |
| 6月2日 | アクセスが15か国以上の150の組織に拡大された |
| 6月9日 | Claude Mythos 5 が Project Glasswing を通じてプレビューとしてリリースされ、あわせて安全対策を拡張した版である Claude Fable 5 もリリースされた |
| 6月12日 | 米国政府が Anthropic に書簡を送り、国家安全保障上の理由から、所在地にかかわらず米国籍を持たない者による両モデルへのアクセスを禁じた。Anthropic はすべての顧客について両モデルへのアクセスを取り消した |
| 6月26日 | Anthropic が一部の米国の組織に対して Mythos へのアクセスの回復を開始した |
| 6月30日 | Anthropic は、米国商務省が制限を解除し、翌日にアクセスを回復すると発表した。その後 Fable 5 はすべてのサブスクリプションプランで一時的に提供され、7月20日に上位プランの標準機能となった |
| 9月1日 | Claude Mythos 5.1 と Claude Fable 5.1 がリリースされた |
| 10月6日 | Mythos 5.1 が、更新された Cyber Verification Program で承認を受けたユーザー向けにリリースされた |

Anthropic によれば、Mythos 5 と Fable 5 は安全対策を除けば同一である。Fable 5 の分類器が、サイバーセキュリティ、生物学・化学、またはモデルの蒸留に関するリクエストを検知すると、その応答は代わりに能力の劣る Claude Opus によって処理される。Anthropic は2026年5月28日の Claude Opus 4.8 の発表において、追加のサイバーセキュリティ上の安全対策が整い次第、数週間以内に「Mythos クラス」のモデルをすべての顧客に提供する見込みだと述べていた。*Financial Times* が報じた業界の推計では、Mythos のパラメータ数は約8兆、Fable 5 は約5兆とされている。

## アクセス制御と不正利用

Bloomberg News によれば、Mythos が発表された当日に複数の権限のないユーザーがアクセスを得た。報道によれば、非公開の Discord チャンネルにいた数人のユーザーが、最近の Mercor のデータ侵害で得られた情報を使ってアクセスしたという。また NSA も Mythos を使用しているが、その上部組織は紛争の後に Anthropic をブラックリストに載せていた。2026年4月、Anthropic は、シンガポールでの会議において中国のシンクタンクのメンバーからリクエストを受けたとされた後、アクセスの提供を断った。在米中国大使館は、そのリクエストについては把握していないと述べ、中国政府との関係を否定した。

## 脆弱性発見能力と異論のある主張

Mythos Preview は、ソフトウェア内の脆弱性を修正するために設計された大規模言語モデルと説明されている。英国の [[Organization/ai-security-institute|AI Security Institute]] はサイバーレンジを用いて Claude Mythos をテストし、Mythos は Claude Opus 4.6 と、同順位の GPT-5.4 および GPT-5.3 Codex を上回って最上位となった。

Anthropic は、自社のテストで Mythos が「すべての主要なオペレーティングシステムとすべての主要な Web ブラウザ」に脆弱性を見つけたと述べた。これらの主張には異論が出ている。

- ある独立系のセキュリティ研究者は、宣伝用の文書以外に独立した検証が存在しないことを理由にこれらの主張に疑問を呈し、Anthropic 自身の報告書によれば、バグを見つけたのは Claude Opus 4.6 で、それを Mythos に渡して悪用させたこと、また Firefox のバグは Firefox そのものではなく、セキュリティ機能を減らして Firefox を模した環境で見つかったものであることを指摘した。
- Anthropic のテストで Mythos は72.4%のケースで完全なコード実行を達成したが、最も悪用しやすい2つのバグを取り除くと5%未満となり、その場合は Claude Sonnet 4.6 のほうが上回った。Anthropic は「成功した実行のほぼすべてが、現在は修正済みの同じ2つのバグに依存している」と述べた。
- 別の独立したテストでは、Mythos が特定した目玉の脆弱性の1つが、テストされた8つのオープンソースモデルすべてによっても特定されたことがわかった。そのうちの1つはアクティブパラメータがわずか36億個のモデルだった。

限定リリースの2週間後、Mozilla は Mythos Preview を使って Firefox の271件のセキュリティ脆弱性を発見し、修正したと発表した。2026年5月14日には、Calif.io の従業員が、Mythos を使って Apple M5 チップに影響するメモリ破壊のエクスプロイトを作成したと発表した。

## Project Glasswing

Project Glasswing は、Anthropic が選ばれた企業や組織に、重要なソフトウェアの脆弱性を発見・修正するための Mythos へのアクセスを与えた際の名称である。当初は Microsoft、Apple、Google、Amazon Web Services、Linux Foundation、Cisco、Nvidia、Broadcom を含む40社以上にアクセスが与えられた。2026年5月には、電力、水道、医療、通信、ハードウェアの分野でアクセスが50から200の組織に拡大され、Anthropic は最初の50のパートナーが、深刻度が高いまたは重大（critical）な脆弱性を1万件以上発見したと述べた。

あるセキュリティ研究者によれば、9月時点で、発見された欠陥のうち公表されたのは10%にすぎず、修正されたのは1%未満であり、Mythos がバグの約90%を深刻度が高いと評価したのに対し、プロジェクトのメンテナーによる評価では60%に近かった。セキュリティ誌 *Dark Reading* のある執筆者は、バグの検証と修正は主に人間によって行われるため、そこにボトルネックがあると述べている。

## Anthropic Cyber Mission と OSS Scanner

OSS Scanner と Critical Infrastructure Defense Program は、Anthropic の Cyber Mission プログラムの最初の2つの柱である。2026年10月8日に開始された OSS Scanner は、条件を満たしてオプトインしたオープンソースプロジェクトに無料のサイバーセキュリティ走査を提供する。[[SoftwareApplication/oss-fuzz|OSS-Fuzz]] に着想を得ており、OSS-Fuzz の適格基準を用いている。そのレポートはモデルによって生成され、事前に人間によるレビューを受けない。Anthropic は、同社のサイバー関連のレポートは2026年初めにはほとんどが低品質だったものの、その後大幅に改善したと主張している。

## 反応

**金融セクター。** Mythos が明らかにされた数時間後、米国財務長官の Scott Bessent と連邦準備制度理事会議長の Jerome Powell は金融機関の幹部を招集してその能力について警告し、JPMorgan Chase、Goldman Sachs、Citigroup、Bank of America、Morgan Stanley を含む複数の銀行が彼らの要請を受けて Mythos のテストを始めた。カナダ銀行は翌日、主要な金融機関を同様の会合に呼び出し、Mythos はイングランド銀行の Cross Market Operational Resilience Group と同行の AI タスクフォースで議論される予定となった。欧州中央銀行総裁の Christine Lagarde はアクセスを制限したことについて Anthropic を称賛した。欧州の銀行にアクセスが与えられなかったことを受けて、Mistral AI は独自のモデルの開発を始めた。

**各国政府。** 米国財務省は Mythos へのアクセスを求め、ホワイトハウスは2026年4月16日に Mythos について Anthropic と会合を開き、5月13日には32人の米国下院議員からなる超党派のグループが、連邦のサイバーセキュリティ政策の見直しについて国家サイバー長官室（Office of the National Cyber Director）に書簡を送った。インドの財務大臣は4月23日に銀行と当局者を招集し、新たなサイバーセキュリティ上の脅威の可能性について議論した。4月24日に日本の金融庁が主催した官民の会合では、参加者が Mythos によって引き起こされうる脅威に対抗するための作業部会を設けることで合意した。カナダの人工知能担当大臣はアクセスを制限したことについて Anthropic を称賛し、オーストラリア健全性規制庁（Australian Prudential Regulation Authority）は銀行と複数回の会合を開いた。

**メディア。** *The Conversation* のある執筆者は、Mythos が核抑止を台無しにしかねないと論じ、*The New York Times* のある執筆者は、Mythos が個人や小規模なチームを「サイバーセキュリティ上の不利」な立場に置くと論じた。
