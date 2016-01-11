require 'nokogiri'
require 'open-uri'
doc = Nokogiri.HTML(open("http://nokogiri.org/"))
doc.css('h1').each do |element|
  puts element[:class]
end
