
feature 'Angular Material Demos - Checkbox' do
  scenario 'It has a Checkbox' do
    visit('/index.html')
    expect(page).to have_md_checkbox 'A nice checkbox'
  end
end
