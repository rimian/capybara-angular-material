require 'rack'
require 'capybara'
require 'capybara/rspec'
require 'capybara/poltergeist'

RSpec.configure do |config|
  config.order = :random
  Capybara.default_driver = :poltergeist
end
