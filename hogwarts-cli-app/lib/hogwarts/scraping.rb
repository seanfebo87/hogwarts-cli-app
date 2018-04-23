require 'nokogiri'
require 'open-uri'
require 'pry'
class Scraping

def self.get_house_bio(url)
    gryf = Gryf.new
    doc = Nokogiri::HTML(open(url))
    gryf.bio = doc.css(".subject-description p").text

