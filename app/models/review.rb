class Review < ApplicationRecord
  belongs_to :movie, optional: true
  belongs_to :user
  has_many :favorites, dependent: :destroy
  has_many :favorited_users, through: :favorites, source: :user

  validates :rate, presence: true

  def favorited?(user)
    favorites.where(user_id: user).exists?
  end
  
end
