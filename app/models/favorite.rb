class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :review
  belongs_to :movie

  validates_uniqueness_of :review_id, scope: :user_id
end
