require File.expand_path(File.dirname(__FILE__) + '/spec_helper')
require 'user'

describe "Twitter User" do
  context "with a username" do
    before(:each) do
      @user = User.new
      @user.twitter_username = 'logosity'
    end
    # The test now depends on our API fetch_tweets in our Twits Twitter client class
    # This is stable than directly depending on a third party API.
    it "provides the last five tweets from twitter" do
      tweets = %w{tweet1 tweet2 tweet3 tweet4 tweet5} 
      Twits.stub(:fetch_tweets).and_return(tweets)
      @user.last_five_tweets.should == %w{tweet1 tweet2 tweet3 tweet4 tweet5} 
    end
    
  end
end

