require('minitest/autorun')
require('minitest/rg')
require_relative('../library')

class TestLibrary < Minitest::Test
  def setup
    @library = Library.new()
    @book = {
      title: "lord_of_the_rings",
      rental_details: {
        student_name: "Jeff",
        date: "01/12/16"
        }
      }
      @library.books.push(@book)
    end

  def test_get_all_details
    book_found = @library.get_all_details("lord_of_the_rings")
    assert_equal(book_found[:title], "lord_of_the_rings")
  end

  def test_get_rental_details
    rental_detail = @library.get_all_rental_details("lord_of_the_rings")
    assert_equal(rental_detail == nil, false )
  end
end
