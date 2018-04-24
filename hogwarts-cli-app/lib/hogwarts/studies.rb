class Hogwarts::Studies
    attr_accessor :name, :detail



    def self.list
      book_1 = self.new
      book_1.name = "Book 1"
      book_1.detail = "Details"
      book_2 = self.new
      book_2.name = "Book 1"
      book_2.detail = "Details"
      [book_1, book_2]
end
end
