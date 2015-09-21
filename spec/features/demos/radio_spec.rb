feature 'Angular Material Demos - radio' do
  before do
    visit('/index.html#/radio')
    expect(page.find('h1')).to have_content 'Capybara Angular Material'
  end

  it 'has no radio button' do
    expect(page).not_to have_md_radio_button('This button does not exist')
    expect(page).not_to have_md_radio_button('This button does not exist', :checked => true)
    expect(page).not_to have_md_radio_button('This button does not exist', :checked => false)
  end

  it 'has a radio button with content' do
    expect(page).to have_md_radio_button('Apple')
  end

  it 'has a radio button with content normalized' do
    expect(page).to have_md_radio_button('Banana')
  end

  it 'has a checked radio button' do
    expect(page).to have_md_radio_button('Banana', :checked => true)
    expect(page).not_to have_md_radio_button('Banana', :checked => false)
  end

  it 'has a radio button with value'
end
