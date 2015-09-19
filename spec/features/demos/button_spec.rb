feature 'Angular Material Demos - Button' do
  before do
    visit('/index.html#/button')
    expect(page.find('h1')).to have_content 'Capybara Angular Material'
  end

  it 'has a button' do
    expect(page).to have_md_button('Click me')
  end

  it 'has no button' do
    expect(page).not_to have_md_button('Kevin Bacon')
  end
end
