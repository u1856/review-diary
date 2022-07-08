class Review < ApplicationRecord
  belongs_to :movie
  belongs_to :user
  has_many :favorites, dependent: :destroy

  validates :rate, presence: true
  
end
