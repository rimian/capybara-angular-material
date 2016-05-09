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

  describe 'Selecting' do
    let(:option) { 'AZ' }

    it 'selects an option' do
      expect {
        md_select(option, :from => 'State')
      }.to change {
        page.all(:xpath, "//md-option[@value='#{option}']").size
      }.from(0).to(1)
    end
  end
end
