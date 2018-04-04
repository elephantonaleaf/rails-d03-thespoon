class Review < ApplicationRecord
  belongs_to :restaurant

  validates :star, inclusion: { in: [1, 2, 3, 4, 5] }
  validates :content, length: { minimum: 5 }, presence: true
end
