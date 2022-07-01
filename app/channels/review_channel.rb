class ReviewChannel < ApplicationCable::Channel
  def subscribed
    @review = Revire.find(params[:movie_id]) 
    stream_for @movie 
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
