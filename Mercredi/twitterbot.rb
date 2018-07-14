#Methode de base


require "twitter"
require "dotenv"
Dotenv.load
# quelques lignes qui enregistrent les clés d'APIs
client = Twitter::REST::Client.new do |config|
 config.consumer_key        = ENV["TWITTER_API_KEY"]
  config.consumer_secret     = ENV["TWITTER_API_SECRET"]
  config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
  config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
end
p client.update ("Bonjour, je suis élève à The Hacking Project et j'apprends à créer des supers bots")    #permet de publier "Hello World" sur Twitter
