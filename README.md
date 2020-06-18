# README

![](https://i.gyazo.com/32d5693cc93ca708eb68e4f8f440b6c0.png)

## Usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false,unique: true|
|password|string|null: false|
|avatar|string||
|birthyear|integer|null: false|
|birthmonth|integer|null: false|
|birthday|integer|null: false|
|family_name|string|null: false|
|personal_name|string|null: false|
|family_name_kana|string|null: false|
|personal_name_kana|string|null: false|
|tel|integer||
|post_family_name|string|null: false|
|post_personal_name|string|null: false|
|post_family_name_kana|string|null: false|
|post_personal_name_kana|string|null: false|

### Association
- has_one  :card
- has_many :products
- has_many :address


## Addressesテーブル
|Column|Type|Options|
|------|----|-------|
|postal_code|integer|null: false|
|prefecture|string|null: false|　　
|city|string|null: false|
|address|string|null: false|
|building|string||

### Association
- belongs_to  :user


## Cardsテーブル
|Column|Type|Options|
|------|----|-------|
|card_id|string|null: false|
|customer_id|t.string|null: false|
|user|references|foreign_key: true|

### Association
- belongs_to :user


## Productsテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|introduction|text|null: false|
|price|integer|null: false|
|from_area|string|null: false|
|delivery_leadtime|string|null: false|
|delivery_way|string|null: false|
|status|string|null: false|
|user|references|foreign_key: true|
|category|references|foreign_key: true|
|image|references|foreign_key: true|

### Association
- has_many   :images
- belongs_to :user
- belongs_to :category


##Categories
|Column|Type|Options|
|------|----|-------|
|text|string|null: false|
|ancestry|string|
|product|references|foreign_key: true|

### Association
- has_many :products
- has_ancestry


## Imagesテーブル
|Column|Type|Options|
|------|----|-------|
|image|string|null: false|
|product|references|foreign_key: true|

### Association
- belongs_to :product, optional:true, dependent: :destroy
