class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def require_password
    unless session[:room_id]
      redirect_to "/session/new"
    end
  end
  
  def current_room
    @current_room ||= Room.find(session[:room_id])
  end
end
