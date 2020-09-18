class EventsController < ApplicationController
  def new
    @event = User.find(session[:user_id]).events.build
  end

  def create
    @event = current_user.events.build(event_params)
    #@event.creator_id = 37
    if @event.save
      redirect_to events_path, notice: 'Event created successfully.'
    else
      #render :new, notice: "Failed to create event!"
      flash.now[:danger] = @event.errors.full_messages
      render :new
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
