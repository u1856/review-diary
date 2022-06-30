class ReviewsController < ApplicationController
  def index
    @reviews = Review.order("created_at DESC")
   # @reviews = Review.includes(:user).order("created_at DESC") # 最新投稿から順に表示する＋ユーザーが投稿したレビュー＋変数名を単数系に変更
  end
end
