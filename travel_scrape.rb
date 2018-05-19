require 'nokogiri'
require 'open-uri'

prefecture_names = %w(aomori akita iwate yamagata miyagi fukushima gunma tochigi ibaraki chiba saitama kanagawa tokyo niigata yamanashi nagano ishikawa fukui)

spot_genres = %w(kanko park museum nature zoo mall)

prefecture_names.each do |prefecture_name|
  spot_genres.each do |spot_genre|
    doc = Nokogiri.HTML(open("#{BASE_URL}/#{prefecture_name}/#{spot_genre}.html"))
    doc.css('.bunrui')[0].css('.infoblk').each do |infoblk|
      pp infoblk.css('p')[1].css('a')[0].children.first.text
      sleep(1)
    end
  end
end
