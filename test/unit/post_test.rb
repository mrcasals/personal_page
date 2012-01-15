require 'test_helper'

describe Post do
  describe 'validations' do
    it 'must have a body' do
      subject.body = nil
      subject.must_not_be_valid
    end

    it 'must have a title' do
      subject.title = nil
      subject.must_not_be_valid
    end
  end
end
