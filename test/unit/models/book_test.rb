require 'test_helper'

describe Book do
  before do
    @book = Book.make
  end

  describe 'validations' do
    it 'is not valid without a title' do
      @book.title = nil
      @book.valid?.must_equal false
    end

    it 'is not valid without a description' do
      @book.description = nil
      @book.valid?.must_equal false
    end

    it 'is not valid with a rating higher than 10' do
      @book.rating = 11
      @book.valid?.must_equal false
    end

    it 'is not valid with a rating lower than 0' do
      @book.rating = -1
      @book.valid?.must_equal false
    end

    it 'is not valid without an author' do
      @book.author = nil
      @book.valid?.must_equal false
    end

    it 'is not valid without a total pages number' do
      @book.total_pages = nil
      @book.valid?.must_equal false
    end
  end
end
