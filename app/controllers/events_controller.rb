class EventsController < ApplicationController

  def index
    @events = Event.all.order('created_at DESC')
  end

  def new
    redirect_to :root unless @current_user
    @event = Event.new
  end

  def show
    @event = Event.find(params[:id])
    end

  def create
    redirect_to :root unless @current_user
    # @event = Event.new(event_params)
    # @event.save
    # redirect_to @event
    @user = @current_user
    @event = @user.events.create(event_params)
    redirect_to @event
  end

  def edit
    redirect_to :root unless @current_user
    @event = Event.find(params[:id])
  end

  def update
    redirect_to :root unless @current_user
    @event = Event.find(params[:id])
    if @event.update(event_params)
      redirect_to @event
    end
  end

  def destroy
    redirect_to :root unless @current_user
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_path #update if you add user model???
  end

  private
    def event_params
      params.require(:event).permit(:name, :address, :city, :state, :zip, :date, :time, :description, :img_url)
    end
end
