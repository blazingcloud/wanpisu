class RoomsController < ApplicationController
  before_filter :require_password
  
  def show
    # one way to do it: set variables for conference numbers and directory listings here
    # and pass it
    
    # other way to do it: map an object in the database to your filesystem
    # like storing the path of the file in your database
    # equally, if not more complex than making dynamic data
    
    
  end
end
