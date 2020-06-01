# アプリケーション名
スキマタイム

# 概要  
 前職で「あったらいいな」と思ったものを形にしたいと思いました。
 スキマ時間を利用し、販売の仕事ができるアプリです。
 ユーザーが空いている日、時間を投稿し、それを見たお店が仕事を依頼するサービスです。
 
# 概要
 ・データベース設計  	
 ・ユーザー新規登録・ログイン機能・マイページ  
 ・メッセージ投稿  
 ・メッセージ一覧表示  
 ・メッセージ削除  
 ・検索機能  
 ・コメント機能（非同期通信）  
    
# 開発環境  
 ・Ruby  
 ・Ruby on Rails  
 ・MySQL  
 ・Github  

# DB設計
## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|title|string|null: false|
|city|string|null: false|
|date|date|null: false|
|time|time|null: false|
|text|string|null: false|
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :users  

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|firstname|string|null: false|
|lastname|string|null: false|
|age|string|null: false|
|mail|string|null: false|
|password|string|null: false|
### Association
- has_many :images  
- has_many :messages  

## imagesテーブル
|Column|Type|Options|
|------|----|-------|
|images|string|null: false|
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user


