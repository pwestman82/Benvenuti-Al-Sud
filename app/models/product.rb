class Product < ApplicationRecord
  has_many :items

  validates :name, length: { maximum: 20 }
  validates :description, length: { minimum: 10, maximum: 120 }
end
