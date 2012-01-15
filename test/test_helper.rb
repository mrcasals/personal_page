ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'minitest/spec'
require 'machinist/active_record'
require 'database_cleaner'
DatabaseCleaner.strategy = :transaction

ActiveRecord::Base.observers = []

class MiniTest::Unit::TestCase
  def setup
    Machinist.reset_before_test
    DatabaseCleaner.start
  end
  def teardown
    DatabaseCleaner.clean
  end
end

require File.expand_path(File.dirname(__FILE__) + '/blueprints')
require 'minitest/autorun'
