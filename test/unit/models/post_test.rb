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
end
