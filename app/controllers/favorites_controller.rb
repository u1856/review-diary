class FavoritesController < ApplicationController
  
  def create
    @review_favorite = Favorite.new(user_id: current_user.id, review_id: params[:review_id])
    @review_favorite.save
  end

  def destroy
    @review_favorite = Favorite.find_by(user_id: current_user.id, review_id: params[:review_id])
    @review_favorite.destroy
  end

end
