require 'twitter'

class User
  attr_accessor :twitter_username
  
  def last_five_tweets
    return Twitter::Search.new.per_page(5).from(@twitter_username).map do |tweet|
      tweet[:text]
    end.to_a
  end
end