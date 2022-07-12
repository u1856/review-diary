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

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.update(movie_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    movie = Movie.find(params[:id])
    movie.destroy
    redirect_to root_path
  end

  private
  
  def if_not_admin
    redirect_to root_path unless current_user.admin?
  end

  def movie_params
    params.require(:movie).permit(:title, :summary, :category_id, :image).merge(user_id: current_user.id)
  end

end
