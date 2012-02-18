require 'spec_helper'

describe SessionsController do
  render_views
  
  describe "GET 'new'" do
    it "should be successful" do
      get 'new'
      response.should be_success
    end
  end
  
  describe "POST 'create'" do

    describe "with invalid roomkey" do
      before(:each) do
        @attributes = { :password => "invalid"}
        room = mock_model Room, :id => 1, :name => "Badgers"
      end
      
      it "should re-render the new page" do
        post :create, :session => @attributes
        response.should render_template('new')
      end
      
      it "should have a flash message" do
        post :create, :session => @attributes
        flash[:error].should =~ /no room/i
      end
    end
    
    describe "with valid roomkey" do
      before(:each) do
        @attributes = { :password => "valid"}
        @room = Factory(:room)
      end
      
      it "should assign the right room id to session[:room_id]" do
        post :create, :password => @attributes[:password]
        session[:room_id].should == @room.id
      end
      
      it "should redirect to the room show page" do
        post :create, :password => @attributes[:password]
        response.should redirect_to(room_path(@room))
      end
      
    end
  end

end
