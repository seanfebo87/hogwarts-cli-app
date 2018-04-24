require 'nokogiri'
require 'open-uri'
require 'pry'
class Scraping

def self.get_house_bio(url)
    def self.get_house_bio(url)
    doc = Nokogiri::HTML(open(url))
    puts doc.css(".subject-description p").text
    puts doc.css(".quote-artefact p").text
end


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

def subject_info(url)
    doc = Nokogiri::HTML
    doc.css(".description #CourseDesc").text
end
end
end
