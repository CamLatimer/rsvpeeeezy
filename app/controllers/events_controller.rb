class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]


  # if you aren't using index, I would remove it:
  
    # def index
  #   @events = Event.all.order('created_at DESC')
  # end

  def new
    # nice job here redirecting!
    redirect_to :root unless @current_user
    @event = Event.new
  end

  def show
    @event = Event.find(params[:id])
  end

  def create
    redirect_to :root unless @current_user
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
    redirect_to user_path(@current_user)
  end

  private
  def event_params
    params.require(:event).permit(:name, :address, :city, :state, :zip, :date, :start_time, :end_time, :description, :img_url)
  end

  # Since you use  @event = Event.find(params[:id]) several times, you could actually create a private method then call it before each method here is run
  # it would look like the following:
  def set_event
    @event = Event.find(params[:id])
  end


end
