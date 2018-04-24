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
                books
            else
                puts "Please try again"
            end
    end
end

def house_choice
    input = nil
    while input != "exit"
        input = gets.strip
            case input
            when "1"
                Scraping.get_house_bio("https://www.pottermore.com/collection/all-about-gryffindor")

            when "2"
                Scraping.get_house_bio("https://www.pottermore.com/collection/all-about-hufflepuff")

            when "3"
                Scraping.get_house_bio("https://www.pottermore.com/collection/all-about-ravenclaw")

            when "4"
                Scraping.get_house_bio("https://www.pottermore.com/collection/all-about-slytherin")

            else
                puts "Please try again"
            end
    end
end

def books
    Scraping.book_list("www.hp-lexicon.org/list/books/textbooks/")
end
end
