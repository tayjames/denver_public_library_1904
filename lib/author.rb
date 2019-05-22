class Author
  attr_reader :first_name, :last_name, :books, :name

  def initialize(author_info)
    @first_name = author_info[:first_name]
    @last_name = author_info[:last_name]
    @books = []
    @name = @first_name + " " + @last_name
  end

  def write(title, publication_date) # i am honestly stumped
    #first_attempt
    # x = Hash.new(0)
    # x[:author]= author
    # x[:publication_date]

    #second attempt
    book = Hash.new(0)
    book[:title] = title
    book[:first_name] = @name.split.first
    book[:last_name] = @name.split.last 
    book[:publication_date] = publication_date

    #third attempt:
    # book = Book.new(book)
    # book[:title] = title
    # book[:first_name] = @author.name.split.first
    # book[:last_name] = @author.name.split.last
    # book[:publication_date] = publication_date
    # @books << book
  end

end
