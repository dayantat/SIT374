ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  #returns true if a test user is logged in
  def is_logged_in?
      !session[:user_id].nil?
  end

  # Add more helper methods to be used by all tests here...
  #test to see if this uploads
end
