
feature 'Angular Material Demos - Checkbox' do
  scenario 'It has a Checkbox' do
    visit('/index.html')
    expect(page).to have_selector 'md-checkbox'
  end
end
