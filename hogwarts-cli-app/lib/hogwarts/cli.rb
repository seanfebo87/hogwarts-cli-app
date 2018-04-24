class Hogwarts::CLI

def start
    puts "Welcome to Hogwarts!
         Please choose a magical book to learn more about..."

    books = create_books
    books
end


def create_books
    new = Scraping.book_list("www.hp-lexicon.org/list/books/textbooks/")
    new.map {|x| Hogwarts::Studies.new(x[:name], x[:url])}
end


