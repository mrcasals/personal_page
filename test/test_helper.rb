ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'minitest/spec'
require 'mocha'
require 'machinist/active_record'
require 'database_cleaner'
DatabaseCleaner.strategy = :transaction

ActiveRecord::Base.observers = []

class MiniTest::Unit::TestCase
  include Mocha::API
  def setup
    Machinist.reset_before_test
    DatabaseCleaner.start
    mocha_setup
  end
  def teardown
    DatabaseCleaner.clean
    mocha_teardown
  end
end

require File.expand_path(File.dirname(__FILE__) + '/blueprints')
require 'minitest/autorun'
