class SessionsController < ApplicationController
  def new
  end
  
  def create
    puts "----------------------------> create"
    puts params.inspect
    room = Room.find_by_password(params[:password])
    puts room.inspect
    if room
      session[:room_id] = room.id
      redirect_to room_path(room)
    else
      flash[:error] = "Sorry, no room for that key!"
      render :new
    end
  end
end
