require 'capybara/angular/material/rspec'
require 'capybara/angular/material/node/actions'

module Capybara
  module Angular
    module Material
      include Capybara::RSpecMatchers
      include Capybara::Angular::Material::RSpecMatchers
      include Capybara::Angular::Material::Node::Actions
    end
  end
end
