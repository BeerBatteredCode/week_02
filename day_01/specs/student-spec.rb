require('minitest/autorun')
require('minitest/rg')
require_relative('../student')

class TestStudent < Minitest::Test

  def setup
    @student = Student.new("Bob", "e29")
  end

  def test_get_name
    name = @student.name
    assert_equal("Bob", name)
  end

  def test_get_cohort
    cohort = @student.cohort
    assert_equal("e29", cohort)
  end

  def test_speak
    assert_equal("I can talk!", @student.speak)
  end

  def test_favourite_programming_language
    assert_equal("I love Ruby!", @student.favourite_programming_language("Ruby!"))
  end
end
