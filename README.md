# テーブル設計

##　usersテーブル

| Column     | Type   | Options     |
| ---------- | ------ | ----------- |
| name       | string | null: false |
| email      | string | null: false |
| password   | string | null: false |
| profile    | text   | null: false |
| occupation | text   | null: false |
| position   | text   | null: false |

### Association
- has_may :prototypes
- has_may :comments

##　prototypesテーブル

| Column     | Type       | Options                       |
| ---------- | ---------- | ----------------------------- |
| title      | string     | null: false                   |
| catch_copy | text       | null: false                   |
| concept    | text       | null: false                   |
| user       | references | null: false foreign_key: true |

### Association
- belongs :users
- has_may :comments

##　commentsテーブル

| Column    | Type       | Options                       |
| --------- | ---------- | ----------------------------- |
| title     | string     | null: false                   |
| user      | references | null: false foreign_key: true |
| prototype | references | null: false foreign_key: true |

### Association
- belongs :users
- belongs :prototypes
