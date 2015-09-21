feature 'Angular Material Demos - select' do
  before do
    visit('/index.html#/select')
    expect(page.find('h1')).to have_content 'Capybara Angular Material'
  end

  it 'has a select'
  it 'has no select'
end
