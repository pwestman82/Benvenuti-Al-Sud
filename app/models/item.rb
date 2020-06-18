class Item < ApplicationRecord
  belongs_to :order
  belongs_to :product

  validates :quantity, length: { maximum: 10 }
end
