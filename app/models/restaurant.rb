class Restaurant < ApplicationRecord
  validates :name, :address, :phone_number, :category, presence: true
  has_many :reviews
end
