require './models/bookmarks.rb'


describe Bookmarks do
  describe '.all' do
    it 'returns all bookmarks' do
      conn = PG.connect(dbname: 'bookmark_manager_test')
      
      bookmark = Bookmarks.create(url: 'http://www.makersacademy.com', title: 'Makers')
      Bookmarks.create(url: 'http://www.destroyallsoftware.com', title: 'Destroy')
    
      bookmarks = Bookmarks.all

      expect(bookmarks.length).to eq 2
      expect(bookmarks.first).to be_a Bookmarks
      expect(bookmarks.first.id).to eq bookmark.id
      expect(bookmarks.first.title).to eq 'Makers'
      expect(bookmarks.first.url).to eq 'http://www.makersacademy.com'
    end
  end

  describe '.create' do
    it 'creates a new bookmark' do
      bookmark = Bookmarks.create(url: 'http://www.makersacademy.com', title: 'Makers')
      persisted_data = persisted_data(id: bookmark.id)

      expect(bookmark).to be_a Bookmarks 
      expect(bookmark.id).to eq persisted_data.first['id']
      expect(bookmark.title).to eq 'Makers'
      expect(bookmark.url).to eq "http://www.makersacademy.com"
    end
  end

end