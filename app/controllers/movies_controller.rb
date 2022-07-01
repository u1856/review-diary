class MoviesController < ApplicationController
  before_action :set_movie, only: [:show]

  def index
    @movies = Movie.order("created_at DESC")
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
