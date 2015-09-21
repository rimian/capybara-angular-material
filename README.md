# Capybara Selectors for Angular Material

![Build Status](https://circleci.com/gh/rimian/capybara-angular-material.png?style=shield&circle-token=f2873eb8a682807f1581927204052742bf8ecd94 "Build Status")
[![Gem Version](https://badge.fury.io/rb/capybara-angular-material.svg)](http://badge.fury.io/rb/capybara-angular-material)

This includes a number of selectors for testing [Angular Material](https://material.angularjs.org) components.

This is tested using the capybara/poltergeist driver.

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

### Checkboxes

This tag: `<md-checkbox>Some text</md-checkbox>`

```
have_md_checkbox('Some text')
```

Checked is ignored unless set in options:

```
have_md_checkbox('Other thing', :checked => true)
```

Checked boolean is matched against the `aria-checked` attribute.

### Buttons

```
have_md_button('Some text')
```

### Radio Button

```
have_md_radio_button('Banana', :checked => true)
have_md_radio_button('Banana')
```

### Select

```
have_md_radio_button('Some place holder text')
```
