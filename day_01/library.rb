class Library
  attr_accessor :books

  def initialize
    @books = []
  end

  def get_all_details(book_title)
    return @books.find do |x|
      x[:title] == book_title
    end
  end

  def get_all_rental_details(rental_title)
    book = get_all_details(rental_title)
    return book[:rental_details]
  end
end
