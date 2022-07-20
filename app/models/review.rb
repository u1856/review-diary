class Review < ApplicationRecord
  belongs_to :movie, optional: true
  belongs_to :user
  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :favorites, source: :user

  validates :rate, presence: true

end
