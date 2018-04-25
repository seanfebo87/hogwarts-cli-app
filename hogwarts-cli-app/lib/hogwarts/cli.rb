class Hogwarts::CLI

def start
    puts "Welcome to Hogwarts!"
    puts ""
    puts "1. TextBooks"
    puts "2. Atlas of Hogwarts"
    menu
    goodbye
end


def menu
    books = make_books
    atlas = make_atlas
    input = nil
    puts ""
    puts "Enter the number of the category you would like a list of or 'exit to leave."
    input = gets.strip
    while input != "exit"
      case input
      when "1"
        list_books(books)
      when "2"
        list_atlas(atlas)
      else
        puts "Please try again"
      end
  end
end

def make_books
    books_array = Hogwarts::Studies.scrape_books
    books_array.map do |book|
      Hogwarts::Studies.new(book[:name], book[:url])
    end
end

def make_atlas
    atlas_array = Hogwarts::Atlas.scrape_atlas
    atlas_array.map do |n|
      Hogwarts::Atlas.new(n[:name], n[:url])
    end
end


def list_books(books)
    puts ""
    books.each.with_index(1) do |title, i|
      puts "#{i}. #{title.name}"
    end
    puts ""
    puts "Please select a book number for link or type 'exit' for main menu."
    menu_book
  end





def menu_book
    input = gets.strip
      if input.to_i > 0 && input.to_i <= 35
      link = Hogwarts::Studies.all[input.to_i-1]
      puts "#{link.url}"
      else input == "exit"
        start
  end
end

def list_atlas(atlas)
     puts ""
    atlas.each.with_index(1) do |title, i|
      puts "#{i}. #{title.name}"
    end
    puts ""
    puts "Please select a map for link or 'exit' for main menu."
    menu_atlas
  end

def menu_atlas
    input = gets.strip
    if input.to_i > 0 && input.to_i <= 19
      link = Hogwarts::Atlas.all[input.to_i-1]
      puts "#{link.url}"
    else input == exit
        start
    end
end

def goodbye
  puts "Thanks for coming!"
end
