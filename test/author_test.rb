require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/book'
require './lib/author'

class AuthorTest < MiniTest::Test

  def setup
    @charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    @jane_eyre = Book.new({author_first_name: "Charlotte", author_last_name: "Bronte", title: "Jane Eyre"})
  end

  def test_author_exists
    assert_instance_of Author, @charlotte_bronte
  end

  def test_author_attributes
    assert_equal "Charlotte", @charlotte_bronte.first_name
    assert_equal "Bronte", @charlotte_bronte.last_name
    assert_equal [], @charlotte_bronte.books
  end

  def test_author_name
    assert_equal "Charlotte Bronte", @charlotte_bronte.name
  end

  def test_write
    @jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    assert_instance_of Book, @jane_eyre
    assert_equal "Jane Eyre" @jane_eyre.title 
    assert_equal [@jane_eyre], @charlotte_bronte.books
  end

end
