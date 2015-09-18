require 'capybara/angular/material/rspec'

module Capybara
  module Angular
    module Material
      include Capybara::Angular::Material::RSpecMatchers
      include Capybara::RSpecMatchers
    end
  end
end
