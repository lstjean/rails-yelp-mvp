class Review < ApplicationRecord
  belongs_to :restaurant

  validate :restaurant_id, presence: true
  validate :content, presence: true
  validate :rating, numericality: { less_than_or_equal_to: 5, greater_than_or_equal_to: 0 }
end
