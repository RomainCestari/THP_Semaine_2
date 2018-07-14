require "twitter"
require "dotenv"
Dotenv.load
# quelques lignes qui enregistrent les clés d'APIs
client = Twitter::Streaming::Client.new do |config|
 config.consumer_key        = ENV["TWITTER_API_KEY"]
  config.consumer_secret     = ENV["TWITTER_API_SECRET"]
  config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
  config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
end

#Permet de trouver les mots "coffee" et "Tea" dans tous les twitts
topics = ["coffee", "tea"]
client.filter(track: topics.join(",")) do |object|
  puts object.text if object.is_a?(Twitter::Tweet)
end
