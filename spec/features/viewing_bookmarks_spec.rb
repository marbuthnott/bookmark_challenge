require 'pg'
# As a User,
# So I can see the bookmarks,
# I would like the system to display a list of bookmarks.

feature 'Viewing bookmarks' do
  scenario 'bookmarks are displayed' do
    conn = PG.connect(dbname: 'bookmark_manager_test')
    conn.exec("INSERT INTO bookmarks (url) VALUES('http://www.bbc.co.uk')")
    conn.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com')")

    visit ('/bookmarks')
    expect(page).to have_content "http://www.bbc.co.uk"
    expect(page).to have_content "http://www.google.com"
  end
end