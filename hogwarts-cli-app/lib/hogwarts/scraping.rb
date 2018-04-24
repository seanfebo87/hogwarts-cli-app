require 'nokogiri'
require 'open-uri'
class Scraping




def self.book_list(url)
    books = []
    doc = Nokogiri::HTML(open(url))
    info = doc.css(".col-md-12 ul li a")
    info.each do |n|
        list = {}
        list[:name] = n.text
        books << list
    end
    books
end

end
