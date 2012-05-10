require 'spec_helper'

describe Room do
  describe '#contacts' do
    use_vcr_cassette

    describe "when we have a room that has an associated spreadsheet" do
      before do
        @room = Factory(:room)
      end

      describe 'and the spreadsheet contains a user named "Tyra"' do

        let :tyra do
          @room.contacts.detect { |contact| contact[:name] == 'Tyra' }
        end 

        it "should contain tyra" do
          tyra.should_not be_nil
        end

        it "should include tyra's phone number" do
          tyra[:phone].should == '12345'
        end
      end
    end

  end
end
