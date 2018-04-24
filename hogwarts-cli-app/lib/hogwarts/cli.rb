class Hogwarts::CLI

def start
    puts "Welcome to Hogwarts!
         Please choose a magical category...
    1. Learn about Houses
    2. Learn about classes
    Or type 'exit' to disapparate"
    choice
end

def choice
    input = nil
    while input != "exit"
        input = gets.strip
            case input
            when "1"
                puts "1. Gryffindor
                      2. Hufflepuff
                      3. Ravenclaw
                      4. Slytherin
                      5. Get Sorted!"
    house_choice
            when "2"
                Hogwarts::Studies.call
            else
                puts "Please try again"
    end

def house_choice
    input = nil
    while input != "exit"
        input = gets.strip
            case input
            when "1"
                self.get_house_bio("https://www.pottermore.com/collection/all-about-gryffindor")
                puts "Bio:" house.bio
                puts "Sorting Hat Poem:" house.sorting_hat_poem

            when "2"
                self.get_house_bio("https://www.pottermore.com/collection/all-about-hufflepuff")
                puts "Bio:" house.bio
                puts "Sorting Hat Poem:" house.sorting_hat_poem
            when "3"
                self.get_house_bio("https://www.pottermore.com/collection/all-about-ravenclaw")
                puts "Bio:" house.bio
                puts "Sorting Hat Poem:" house.sorting_hat_poem
            when "4"
                self.get_house_bio("https://www.pottermore.com/collection/all-about-slytherin")
                puts "Bio:" house.bio
                puts "Sorting Hat Poem:" house.sorting_hat_poem
            else
                puts "Please try again"
            end
    end
end
end
