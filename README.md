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


## suggestions テーブル
| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| name       | string     | null: false                    |
| product    | string     | null: false                    |
| count      | integer    | null: false                    |
| user       | references | null: false, foreign_key: true |
### Association
- belongs_to :user


## contracts テーブル
| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| name       | string     | null: false                    |
| product    | string     | null: false                    |
| count      | integer    | null: false                    |
| user       | references | null: false, foreign_key: true |
### Association
- belongs_to :user