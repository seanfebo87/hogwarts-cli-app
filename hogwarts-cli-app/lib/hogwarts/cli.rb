class Hogwarts::CLI

def start
    puts "Welcome to Hogwarts!"
    puts "Please choose a magical category to learn more about..."
    puts ""
    puts "1. TextBooks"
    puts "2. Atlas of Hogwarts"
    menu
end


def menu
    books = make_books
    atlas = make_atlas
    input = gets.strip
    if input.to_i == 1
        list_books(books)
    elsif input.to_i == 2
        list_atlas(atlas)
    else
      "Please try again"
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
    puts "Please select a book for link."
    menu_book
  end





def menu_book
    input = gets.strip
    if input.to_i > 0 && input.to_i <= 35
      link = Hogwarts::Studies.all[input.to_i-1]
      puts "#{link.url}"
    else
        "Please try again."
    end
end

def list_atlas(atlas)
     puts ""
    atlas.each.with_index(1) do |title, i|
      puts "#{i}. #{title.name}"
    end
    puts ""
    puts "Please select a book for link."
    menu_atlas
  end

def menu_atlas
    input = gets.strip
    if input.to_i > 0 && input.to_i <= 19
      link = Hogwarts::Atlas.all[input.to_i-1]
      puts "#{link.url}"
    else
        "Please try again."
    end
end

end
