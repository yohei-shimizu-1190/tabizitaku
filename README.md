![旅じたくロゴ](icon.png)

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

![トップページ](toppageview.png)

日本にある世界遺産を簡単に見ることができます。  
地図から検索したり、クイズで学習することもできます。  
また、行ったことがある世界遺産の写真を投稿可能なため、自宅にいながら日本中の素敵な景色を楽しむことができます。  
（画像はすべてフリー素材を使わせていただいたため、画質が粗いものもあります）

## 仕様
- macOS Catalina 10.15.4
- Ruby 2.5.1
- Ruby on Rails 5.2.4.2
- Bootstrap 4
- Mysql
- Google Map API
- AWS

## 作成期間
- 2020/05/01 作成開始
- 2020/05/20 各機能実装完了後、デプロイ
- バージョンアップを継続

## おもな機能

### ユーザー

- ユーザー登録、ログイン、ログアウト
- ユーザーは同じメールアドレスでは登録できない
- 簡単ログイン機能

### 画像・テキスト投稿

- 作成、モーダルによる削除確認
- AWS S3

### ビュー

- レスポンシブデザイン（スマホサイズでヘッダーがハンバーガーメニューになる）
- kaminariによるページネーション機能（北海道・知床の画像投稿ページで確認できます）
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
私は旅行が趣味なので、旅行へ行けずにストレスを溜めている方達が自宅でも旅行の雰囲気を味わうことができるようなアプリを作りたいと考えました。  
海外旅行も当分難しいですが、これは日本についてより深く学ぶいい機会かもしれないと考えました。  
日本にある世界遺産について学びながら、他のユーザーが投稿した画像を見て旅行した気分にもなれる、そんなアプリを形にしてみました。
