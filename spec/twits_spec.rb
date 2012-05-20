require File.expand_path(File.dirname(__FILE__) + '/spec_helper')
require 'user'

describe "Twitter User" do
  context "with a username" do
    before(:each) do
      @user = User.new
      @user.twitter_username = 'logosity'
    end
    
    it "provides the last five tweets from twitter" do
      tweets = ["race day! http://t.co/nHVyd7s3 #fb",
              "backed \"Roominate: Make It Yours!\" [toy to inspire next gen of female tech innovators] on @Kickstarter: http://t.co/koMadie2 #fb",
              "just drove the route for the 5K I'm running in tomorrow: Serious (for IL) hills, ouch, gonne be tough: http://t.co/nHVyd7s3 #fb",
              "RT @dgroo: Son is declaring that the Honey Badger is his second favorite animal. Must resist urge to tell him 'Honey Badger don't give a shit.'",
              "RT @Zen_Moments: If you want to sail your ship in a different direction, you must turn one degree at a time. ~ Brian Tracy"]
      
      @user.last_five_tweets.should == tweets 
    end
    
  end
end

