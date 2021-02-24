class Review < ApplicationRecord
  belongs_to :list
  validates_presence_of :comment, :rating
  RATING = [0, 1, 2, 3, 4, 5]
  validates :rating, inclusion: { in: RATING }
end
