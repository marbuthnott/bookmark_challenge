feature 'Update bookmark' do
  scenario 'A bookmark is updated' do
    bookmark = Bookmarks.create(url: 'http://www.hoogle.com', title: 'Hoogle')
    visit('/bookmarks')
    expect(page).to have_link('Hoogle', href: 'http://www.hoogle.com')

    first('.bookmark').click_button 'Update'
    expect(current_path).to eq "/bookmarks/#{bookmark.id}/update"

    fill_in 'url', with: "http://www.google.com"
    fill_in 'title', with: "Google"
    click_button 'Submit'

    expect(current_path).to eq "/bookmarks"
    expect(page).not_to have_link('Hoogle', href: 'http://www.hoogle.com')
    expect(page).to have_link("Google", href: "http://www.google.com")
 
  end
end