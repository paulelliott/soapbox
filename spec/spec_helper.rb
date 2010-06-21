ENV["RAILS_ENV"] ||= 'test'

require File.dirname(__FILE__) + "/../config/environment" unless defined?(Rails)
require 'rspec/rails'
require 'capybara/rails'
require 'capybara/dsl'

include Capybara

Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each {|f| require f}

Rspec.configure do |config|

  config.mock_with :rspec
  config.fixture_path = "#{::Rails.root}/spec/fixtures"
  config.use_transactional_fixtures = true

  config.before(:all) do
    Post.delete_all
  end

end
