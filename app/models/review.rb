class Review < ApplicationRecord
  belongs_to :problem
  belongs_to :user

  validates :review_content, presence: true
end
