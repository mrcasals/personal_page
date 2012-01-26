require 'test_helper'

describe Tag do
  before do
    @tag = Tag.make
  end

  describe 'relations' do
    it 'has_and_belongs_to_many posts' do
      @tag.must_respond_to :posts
    end
  end

  describe 'validations' do
    it 'is not valid without a name' do
      @tag.name = nil
      @tag.valid?.must_equal false
    end
  end
end
