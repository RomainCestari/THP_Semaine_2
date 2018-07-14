require 'rubygems'
require 'nokogiri'
require 'open-uri'


def get_all_the_urls_of_val_doise_townhalls
doc = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))
  doc.css('a.lientxt').each do |node|
	    @nom_mairie = node['href'].slice!(1,1000)
      @mairie = node.text
      get_the_email_of_a_townhal_from_its_webpage(@nom_mairie)
    end
end


def get_the_email_of_a_townhal_from_its_webpage (liens)
doc = Nokogiri::HTML(open("https://coinmarketcap.com"+liens))
  doc.xpath('//*[@id="id-bitcoin"]/td[4]/a').each do |node|
  @adresses = node.text

  puts " la mairie #{@mairie} a l'adresse :" + @adresses

  end
end


get_all_the_urls_of_val_doise_townhalls
