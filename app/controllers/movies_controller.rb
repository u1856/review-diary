class MoviesController < ApplicationController
  before_action :set_movie, only: [:show]

  def index
    @movies = Movie.order("created_at DESC")
   # @reviews = Review.includes(:user).order("created_at DESC") # 最新投稿から順に表示する＋ユーザーが投稿したレビュー＋変数名を単数系に変更
  end

  def show
    @review = Review.new
    @reviews = @movie.reviews.includes(:user)
  end

  private 
  
  def set_movie
    @movie = Movie.find(params[:id])
  end

end
