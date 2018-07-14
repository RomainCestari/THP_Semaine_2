require 'rubygems'
require 'nokogiri'
require 'open-uri'

def get_all_the_crypto_name

  @crypto_name = []
doc = Nokogiri::HTML(open("https://coinmarketcap.com"))
      doc.css('a.currency-name-container').each do |node|
      @crypto_name << node.text

      end
end


def get_all_the_crypto_price

  @crypto_price = []
doc = Nokogiri::HTML(open("https://coinmarketcap.com"))
      doc.css('a.price').each do |node|
      @crypto_price << node.text

    end
  end

while true
get_all_the_crypto_price  #on appelle la premiere méthode
get_all_the_crypto_name

puts Hash[@crypto_name.zip(@crypto_price)]
sleep 3600   #permet la répetition toutes les heures
end
