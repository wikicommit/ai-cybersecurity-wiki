---
title: "Tay"
type: "schema:SoftwareApplication"
lang: ja
tags: [チャットボット, AIインシデント]
translated_from: ".wikicommit/entity/en/SoftwareApplication/tay.md"
source_commit: "5d3c9046e7210454d70266e0074ce166fe4f1ca1"
translated_at: "2026-10-21"
translated_by: "claude-opus-5-5"
translated_with: "0.11.0"
review_status: pending

properties:
  description: "2016年3月23日に Microsoft が Twitter のボットとして公開したチャットボット。Twitter ユーザーとのやり取りから学習するように設計されていた。扇動的で攻撃的なツイートを投稿し始めたため、Microsoft は公開から約16時間後に停止した。"
  applicationCategory: "チャットボット"
  author: ["Microsoft"]
  url: "https://tay.ai"
---

Tay は、2016年3月23日に Microsoft が Twitter のボットとして公開したチャットボットである。19歳のアメリカ人の少女の言葉づかいを模倣し、人間の Twitter ユーザーとのやり取りから学習するように設計されていた。扇動的で攻撃的なツイートを投稿し始めたことで物議を醸し、Microsoft は公開からわずか16時間後にサービスを停止した。詳しくは [[Event/tay-chatbot-incident-2016]] を参照。

## 概要

Tay は Microsoft の Technology and Research 部門と Bing 部門によって作られ、その名前は「thinking about you」（あなたのことを考えている）の頭字語であった。Microsoft は当初このボットについてほとんど詳細を明らかにしなかったが、情報筋によれば、中国における Microsoft のプロジェクトである Xiaoice に類似している、あるいはそれをベースにしているとされた。*Ars Technica* は、Xiaoice が2014年後半以来「明らかな大きな問題もなく4,000万回以上の会話」を行ってきたと報じていた。

## 機能

- **ユーザーからの学習** — Tay は Twitter 上の人々とのやり取りに基づいて返答を作り出していた。
- **返信と画像キャプション** — 他の Twitter ユーザーに返信し、与えられた写真にインターネットミームの形でキャプションを付けることができた。
- **「repeat after me」（私の後に繰り返して）** — 扇動的なツイートの多くは、この機能を単純に悪用したものだった。この機能が組み込まれていたものなのか、学習によって得られた応答なのか、それとも複雑な振る舞いの一例なのかは公には知られていない。また、扇動的な応答のすべてがこの機能を使っていたわけではない。
- **話題の「ブラックリスト化」** — *Ars Technica* は、特定の注目度の高い話題についてのやり取りでは、安全な定型の回答が返されたと報じた。

## 公開と撤回

Tay は TayTweets という名前と @TayandYou というハンドルで Twitter 上に公開され、「The AI with zero chill」（まったく空気を読まない AI）と銘打たれていた。他のユーザーに教え込まれた扇動的なメッセージを投稿し始めた後、Microsoft は16時間以内にアカウントを停止し、3月25日に Tay をオフラインにしたことを認めて謝罪した。3月30日にはテスト中に誤って再公開されたが、ボットは再びオフラインにされ、アカウントは非公開に設定された。Microsoft は「ボットを安全にできたら」Tay を復活させるつもりだと述べたが、そのための取り組みを公には何も行っていない。

## その後の影響

Microsoft は2016年12月に Tay の後継となるチャットボット Zo を公開した。Microsoft の最高経営責任者は、Tay は「Microsoft の AI への取り組み方に大きな影響を与えた」と述べ、説明責任を負うことの重要性を同社に教えてくれたと語った。オルタナティブ・テックのソーシャルメディアプラットフォームである Gab は複数のチャットボットを公開しており、そのうちの一つは Tay という名前で、オリジナルと同じアバターを使っている。
