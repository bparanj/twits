require File.expand_path(File.dirname(__FILE__) + '/spec_helper')
require 'user'
require 'fake_twitter_client'

describe "Twitter User" do
  context "with a username" do
    before(:each) do
      @user = User.new
      @user.twitter_username = 'logosity'
    end 

    # The following is not a good idea due to the headache of keeping the fake 
    # object in synch with Twitter API changes
    it "should provide the last five tweets from twitter - showing dependency injection" do
      twits = Twits.new(FakeTwitterClient.new)
      twits.fetch_five(@user.twitter_username).should == %w{tweet1 tweet2 tweet3 tweet4 tweet5} 
    end
  end
end

