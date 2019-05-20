# As a User,
# So I can see the bookmarks,
# I would like the system to display a list of bookmarks.

feature 'Viewing bookmarks' do
  scenario 'bookmarks are displayed' do
    visit ('/')
    expect(page).to have_content 'https://www.bbc.co.uk/'
    expect(page).to have_content 'https://github.com/'
  end
end