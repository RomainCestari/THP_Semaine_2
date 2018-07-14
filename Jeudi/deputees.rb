require 'rubygems'
require 'nokogiri'
require 'open-uri'

def get_all_the_deputees_mail(x)

  doc = Nokogiri::HTML(open("http://www2.assemblee-nationale.fr"+x))
        doc.css('a.email').each do |node|
        @deputees_mail = node['href'].sub("mailto:", "")
        puts @deputees_mail
        puts @deputees
        end
  end

  def get_all_the_deputees_OMC

  doc = Nokogiri::HTML(open("http://www2.assemblee-nationale.fr/deputes/liste/alphabetique"))
        doc.css('//*[@id="rec_depute"]/option').each do |node|
        @deputees_OMC = node['value']
        @deputees = node.text.sub("M.", "").sub("Mme", "")
        get_all_the_deputees_mail(@deputees_OMC)
        end
#ici on rassemble les noms et les prenoms dans un Hash
end


get_all_the_deputees_OMC
