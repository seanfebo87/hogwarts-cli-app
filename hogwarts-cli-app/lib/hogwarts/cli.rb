class Hogwarts::CLI

def start
    puts "Welcome to Hogwarts!"
    puts "Please choose a magical book to learn more about..."

    books
    menu
end


def books
    @books = Hogwarts::Studies.list
    @books.each.with_index(1) do |book, i|
      puts "#{i}. #{book}"
    end
end

def menu
  input = nil
  while input != "exit"
  input = gets.strip
  if input.to_i > 0
    puts @books[input.to_i-1]
  elseif input == "list"
    books
  else
    puts "Having trouble?"
  end
end
end
end
