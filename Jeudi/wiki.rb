require 'rubygems'
require 'nokogiri'
require 'open-uri'

page = Nokogiri::HTML(open("http://en.wikipedia.org/"))
puts page.class   # => Nokogiri::HTML::Document


def get_the_email_of_a_townhal_from_its_webpage
page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/95/vaureal.html"))
page.xpath("/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]").each do |node|
puts node.text
  end
end
#get_the_email_of_a_townhal_from_its_webpage
