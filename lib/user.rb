require 'twits'

class User
  attr_accessor :twitter_username
  
  def last_five_tweets
     Twits.fetch_tweets(@twitter_username)
  end

end