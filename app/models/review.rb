class Review < ApplicationRecord
  belongs_to :movie
  belongs_to :user

  validates :rate, presence: true
  
  
end
