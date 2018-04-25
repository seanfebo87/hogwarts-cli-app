require 'nokogiri'
require 'open-uri'

class Hogwarts::Studies
    attr_accessor :name, :url, :bio
    @@all = []



    def initialize(name, url)
     @name = name
     @url = url
     @@all << self
    end

   def self.scrape_books
        books = []
        doc = Nokogiri::HTML(open("https://www.hp-lexicon.org/list/books/textbooks/"))
        info = doc.css(".col-md-12 ul li a")
        info.each do |n|
            book = {}
            book[:name] = n.text
            book[:url] = n.attr("href")
            books << book

        end
        books
    end






    def self.scrape_info(url)
        doc = Nokogiri::HTML(open(url))
        info = doc.css("col-md-8 p").text
        info
    end

    def self.all
        @@all
    end


end
