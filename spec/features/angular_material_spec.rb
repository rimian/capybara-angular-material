require 'spec_helper'

feature 'Angular Material' do
  scenario 'It works!' do
    visit('/index.html')
    expect(page).to have_content 'Capybara Angular Material'
  end
end
