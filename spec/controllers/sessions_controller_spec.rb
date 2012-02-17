require 'spec_helper'

describe SessionsController do
  describe "GET 'new'" do
    it "should be successful" do
      get 'new'
      response.should be_success
    end
    it "should let a user enter a roomkey" 
  end
end
