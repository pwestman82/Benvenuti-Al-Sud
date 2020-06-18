class Product < ApplicationRecord
  has_many :items

  validates :name, length: { maximum: 40 }
  validates :description, length: { minimum: 10, maximum: 160 }
  validates :category, inclusion: { in: %w(pizza pasta antipasto), message: "%{value} is not a valid food category" }
end
