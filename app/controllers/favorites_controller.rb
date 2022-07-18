class FavoritesController < ApplicationController
  def create
    favorite = Favorite.new(favorite_params)
    favorite.save
    @review = Review.find(params[:review_id])
  end

  def destroy
    if favorite = Favorite.find_by(favorite_params)
      favorite.destroy
    end
      @review = Review.find(params[:review_id])
  end

  private
  def favorite_params
    
    { review_id: params[:review_id], user_id: current_user.id }
  end

end
