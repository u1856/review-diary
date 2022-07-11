class LikesController < ApplicationController
  before_action :authenticate_user!

  def create
    @movie = Movie.find(params[:movie_id])
    @like = @movie.likes.new(user_id: current_user.id)
    @like.save
  end

  def destroy
    @movie = Movie.find(params[:movie_id])
    @like = @movie.likes.find_by(user_id: current_user.id)
    if @like.present?
      @like.destroy
    else
      redirect_to request.referer
    end
  end
end
