class Movie < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  belongs_to :category
  has_one_attached :image


  #with_options if: :is_admin? do |admin|
    #admin.validates :movie, :summary, presence: true
    #admin.validates :category_id, numericality: { other_than: 1 , message: "can't be blank" } 
  #end
  
end
