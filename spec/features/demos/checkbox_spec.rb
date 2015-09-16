
feature 'Angular Material Demos - Checkbox' do
  scenario 'It has a Checkbox or Not' do
    visit('/index.html')
    expect(page).to have_md_checkbox 'A nice checkbox'
    expect(page).not_to have_md_checkbox 'A checkbox that does not exist'
  end
end
