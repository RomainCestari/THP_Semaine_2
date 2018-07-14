
require "twitter"
require "dotenv"
Dotenv.load

Client = Twitter::Streaming::Client.new config
Client = Twitter::REST::Client.new config
config.consumer_key        = ENV["TWITTER_API_KEY"]
config.consumer_secret     = ENV["TWITTER_API_SECRET"]
config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
end

    journaliste = ["OtokoBeatbox", "@ThomasIatrou", "@RomainCestari"]

	Client.filter(:track => journaliste.join (','), result_type:"recent").take(1).each do |tweet|
			if tweet.is_a?(Twitter::Tweet)
			  rClient.favorite(tweet)
			end
  end
