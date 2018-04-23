class Hogwarts::Studies
    attr_accessor :name, :url, :bio
    def initialize(name, url)
        @name = name
        @url = url

def call
    list
    choice
end

def list
    self.subject_list("http://wwo.wikidot.com/subject")
end
