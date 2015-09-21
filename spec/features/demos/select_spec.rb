feature 'Angular Material Demos - select' do
  before do
    visit('/index.html#/select')
    expect(page.find('h1')).to have_content 'Capybara Angular Material'
  end

  it 'has a select with place holder' do
    expect(page).to have_md_select('State')
  end

  it 'has no select' do
    expect(page).not_to have_md_select('Oh, no!')
  end
end
