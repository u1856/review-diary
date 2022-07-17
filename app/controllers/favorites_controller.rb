class FavoritesController < ApplicationController
  def create
    @review = Review.find(params[:review_id])
    favorite = @review.favorites.new(user_id: current_user.id)
    favorite.save
    #flash[:success] = "favorited post"
    #redirect_to request.referer
  end

  def destroy
    @review = Review.find(params[:review_id])
    favorite = current_user.favorites.find_by(review_id: @review.id)
    favorite.destroy
    #redirect_to request.referer
  end

end
