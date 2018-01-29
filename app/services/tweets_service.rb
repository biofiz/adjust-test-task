class TweetsService

  SEARCH_OPTIONS = {
    result_type: "recent",
    count: 5
  }

  def self.search_tweets(search)
    client.search(search, SEARCH_OPTIONS)
  end

  private

  def self.client
    @twitter_client ||= Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV['consumer_key']
      config.consumer_secret     = ENV['consumer_secret']
      config.access_token        = ENV['access_token']
      config.access_token_secret = ENV['access_token_secret']
    end
  end
end
