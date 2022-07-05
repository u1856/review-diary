class Movie < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  belongs_to :category
  has_many :reviews, dependent: :destroy
  has_one_attached :image

  def avg_rate
    unless self.reviews.empty?
      reviews.average(:rate).round(1).to_f
    else
      0.0
    end
  end

  def review_rate_percentage
    unless self.reviews.empty?
      reviews.average(:rate).round(1).to_f*100/5
    else
      0.0
    end
  end


  #with_options if: :is_admin? do |admin|
    #admin.validates :movie, :summary, presence: true
    #admin.validates :category_id, numericality: { other_than: 1 , message: "can't be blank" } 
  #end

end
