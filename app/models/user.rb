class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :movies, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :favorites#, dependent: :destroy
  #has_many :favorite_reviews, through: :favorites, source: :review
  has_many :likes, dependent: :destroy
  has_many :events, dependent: :destroy

  #def favorited_by?(review_id)
   # favorites.where(review_id: review_id).exists?
  #end

end
