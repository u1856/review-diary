class FavoritesController < ApplicationController
  
  def create
    @review_favorite = Favorite.new(user_id: current_user.id, review_id: params[:review_id])
    @review_favorite.save
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @review_favorite = Favorite.find_by(user_id: current_user.id, review_id: params[:review_id])
    @review_favorite.destroy
    redirect_back(fallback_location: root_path)
  end

end
