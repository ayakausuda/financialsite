class Post < ApplicationRecord
    belongs_to :user
    has_many :comments, dependent: :destroy

    mount_uploader :image, ImageUploader

  #tweetsテーブルから中間テーブルに対する関連付け
  has_many :post_tag_relations, dependent: :destroy
  #tweetsテーブルから中間テーブルを介してTagsテーブルへの関連付け
  has_many :tags, through: :post_tag_relations, dependent: :destroy
end
