class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :category_option
  has_one_attached :image
  belongs_to :user
  # has_many :favorites お気に入り機能実装時に変更予定
  # has_many :users, through: :favorites お気に入り機能実装時に変更予定

  with_options presence: true do
    validates :image, blob: { content_type: :image }
    validates :brand, :title, :start_date
    validates :category_id, :category_option_id, numericality: { other_than: 1, message: "can't be blank" }
  end
end
