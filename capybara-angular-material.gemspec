require 'rack'
require 'capybara'
require 'capybara/rspec'
require 'capybara/poltergeist'

Gem::Specification.new do |gem|
  gem.name          = 'capybara-angular-material'
  gem.version       = '0.0.1'
  gem.license       = 'MIT'

  gem.authors       = ['Rimian Perkins']
  gem.email         = ['hello@rimian.com.au']
  gem.summary       = 'Capybara DSL for Angular Material'

  gem.homepage      = 'https://github.com/rimian/capybara-angular-material'

  gem.files         = `git ls-files`.split($ORS) - ['Gemfile.lock']
  gem.require_paths = %w(spec)

  gem.add_development_dependency('rack')
  gem.add_development_dependency('rspec')
  gem.add_development_dependency('capybara')
  gem.add_development_dependency('poltergeist')
end
