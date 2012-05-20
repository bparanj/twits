require 'twitter'

class Twits
  # The following method must hit the Twitter sandbox in the integration test.
  # It is now in Twits (TwitterClient). Ideally nested within a module. This API is a thin
  # wrapper around the actual Twitter API. It insulates the changes in Twitter API from
  # impacting the application.
  def self.fetch_tweets(username)
    Twitter::Search.new.per_page(5).from(username).map do |tweet|
      tweet[:text]
    end.to_a
  end
end