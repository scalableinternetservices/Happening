class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :destroy]
  respond_to :html

  def index
    @events = Event.all
    respond_with(@events)
  end

  def results
    @events = Event.all
    respond_with(@events)
  end

  def show
    respond_with(@event)
  end

  def new
    @event = Event.new
    respond_with(@event)
  end

  def edit
  end

  def create
    @event = Event.new(event_params)
    @event.user_id = current_user.id
    @event.save
    respond_with(@event)
  end

  def update
    @event.update(event_params)
    respond_with(@event)
  end

  def destroy
    @event.destroy
    respond_with(@event)
  end

  private
    def correct_user
      @event = current_user.events.find_by(id: params[:id])
      if @event.nil?
        flash[:alert] = "You are not logged in as the correct user."
        redirect_to root_url
      end
    end

    def set_event
      @event = Event.find(params[:id])
    end

    def event_params
      params.require(:event).permit(:name, :location, :timestart, :timeend, :description, :host)
    end
end
