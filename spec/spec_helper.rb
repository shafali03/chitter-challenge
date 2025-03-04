require_relative './setup_test_database'

ENV['ENVIRONMENT'] = 'test'

require './app'
require 'capybara/rspec'
require 'sinatra'
require 'capybara'
require 'simplecov'
require 'simplecov-console'



Capybara.app = ChitterPeeps


RSpec.configure do |config|
  config.before(:each) { setup_test_database }

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,
  # Want a nice code coverage website? Uncomment this next line!
  # SimpleCov::Formatter::HTMLFormatter
])
SimpleCov.start

RSpec.configure do |config|
  config.after(:suite) do
    puts
    puts "\e[33mHave you considered running rubocop? It will help you improve your code!\e[0m"
    puts "\e[33mTry it now! Just run: rubocop\e[0m"
  end
end

end