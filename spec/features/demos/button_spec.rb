feature 'Angular Material Demos - Button' do
  before { visit('/index.html') }

  it 'has a button' do
    expect(page).to have_md_button('Click me')
  end

  it 'has no button' do
    expect(page).not_to have_md_button('Kevin Bacon')
  end
end
