class Hogwarts::Houses
    attr_accessor :name, :url, :bio, :sorting_hat_poem
    def initialize(name, url)
        @name = name
        @url = url

def call
    puts "1. Gryffindor
          2. Hufflepuff
          3. Ravenclaw
          4. Slytherin"
    choice
end

def choice
    input = nil
    while input != "exit"
        input = gets.strip
            case input
            when "1"
                puts "G"
            when "2"
                puts "H"
            when "3"
                puts "R"
            when "4"
                puts "S"
            else
                puts "Please try again"
    end
end
