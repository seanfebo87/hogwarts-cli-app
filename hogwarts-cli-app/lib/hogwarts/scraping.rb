require 'nokogiri'
require 'open-uri'
require 'pry'
class Scraping

def self.get_house_bio(url)
    house = Hogwarts::Houses.new(name, url)
    doc = Nokogiri::HTML(open(url))
    house.bio = doc.css(".subject-description p").text
    house.sorting_hat_poem = doc.css(".quote-artefact p").text
end

def self.subject_list(url)
    list = []
    doc = Nokogiri::HTML(open(url))
    name = doc.search("#toc-list a")
    info.each do |name|
        list << name.text
    end
    list
end

def subject_info(url)
    doc = Nokogiri::HTML
    doc.css(".description #CourseDesc").text
