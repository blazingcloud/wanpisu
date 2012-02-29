class RoomsController < ApplicationController
  def show
    room = Room.find_by_id(params[:id])    
    if room && session[:room_id] == room.id
      render '/rooms/' + room.name
    else
      session[:room_id] = nil
      flash[:error] = "Please log in."
      redirect_to '/session/new'
    end
  end
end
