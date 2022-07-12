class ReviewsController < ApplicationController
  before_action :authenticate_user!
  
  def create
    @review = Review.new(review_params)
    @movie = Movie.find(params[:movie_id])
    @review.user_id = current_user.id
    if @review.save
      ReviewChannel.broadcast_to @movie, { title: @review, text: @review, rate: @review, user: @review.user }
      redirect_to movie_path(@movie.id)
    else
      render :new
    end
  end

  def new
    @review = Review.new
    @movie = Movie.find(params[:movie_id])
  end

  def edit
    @review = Review.find(params[:movie_id])
  end

  def update
    @review = Review.find(params[:movie_id])
    if @review.update(review_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    review = Review.find(params[:movie_id])
    review.destroy
    redirect_to root_path
  end

  private
  def review_params
    params.require(:review).permit(:title, :text, :rate).merge(user_id: current_user.id, movie_id: params[:movie_id])
  end
end
