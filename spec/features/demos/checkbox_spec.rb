
feature 'Angular Material Demos - Checkbox' do
  let(:checked_locator) { 'Checkbox 1: true' }
  let(:unchecked_locator) { 'Checkbox (md-primary): No Ink' }

  before do
    visit('/index.html#/checkbox')
    expect(page.find('h1')).to have_content 'Capybara Angular Material'
  end

  it 'is disabled'
  it 'is not disabled'

  it 'has no checkbox' do
    expect(page).not_to have_md_checkbox 'checkbox that does not exist'
  end

  it 'has a checkbox' do
    expect(page).to have_md_checkbox checked_locator
  end

  it 'has a checkbox' do
    expect(page).to have_md_checkbox unchecked_locator
  end

  it 'does not match part of the text' do
    expect(page).not_to have_md_checkbox checked_locator[0...7].strip!
  end

  it 'has a checkbox that is not checked' do
    expect(page).to have_md_checkbox(unchecked_locator, :checked => false)
  end

  it 'is not checked' do
    expect(page).not_to have_md_checkbox(unchecked_locator, :checked => true)
  end

  it 'is checked' do
    expect(page).to have_md_checkbox(checked_locator, :checked => true)
  end

  it 'is checked' do
    expect(page).not_to have_md_checkbox(checked_locator, :checked => false)
  end
end
