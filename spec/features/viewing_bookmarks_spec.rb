require 'pg'
# As a User,
# So I can see the bookmarks,
# I would like the system to display a list of bookmarks.


feature 'Viewing bookmarks' do
  scenario 'bookmarks are displayed' do
    Bookmarks.create(url: 'http://www.bbc.co.uk', title: 'BBC')
    Bookmarks.create(url: 'http://www.google.com', title: 'Google')

    visit ('/bookmarks')
    expect(page).to have_link('BBC', href: "http://www.bbc.co.uk")
    expect(page).to have_link('Google', href: "http://www.google.com")
  end
end