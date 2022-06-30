class Admin::MoviesController < ApplicationController
  before_action :if_not_admin

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to root_path
    else
      render :new
    end
  end



  private
  
  def if_not_admin
    redirect_to root_path unless current_user.admin?
  end

  def movie_params
    params.require(:movie).permit(:title, :summary, :category_id, :image).merge(user_id: current_user.id)
  end

end
