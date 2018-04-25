require 'nokogiri'
require 'open-uri'

class Hogwarts::Atlas
    attr_accessor :name, :url
    @@all = []



    def initialize(name, url)
     @name = name
     @url = url
     @@all << self
    end




     def self.scrape_atlas
        atlases = []
        doc = Nokogiri::HTML(open("https://www.hp-lexicon.org/list/wizarding-atlas/atlas-of-hogwarts/"))
        info = doc.css(".col-md-12 ul li a")
        info.each do |n|
            atlas = {}
            atlas[:name] = n.text
            atlas[:url] = n.attr("href")
            atlases << atlas

        end
        atlases
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
