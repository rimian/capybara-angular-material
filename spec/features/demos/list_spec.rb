feature 'Angular Material Demos - lists' do
  before do
    visit('/index.html#/list')
    expect(page.find('h1')).to have_content 'Capybara Angular Material'
  end

  it 'has a list' do
    expect(page).to have_md_list()
  end

  it 'has no list' do
    expect('md-list is not here').not_to have_md_list()
  end

  feature 'List items' do
    it 'has a list item that contains text' do
      expect(page).to have_md_list_item('Min Li')
    end

    it 'has no list item' do
      expect(page).not_to have_md_list_item('There is no list item with this in it')
    end
  end
end
