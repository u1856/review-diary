class UsersController < ApplicationController

  def show
    user = User.find(params[:id])
    @name = user.name
    @reviews = user.reviews.includes(:movie)
  end
  

end
