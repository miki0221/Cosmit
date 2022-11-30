# Usersテーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |

### Association
- has_many :favorites
- has_many :items, through: :favorites

***
# Itemsテーブル

| Column             | Type    | Options     |
| ------------------ | ------- | ----------- |
| brand              | string  | null: false |
| title              | string  | null: false |
| content            | text    | null: false |
| category_id        | integer | null: false |
| category_option_id | integer | null: false |
| start_date         | date    | null: false |

### Association
- has_many :favorites
- has_many :users, through: :favorites

***
# Favoritesテーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| item   | references | null: false, foreign_key: true |

### Association
belongs_to :user
belongs_to :item