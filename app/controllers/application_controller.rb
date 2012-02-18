class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def require_password
    unless session[:room_id] == current_room_id
      redirect_to "/session/new"
    end
  end
  
  def current_room_id
    @current_room_id ||= params[:id]
  end
end
