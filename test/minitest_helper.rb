ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require "minitest/autorun"
require 'capybara/rails'
require 'action_controller/test_case'
require "minitest/pride"

class IntegrationTest < MiniTest::Spec
  include Rails.application.routes.url_helpers
  include Capybara::DSL
  #Capybara.default_selector = :selectors
  register_spec_type(/integration$/, self)
  
end




