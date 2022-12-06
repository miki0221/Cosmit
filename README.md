# アプリケーション名
Cosmit

# アプリケーション概要
所有するコスメを登録し、所有するコスメの共有・使用期限を管理することができるアプリ。

Cosmetic × Merit × Limit = Cosmit

# URL
https://cosmit.onrender.com

# テスト用アカウント
- Basic認証ID：admin
- Basic認証Pass：2222
- Email：test1@test.com
- Password：test111

# 利用方法
1. トップページ（一覧ページ）のヘッダーからユーザー新規登録を行う
2. コスメ登録ボタンからコスメの内容（画像・カテゴリー・ブランド名・コスメ名・フリーワード（特徴・使用感など）使用開始日））を入力し登録する
3. トップページから詳細ページに移動し、自分が登録したコスメであれば編集・削除ができる
4. トップページから詳細ページに移動し、他者が登録したコスメであればお気に入り登録ができる

# アプリケーションを作成した背景
- コスメが増えるにつれて所有するコスメの把握ができなくなってきた。
- コロナ禍になってからコスメの使用頻度が下がっていることもあり、
使用期限が切れてしまうことが増えてきた。
- 他のユーザーがどういったコスメを使用しているか気になる。

以上のことからコスメ共有・管理アプリを開発することにした。

# 洗い出した要件
修正中

# 実装した機能についての画像やGIFおよびその説明
## ユーザー登録
[![Image from Gyazo](https://i.gyazo.com/fca338cbd61b8810cad56e676997cf9c.gif)](https://gyazo.com/fca338cbd61b8810cad56e676997cf9c)

## ユーザーログイン
[![Image from Gyazo](https://i.gyazo.com/fca338cbd61b8810cad56e676997cf9c.gif)](https://gyazo.com/fca338cbd61b8810cad56e676997cf9c)

# 実装予定の機能
現在は登録機能を実装中
今後はカテゴリー別の一覧表示、編集・削除・お気に入り機能を実装予定

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/f632ab3808a2e7251b7d66180b029878.png)](https://gyazo.com/f632ab3808a2e7251b7d66180b029878)

# 画像遷移図
[![Image from Gyazo](https://i.gyazo.com/b6d9bda5e23285ede3307fde32259bb9.png)](https://gyazo.com/b6d9bda5e23285ede3307fde32259bb9)

# 工夫したポイント
大分類のカテゴリーを選択したら、
選択したカテゴリーによって詳細カテゴリーの表示内容が変わること。(現在実装中)