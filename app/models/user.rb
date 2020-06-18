class User < ApplicationRecord
  # Others available :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  has_many :orders

  validates :first_name, length: { minimum: 3 , maximum: 40 }
end
