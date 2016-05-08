# Capybara Selectors for Angular Material

![Build Status](https://circleci.com/gh/rimian/capybara-angular-material.png?style=shield&circle-token=f2873eb8a682807f1581927204052742bf8ecd94 "Build Status")
[![Gem Version](https://badge.fury.io/rb/capybara-angular-material.svg)](http://badge.fury.io/rb/capybara-angular-material)

A DSL for interacting and/or checking against [Angular Material](https://material.angularjs.org) components.

This is tested using the capybara/poltergeist driver.

If you want to test how this works locally, check out this repo, install then run ```rackup -p8000```. You'll see the paths in the app.js file. eg: ```localhost:8000/#/radio```. I'll get around to documenting more later.

## Installation

Add this line to your application's Gemfile:

    gem 'capybara-angular-material'

You'll also need to install Capybara.

## Usage

In your spec helper, include the DSL:

```ruby
require 'capybara/angular/material'

RSpec.configure do |config|
  include Capybara::Angular::Material
end
```

## The DSL

### Querying forms

```
have_md_checkbox('Some text')
have_md_checkbox('Other thing', :checked => true)
have_md_button('Some text')
have_md_radio_button('Banana', :checked => true)
have_md_radio_button('Banana')
have_md_radio_button('Some place holder text')
have_md_select('Select Label')
```

### Interacting with forms

```
md_check('A checkbox')
md_uncheck('A checkbox')
md_select('An option', :from => 'Select Menu')
```
