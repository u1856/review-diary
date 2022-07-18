## アプリケーション名
review-diary

## アプリケーション概要
- 映画のレビューを投稿できる。
- カレンダーページにて観賞日などの予定を入れることができる。

## URL
https://review-diary-1856.herokuapp.com/

## テスト用アカウント
- Basic認証パスワード：3333
- Basic認証ID：admin
- メールアドレス：review1@t.com
- パスワード：review1

## 利用方法
### 映画のレビューを投稿
1. トップページのヘッダーからユーザー新規登録を行う
1. トップページの映画一覧から任意の作品をクリック後、「レビューを投稿する」からレビューの内容を入力し投稿する

### カレンダーに予定を追加
1. ログイン後、トップページのヘッダーからカレンダーページへ遷移する
1. 「予定を追加する」ボタンから予定の内容を入力し登録する

## アプリケーションを作成した背景
映画鑑賞が趣味のため、映画を観た後に感想を記録できるアプリケーションが欲しいと思ったことがきっかけで作成しました。
より便利に利用できるアプリケーションにしたいと思い、カレンダーページで予定を管理できるようにしました。

## 洗い出した要件
[要件定義シート](https://docs.google.com/spreadsheets/d/1ceh60npPB2oLmELzH1IP5NDbapq7ucSRU5mL6axfcvs/edit#gid=982722306) 

## 実装した機能についての画像やGIFおよびその説明

#### 映画詳細ページ
[![Image from Gyazo](https://i.gyazo.com/f3193cc9c2c578ca4f50dcd1698ef16e.jpg)](https://gyazo.com/f3193cc9c2c578ca4f50dcd1698ef16e)

映画詳細ページにアクセスすると、映画のタイトルやあらすじ、レビューの一覧などを見ることができます。
画面中央の「レビューを投稿する」ボタンをクリックするとレビュー投稿ページに遷移します。

#### レビュー投稿ページ
[![Image from Gyazo](https://i.gyazo.com/48c2b502af68c987de2e70158773f5b0.png)](https://gyazo.com/48c2b502af68c987de2e70158773f5b0)

レビュー投稿ページでは、映画に対する星評価(5段階)やレビューのタイトル、内容を入力することで投稿できます。

#### 管理者機能
[![Image from Gyazo](https://i.gyazo.com/725c7db5e2c905ad0c859fb67f488e16.png)](https://gyazo.com/725c7db5e2c905ad0c859fb67f488e16)

管理者としてログインすると、映画情報投稿ページに遷移するリンクがヘッダーに表示されます。
映画情報投稿ページにて映画の画像やタイトル、あらすじ、カテゴリーを入力すると投稿できます。

## データベース設計
[![Image from Gyazo](https://i.gyazo.com/28e8fbce4cd97d908823fe3667e354f8.png)](https://gyazo.com/28e8fbce4cd97d908823fe3667e354f8)

## 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/b54d8cee314a9771e6a8bd30fb41d3b1.png)](https://gyazo.com/b54d8cee314a9771e6a8bd30fb41d3b1)

## 開発環境
- Ruby
- Ruby on Rails
- MySQL
- Github
- Heroku
- Visual Studio Code