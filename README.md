# 旅じたく
.<img src="https://img.shields.io/badge/-Ruby-CC342D.svg?logo=ruby&style=plastic">
<img src="https://img.shields.io/badge/-Rails-CC0000.svg?logo=rails&style=plastic">
<img src="https://img.shields.io/badge/-CSS3-1572B6.svg?logo=css3&style=flat">
<img src="https://img.shields.io/badge/-HTML5-333.svg?logo=html5&style=flat">
<img src="https://img.shields.io/badge/Javascript-276DC3.svg?logo=javascript&style=flat">
<img src="https://img.shields.io/badge/-Bootstrap-563D7C.svg?logo=bootstrap&style=flat">
<img src="https://img.shields.io/badge/-Google-4285F4.svg?logo=google&style=plastic">
<img src="https://img.shields.io/badge/-Amazon%20AWS-232F3E.svg?logo=amazon-aws&style=flat">

## 概要
http://54.199.48.112/

日本にある世界遺産を簡単に見ることができます。
地図から検索したり、クイズで学習することもできます。
また、行ったことがある世界遺産の写真を投稿することも出来ます。
（画像はすべてフリー素材を使わせていただいたため、画質が粗いものもあります）

## 仕様
- macOS Catalina 10.15.4
- Ruby 2.5.1
- Ruby on Rails 5.2.4.2
- Bootstrap 4
- Mysql
- AWS
- Google Map API

## おもな機能

### ユーザー

- ユーザー登録、ログイン、ログアウト
- ユーザーは同じメールアドレスでは登録できない
- 簡単ログイン機能

### 画像・テキスト投稿

- 作成、モーダルによる削除確認
- タグはハッシュタグ風に表示され、3つまで付加することができる
- タグの入力時、すでに存在しているタグはフォームに自動補完される

- AWS S3

### ビュー

- レスポンシブデザイン（スマホサイズでヘッダーがハンバーガーメニューになる）
- kaminariによるページネーション機能（画像投稿ページ）
- bootstrap

### その他

- Google Map API による地図表示機能
- javascriptを用いたクイズ機能


## 今後実装したいこと
- 投稿した画像についてのいいね機能
- 非同期投稿機能
- Twitterアカウントでのログイン

## 制作背景
新型コロナウィルスの影響で、外へ出てリフレッシュができない人が増えています。
私は旅行が趣味なので、同じく旅行へ行けずにストレスを溜めている方達が自宅でも旅行の雰囲気を味わうことができるようなアプリを作りたいと考えました。
