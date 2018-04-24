require 'nokogiri'
require 'open-uri'
class Scraping




def self.book_list(url)
    books = []
    doc = Nokogiri::HTML(open(url))
    lists = doc.css(".col-md-12 ul li a")
    lists.each do |n|
        list = {}
        list[:name] = n.text
        list[:url] = n.attr("href")
        books << list
    end
    books
end

end
