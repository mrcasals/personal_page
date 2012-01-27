require 'test_helper'

describe Post do
  before do
    @post = Post.make
  end

  describe 'relations' do
    it 'has_and_belongs_to_many tags' do
      @post.must_respond_to :tags
    end
  end

  describe 'validations' do
    it 'is not valid without a title' do
      @post.title = nil
      @post.valid?.must_equal false
    end

    it 'is not valid without a body' do
      @post.body = nil
      @post.valid?.must_equal false
    end
  end

  describe 'methods' do
    describe '#tag_names' do
      it 'returns the note tags names in a string sepparated by commas' do
        @post.tags << Tag.make!(name: 'Cucumber')
        @post.tags << Tag.make!(name: 'Capybara')
        @post.save

        @post.tag_names.must_equal 'cucumber, capybara'
      end

      it 'returns an empty string when a note has no tags' do
        @post.save
        @post.tag_names.must_equal ''
      end
    end

    describe '#tag_names=' do
      it 'assigns tag to a note form a comma-separated string' do
        @post.tag_names= 'cucumber, capybara'
        @post.save

        @post.tags.count.must_equal 2
        Tag.all.count.must_equal 2
        Tag.all.map(&:name).must_include 'cucumber'
        Tag.all.map(&:name).must_include 'capybara'
      end
    end
end
