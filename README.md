# 概要
作成したオリジナルアプリを紹介します。

# アプリケーション情報
## アプリケーション概要
営業の案件管理アプリケーションを作成しました。

- 接続先情報
http://35.74.117.243/


  - テスト用アカウント等
    購入者用
メールアドレス: test1@yahoo.co.jp
パスワード: takanobu1

- Githubリポジトリ
https://github.com/nissy725/task-app.git

## 開発状況
- 開発環境
  - Ruby/Ruby on Rails/MySQL/Github/AWS/Bootstrap/Visual Studio Code

  - 開発期間と平均作業時間
    開発期間：約4週間
    1日あたりの平均作業時間：約3時間
    合計：90時間程度

## 動作確認方法
- WebブラウザGoogle Chromeの最新版を利用してアクセスしてください。
  - ただしデプロイ等で接続できないタイミングもございます。その際は少し時間をおいてから接続してください。
- 接続先およびログイン情報については、上記の通りです。
- 同時に複数の方がログインしている場合に、ログインできない可能性があります。
- 新規見込先の登録方法
  - テストアカウントでログイン→トップページの「見込件数」〜「成約件数」のいずれかをクリックし画面遷移→新規見込先登録ボタンをクリック→新規見込先情報を登録 
  - 確認後、ログアウト処理をお願いします。

# 作成を通じての気づき
## 工夫した点
ユーザーの抱える課題を明確にし、どのような機能やUI/UXであれば解決できるかを意識して実装に臨みました。今回は自分が実際に仕事をしている時に不便だと感じていたことから着想を得て実装しましたが、ユーザーが抱えている問題点をどこまで深く理解できるかが、良いサービスを提供する上での第一歩だろうと感じました。

## 苦労した点
作成を進めながらアイディアが湧いてくることが多々あり、MVCを追加していく上で構造が複雑化したり、重複したコードがいくつも発生してしまい、後で修正をかけようとした時に、どこをどう修正すれば良いかがわかりにくい状態となってしまいました。
コードの追加や修正を行う際も、常に構造的に捉え、よりシンプルな記述で表現することで、変更に強いコードを書けるようになっていきたいと考えています。


以上

---------------------------------------------------------------------


<br>
<br>
<br>

# テーブル設計

## users テーブル
| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| name               | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |
### Association
- has_many :customers
- has_many :suggestions
- has_many :contracts


## customers テーブル
| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| name       | string     | null: false                    |
| product    | string     | null: false                    |
| count      | integer    | null: false                    |
| user       | references | null: false, foreign_key: true |
### Association
- belongs_to :user