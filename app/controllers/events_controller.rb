class EventsController < ApplicationController
  before_action :set_beginning_of_week
  
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    Event.create(event_parameter)
    redirect_to root_path
  end

  def show

  end

  private

  def event_parameter
    params.require(:event).permit(:title, :content, :start_time).merge(user_id: current_user.id)
  end
  
  def set_beginning_of_week
    Date.beginning_of_week = :sunday
  end

end
