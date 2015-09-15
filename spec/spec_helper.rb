require 'rack'
require 'capybara'
require 'capybara/rspec'
require 'capybara/poltergeist'
require 'capybara/angular/material/rspec'

RSpec.configure do |config|
  config.order = :random
  Capybara.default_driver = :poltergeist
  Capybara.app = Rack::Directory.new('./')

  include Capybara::Angular::Material::RSpecMatchers
end
