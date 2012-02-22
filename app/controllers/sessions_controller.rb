class SessionsController < ApplicationController
  def new
  end
  
  def create
    if room = Room.find_by_password(params[:password])
      session[:room_id] = room.id
      redirect_to room_path(room)
    else
      flash[:error] = "Sorry, no room for that key!"
      render :new
    end
  end
end
