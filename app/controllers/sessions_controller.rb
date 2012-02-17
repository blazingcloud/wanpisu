class SessionsController < ApplicationController
  def new
  end
  
  def create
    puts session
    room = Room.find_by_password(params[:password])
    if room
      session[:room_id] = room.id
      redirect_to room
    else
      flash[:error] = "Sorry, no room for that key!"
      render :new
    end
  end
end
