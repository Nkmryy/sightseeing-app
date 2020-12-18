# テーブル設計

## usersテーブル
| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| email              | string | null: false |
| password           | string | null: false |
| nickname           | string | null: false |
### Association
- has_many :places
- has_many :trips
- has_many :comments


## placesテーブル
| Column     | Type       | Options           |
| ---------  | ---------- | ----------------- |
| country_id | integer    | null: false       |
| state_id   | integer    | null: false       |
### Association
has_many :users
has_many :trips


## tripsテーブル
| Column        | Type       | Options           |   
| ------------- | ---------- | ----------------- |
| attraction_id | integer    | null: false       |アトラクション
| evaluation_id | integer    | null: false       |評価
| title         | string     | null: false       |タイトル
| impressions   | text       | null:false        |感想
| user          | references | foreign_key: true |
| place         | references | foreign_key: true |
### Association
- belongs_to :user
- belongs_to :place
- has_many :comments


## commentsテーブル
| Column  | Type       | Options           |
| ------- | ---------- | ----------------- |
| comment | text       | null: false       |
| user    | references | foreign_key: true |
| trip    | references | foreign_key: true |
### Association
- belongs_to :user
- belongs_to :trip


## trips_placesテーブル
| Column   | Type        | Options           |
| -------- | ----------- | ----------------- |
| trip     | references  | foreign_key: true |
| place    | references  | foreign_key: true |
### Association
- belongs_to :place
- belongs_to :trip
