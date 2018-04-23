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
                Hogwarts::Houses.call
            when "2"
                Hogwarts::Studies.call
            else
                puts "Please try again"
    end
end
