require 'test_helper'

describe Post do
  before do
    @post = Post.make
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
