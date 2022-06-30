class Admin::ReviewsController < ApplicationController
  before_action :if_not_admin

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    if @review.valid?
      @review.save
      redirect_to root_path
    else
      render 'new'
    end
  end



  private
  
  def if_not_admin
    redirect_to root_path unless current_user.admin?
  end

  def post_params
    params.require(:review).permit(:movie, :summary, :category_id).merge(user_id: current_user.id)
  end

end
