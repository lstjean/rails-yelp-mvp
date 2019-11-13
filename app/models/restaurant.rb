class Restaurant < ApplicationRecord
  CATEGORIES = ['chinese', 'italian', 'japanese', 'french', 'belgian']
  has_many :reviews, dependent: :destroy

  validate :name, presence: true
  validate :address, presence: true
  validate :category, inclusion: { in: CATEGORIES }
end
