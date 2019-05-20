feature 'Welcome page' do
  scenario 'has welcome note' do
    visit ('/')
    expect(page).to have_content 'Bookmark Manager!!'
  end
end