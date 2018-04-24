class Hogwarts::Studies
    attr_accessor :name, :url, :bio


def call
    list
end

def list
    Scraping.subject_list("http://wwo.wikidot.com/subject")
end
end
