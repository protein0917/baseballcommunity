# テーブル設計

## users テーブル

| Column              | Type       | Options                   |
| --------            | ------     | -----------               |
| email               | string     | null: false, unique: true |
| encrypted_password  | string     | null: false               |
| name                | string     | null: false               |

### Association

- has_one :profile
- has_many :comments

## profiles テーブル

| Column           | Type       | Options     |
| --------         | ------     | ----------- |
| position_id      | integer    | null: false |
| dexterity_id     | integer    | null: false |
| team             | string     | null: false |
| age              | integer    | null: false |

### Association

- belongs_to :user
- has_many :comments

## comments テーブル

| Column    | Type       | Options     |
| --------  | ------     | ----------- |
| user      | references | null: false |
| profile   | references | null: false |
| text      | text       | null: false |

### Association

- belongs_to :user
- belongs_to :profile