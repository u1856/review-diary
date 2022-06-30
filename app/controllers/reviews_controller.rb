class ReviewsController < ApplicationController
  def create
    Review.create(review_params)
    redirect_to "/movies/#{review.movie.id}"
  end

  private
  def review_params
    params.require(:review).permit(:title, :text, :rate).merge(user_id: current_user.id, movie_id: params[:movie_id])
  end
end
