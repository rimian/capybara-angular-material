
feature 'Angular Material Demos - Checkbox' do
  before { visit('/index.html') }

  scenario 'It has a Checkbox' do
    expect(page).to have_md_checkbox 'A nice checkbox'
  end

  scenario 'It has no Checkbox' do
    expect(page).not_to have_md_checkbox 'A checkbox that does not exist'
  end
end
