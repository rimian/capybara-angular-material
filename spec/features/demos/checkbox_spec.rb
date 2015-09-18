
feature 'Angular Material Demos - Checkbox' do
  scenario 'It has a Checkbox' do
    expect('<md-checkbox>cheese</md-checkbox>').to have_md_checkbox 'cheese'
  end

  scenario 'It normalises space' do
    expect('<md-checkbox> cheese </md-checkbox>').to have_md_checkbox 'cheese'
  end

  scenario 'It does not have a Checkbox' do
    expect('<md-checkbox>apple</md-checkbox>').not_to have_md_checkbox 'orange'
  end

  it 'does not match part of the text' do
    expect('<md-checkbox>this is a checkbox with text in it</md-checkbox>').not_to have_md_checkbox('a checkbox')
  end

  it 'is not checked' do
    expect('<md-checkbox aria-checked="false">zephod</md-checkbox>').to have_md_checkbox('zephod', :checked => false)
  end

  it 'is not checked' do
    expect('<md-checkbox aria-checked="false">zephod</md-checkbox>').not_to have_md_checkbox('zephod', :checked => true)
  end

  it 'is checked' do
    expect('<md-checkbox aria-checked="true">orange</md-checkbox>').to have_md_checkbox('orange', :checked => true)
  end

  it 'is checked' do
    expect('<md-checkbox aria-checked="true">orange</md-checkbox>').not_to have_md_checkbox('orange', :checked => false)
  end

  describe 'page' do
    before { visit('/index.html') }

    scenario 'It has a Checkbox' do
      expect(page).to have_md_checkbox 'A nice checkbox'
    end

    scenario 'It has no Checkbox' do
      expect(page).not_to have_md_checkbox 'checkbox that does not exist'
    end
  end
end
