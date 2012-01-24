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

    it 'is not valid without a rating' do
      @book.rating = nil
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
