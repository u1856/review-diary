class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @movie = Movie.find(params[:movie_id])
    if @review.save
      ReviewChannel.broadcast_to @movie, { title: @review, text: @review, rate: @review, user: @review.user }
    end
  end

  private
  def review_params
    params.require(:review).permit(:title, :text, :rate).merge(user_id: current_user.id, movie_id: params[:movie_id])
  end
end
