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


def favorite!(*args)
       arguments = Twitter::Arguments.new(args)
       pmap(arguments) do |tweet|
         perform_post_with_object('/1.1/favorites/create.json', arguments.options.merge(id: extract_id(tweet)), Twitter::Tweet)
       end

journaliste = ["@Jeremblachere", "@MaximeBethuys"]

journaliste.each do |v|
client.favorite "#{v}"

end

 #########################################################################################################
# peut etre la bonne méthode pour fav tous les nouveaux tweets de la liste journaliste
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

rClient = Twitter::REST::Client.new config
sClient = Twitter::Streaming::Client.new config

journaliste = ["@Jeremblachere", "@MaximeBethuys"]
sClient.filter(:track => journaliste.join(',')) do |tweet|
			if tweet.is_a?(Twitter::Tweet)
			  puts tweet.text
			  rClient.fav tweet
			end
    end
