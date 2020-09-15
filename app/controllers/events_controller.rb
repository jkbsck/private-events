class EventsController < ApplicationController
  def new
    @event = User.find(session[:user_id]).events.build
  end

  def create
    @event = User.find(session[:user_id]).events.build(event_params)
    if @event.save
      redirect_to events_show_path(@event), notice: 'Event created successfully.'
    else
      redirect_to events_new_path, notice: "Failed to create event!"
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def index
    @events = Event.all
  end

  private
    
    def event_params
      params.require(:event).permit(:description, :date)
    end
end
