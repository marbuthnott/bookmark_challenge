# As a User,
# So I can see the bookmarks,
# I would like the system to display a list of bookmarks.

feature 'Viewing bookmarks' do
  scenario 'bookmarks are displayed' do
    visit ('/bookmarks')
    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.destroyallsoftware.com"
  end
end