class UsersController < ApplicationController

  def show
    @name = current_user.name
    @reviews = current_user.reviews
  end

end
