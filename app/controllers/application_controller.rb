class ApplicationController < ActionController::Base
  protect_from_forgery
  
#  def require_room_id
#    unless session[:room_id].to_s == params[:id]
#      flash[:error] = "Please log in."
#      redirect_to '/session/new'
#    end
#  end
end
