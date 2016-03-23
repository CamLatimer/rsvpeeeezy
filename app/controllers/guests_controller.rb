class GuestsController < ApplicationController


  def create
    @event = Event.find(params[:event_id])
    @guest = @event.guests.create(guest_params)
    redirect_to event_path(@event)
  end

  private
  def guest_params
    params.require(:guest).permit(:name, :message)
  end

end
