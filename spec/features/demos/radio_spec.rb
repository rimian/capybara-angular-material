feature 'Angular Material Demos - radio' do
  before do
    visit('/index.html#/radio')
    expect(page.find('h1')).to have_content 'Capybara Angular Material'
  end

  it 'has a radio button'
  it 'has no radio button'
end
