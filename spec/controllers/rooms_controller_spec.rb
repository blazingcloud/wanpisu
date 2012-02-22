require 'spec_helper'

describe RoomsController do
    # one way to do it: set variables for conference numbers and directory listings here
    # and pass it
    
    # other way to do it: map an object in the database to your filesystem
    # like storing the path of the file in your database
    # equally, if not more complex than making dynamic data
    # we want this one
  
  describe "show" do
    # if the session doesn't have a room id,
    # redirect to sessions/new
    # and ask you to log in
    describe "without a room id" do
      before(:each) do
        @room = Factory(:room)
      end
      it "should show the login prompt" do
        get :show, :id => @room.id
        response.should redirect_to('/session/new')
      end
      it "should show a message asking you to log in" do
        get :show, :id => @room.id
        flash[:error].should =~ /Please log in/i
      end
    end
    
    # if the session has the wrong room id,
    # redirect to sessions/new
    # and ask you to log in
    # and remove the room_id from the session
    describe "with the wrong room id" do
      before(:each) do
        @room = Factory(:room)
        session[:room_id] = @room.id + 1
      end
      
      it "should show the login prompt" do
        get :show, :id => @room.id
        response.should redirect_to('/session/new')
      end
      
      it "should show a message asking you to log in" do
        get :show, :id => @room.id
        flash[:error].should =~ /Please log in/i
      end
      
      it "should remove room_id from the current session" do
        get :show, :id => @room.id
        session[:room_id].should == nil
      end
    end
    
    # if the session has the right room id,
    # show the right room
    describe "with the right room id" do
      before(:each) do
        @room = Factory(:room, :name => 'Badgers')
        session[:room_id] = @room.id
      end

      it "should show the right room" do
        get :show, :id => @room.id
        response.should render_template('/rooms/' + @room.name)
      end
    end
  end
end
