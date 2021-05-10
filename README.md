# アプリ名
BaseballCommunity
# 概要
社会人野球をしたい人たちがコミュニケーションを取る事ができるアプリ
# 本番環境
https://baseballcommunity.herokuapp.com/
# 制作背景(意図)
私は大学生の頃に、部活とサークルが無かった関係でみんなで0からチームを立ち上げて社会人野球に取り組んだ経験があります。同じ大学内の友達に声をかけてメンバーを集め、他チームと練習試合をしながら野球に取り組んだ事はとても大変でした。このような経験を通して、野球をしたいと思っているが環境が無くて困っているという友達がいる事、メンバーが足りていない他の社会人野球チームが意外と存在している事などが分かりました。もし野球をしたい人とメンバーを集めている人がコミュニケーションを取る事ができればこの問題は解決できるのではないかと考えました。そうすれば私たちはメンバー集めやチームの立ち上げなどの大変な思いをせずに社会人野球に取り組めたのではないかと思います。みんなが気軽に野球をできるきっかけを提供したくてこのアプリを作りました。
# DEMO
![トップページ](https://user-images.githubusercontent.com/80035163/117649426-763ab080-b1ca-11eb-831f-dac56ffdfe4c.mp4.gif)
## トップページ
https://gyazo.com/4dc8aadde687b85d2bed16aac378540c
## ユーザー登録ページ
https://gyazo.com/db3a574a26858d25e4de563563acfb18
## プロフィール作成ページ
https://gyazo.com/01a2c3d5a8e84643e37d55042f157b1d
## プロフィール詳細ページ
https://gyazo.com/122356ad64ccabc1073a871999252625
## コメント機能
https://gyazo.com/64417e81fc3c95c5cd620b6d140fd8c4
## 編集ページ
https://gyazo.com/486ff8ac3b6bac48e3ed22260301fb47
## 削除ページ
https://gyazo.com/f99ea9aa60292d18a67d6e02500dfaa2
## マイページ
https://gyazo.com/a8a0aeb4974c24e6abb35bcaf17e715c
## プロフィール一覧ページ
https://gyazo.com/cd603c12fc205e1e0d1f856e5db9186e

# 工夫したポイント
できるだけ見やすく使いやすいアプリにするために、シンプルなデザインにしました。またプロフィールを一覧で表示するだけでなく、各プロフィールにコメントができるようにしてユーザー同士のコミュニケーションを測れるように工夫しました。
# 使用技術
HTML・CSS・Ruby・Ruby on Rails・Git 
# 課題や今後実装したい機能
* JavaScriptを用いたビューの作成
* ブラウザの大きさによってビューを整える
* 空で投稿したらエラーメッセージを表示させる機能
* テストコード
* 投稿なしでマイページに遷移したらエラー文が出る所を解決
* デプロイしたらビューが崩れる所を解決


# テーブル設計

## users テーブル

| Column              | Type       | Options                   |
| --------            | ------     | -----------               |
| email               | string     | null: false, unique: true |
| encrypted_password  | string     | null: false               |
| name                | string     | null: false               |

### Association

- has_many :profiles
- has_many :comments

## profiles テーブル

| Column           | Type       | Options     |
| --------         | ------     | ----------- |
| position_id      | integer    | null: false |
| dexterity_id     | integer    | null: false |
| team             | string     | null: false |
| age              | integer    | null: false |
| image            | text       | null: false |

### Association

- belongs_to :user
- has_many :comments

## comments テーブル

| Column    | Type       | Options     |
| --------  | ------     | ----------- |
| user      | references | null: false |
| profile   | references | null: false |
| text      | text       | null: false |

### Association

- belongs_to :user
- belongs_to :profile