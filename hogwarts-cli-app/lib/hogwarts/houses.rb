class Hogwarts::Houses
    attr_accessor :url, :bio, :sorting_hat_poem
    def initialize(url)
        @url = url


end

def call
    self.get_house_bio(url)

end
    end

def sort
    ["GRYFFINDOR!", "HUFFLEPUFF", "RAVENCLAW", "SLYTHERIN"].random
end

def g
    self.get_house_bio(url)


end
