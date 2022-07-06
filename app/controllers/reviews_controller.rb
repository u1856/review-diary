class ReviewsController < ApplicationController
  def index
   # @reviews = Review.includes(:user).order("created_at DESC") # 最新投稿から順に表示する
  end
end
