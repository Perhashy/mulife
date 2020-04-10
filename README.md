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
|encrypted_password|string |null: false, uniqe: true|
|part           |string ||
|message        |text   ||
|image          |string ||

### Association
has_many :contents
has_many :comments, dependent: :destroy
has_many :likes, dependent: :destroy
has_many :like_contents, through: :likes


## contentテーブル
|Column         |Type   |Options|
|---------------|-------|-------|
|title          |string |null: false|
|music          |string |null: false|
|message        |string ||
|user_id        |integer|null: false, foreign_key: true|

### Association
belongs_to :user
has_many   :comments, dependent: :destroy
has_many   :likes, dependent: :destroy
has_many   :liking_users, through: :likes


## commentテーブル
|Column         |Type   |Options|
|---------------|-------|-------|
|text           |text   |null: false|
|user_id        |integer|null: false, foreign_key: true|
|content_id     |integer|null: false, foreign_key: true|

### Association
belongs_to :user
belongs_to :content


## likeテーブル
|Column         |Type   |Options|
|---------------|-------|-------|
|user_id        |integer|null: false, foreign_key: true|
|content_id     |integer|null: false, foreign_key: true|

### Association
belongs_to :content
belongs_to :user
