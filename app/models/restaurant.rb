class Restaurant < ApplicationRecord
  CATEGORIES = %w[chinese italian japanese french belgian]
  validates :name, :address, :phone_number, :category, presence: true
  has_many :reviews, dependent: :destroy
  validates :category, inclusion: { in: CATEGORIES, allow_nil: false }
end
