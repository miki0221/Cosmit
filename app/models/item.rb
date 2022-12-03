class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :category_option
  has_one_attached :image

  with_options presence: true do
    validates :image, blob: { content_type: :image }
    validates :brand, :title, :content, :start_date
    validates :category_id, :category_option_id, numericality: { other_than: 1, message: "can't be blank" }
  end
end
