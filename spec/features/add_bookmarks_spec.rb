require 'pg'
# As a user,
# So I can manage my bookmarks
# I would like to add new bookmarks to my list.

feature "Add bookmarks" do
  scenario 'bookmarks were added' do
    #conn = PG.connect(dbname: 'bookmark_manager_test')
    visit '/bookmarks/new'
    fill_in 'url', with: "http://www.cnn.com"
    fill_in 'title', with: "CNN"
    click_button 'Submit'
    expect(page).to have_link("CNN", href: 'http://www.cnn.com')
  end
end
