class MoviesController < ApplicationController
  before_action :set_movie, only: [:show]

  def index
    @movies = Movie.order("created_at DESC")
    @q = Movie.ransack(params[:q])
    @movies = @q.result
  end

  def show
    @review = Review.new
    @reviews = @movie.reviews.includes(:user)
    @reviews = @movie.reviews
  end

  private 
  
  def set_movie
    @movie = Movie.find(params[:id])
  end

end
