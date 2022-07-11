class Review < ApplicationRecord
  belongs_to :movie
  belongs_to :user
  has_many :favorites, dependent: :destroy
  has_many :favorited_users, through: :favorites, source: :user

  validates :rate, presence: true
  
end
