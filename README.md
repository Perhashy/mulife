# MuLife
『あなたの音楽ライフを豊に！』  
このアプリは音楽家（主にバンド）のための交流サイトです。  
いつでもどこでも誰とでも！遠い仲間と音楽活動ができるように  
バンド探し,メンバー探しの手助けに  
というコンセプトのもと制作しました。  
# デモ
自分で作った音楽、歌、演奏などの音源をアップロードできます。  
投稿に対してのコメント、いいね機能を用意しています。  
今後、外部URLの投稿、楽器別検索機能、フォロー機能の実装を予定しています。  
そして最終に、動画投稿機能実装を目指しています！

# 開発環境
* Ruby on Rails
* haml
* scss
＜GEM＞
* devise
* carrierwave
* audiojs-rails

# DB設計
## userテーブル
|Column         |Type   |Options|
|---------------|-------|-------|
|nickname       |string |null: false|
|email          |string |null: false, uniqe: true|
|encrypted_password|string |null: false, uniqe: true, min: 7|
|part           |string ||
|message        |text   ||
|image          |string ||

### Association

## contentテーブル
|title          |string ||
|music          |string ||
|message        |string ||
|user_id        |integer||

### Association

## commentテーブル
|text           |text||
|user_id        |integer||
|content_id     |integer||

### Association

## likeテーブル
|user_id        |integer||
|content_id     |integer||

### Association