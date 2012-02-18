class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def require_password
    puts session[:room_id].class
    puts params[:id].class
    puts session[:room_id] == params[:id]
    unless session[:room_id].to_s == params[:id]
      flash[:error] = "Please log in."
      redirect_to "/session/new"
    end
  end
  
  def current_room_id
    @current_room_id ||= params[:id]
  end
end
