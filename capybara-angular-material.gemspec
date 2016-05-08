Gem::Specification.new do |gem|
  gem.name          = 'capybara-angular-material'
  gem.version       = '0.2.0'
  gem.license       = 'MIT'

  gem.authors       = ['Rimian Perkins']
  gem.email         = ['hello@rimian.com.au']
  gem.summary       = 'Capybara DSL for Angular Material'
  gem.description   = 'A set of Capybara selectors query and interact with Angular Material Directives'

  gem.homepage      = 'https://github.com/rimian/capybara-angular-material'

  gem.files         = `git ls-files`.split($ORS) - ['Gemfile.lock']
  gem.require_paths = %w(lib)

  gem.add_development_dependency('capybara', ['~> 2.5', '>= 2.5.0'])
  gem.add_development_dependency('poltergeist', ['~> 1.6', '>= 1.6.0'])
  gem.add_development_dependency('rspec', ['~> 3.3', '>= 3.3.0'])
  gem.add_development_dependency('sinatra', ['~> 1.4', '>= 1.4.6'])
end
