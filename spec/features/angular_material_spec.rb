
feature 'Angular Material' do
  scenario 'Loads the page' do
    visit('/index.html')
    expect(page.find('h1')).to have_content 'Capybara Angular Material'
  end
end
