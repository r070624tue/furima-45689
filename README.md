# テーブル設計

## users テーブル

| Column             | Type    | Options     |
| ------------------ | ------- | ----------- |
| email              | string  | null: false, unique: true |
| encrypted_password | string  | null: false |
| nickname           | string  | null: false |
| last_name          | string  | null: false |
| first_name         | string  | null: false |
| last_name_kana     | string  | null: false |
| first_name_kana    | string  | null: false |
| birth_date         | date    | null: false |

### Association

- has_many :items
- has_many :orders

## items テーブル

| Column                 | Type       | Options                        |
| ---------------------- | ---------- | ------------------------------ |
| name                   | string     | null: false                    |
| info                   | text       | null: false                    |
| category_id            | integer    | null: false (ActiveHash使用)   |
| sales_status_id        | integer    | null: false (ActiveHash使用)   |
| shipping_fee_status_id | integer    | null: false (ActiveHash使用)   |
| prefecture_id          | integer    | null: false (ActiveHash使用)   |
| scheduled_delivery_id  | integer    | null: false (ActiveHash使用)   |
| price                  | integer    | null: false                    |
| user                   | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_one :order

## orders テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| user          | references | null: false, foreign_key: true |
| item          | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :item
- has_one :address

## addresses テーブル

| Column        | Type       | Options     |
| ------------- | ---------- | ----------- |
| postal_code   | string     | null: false |
| prefecture_id | integer    | null: false (ActiveHash使用) |
| city          | string     | null: false |
| addresses     | string     | null: false |
| building      | string     |
| phone_number  | string     | null: false |

### Association

- belongs_to :order