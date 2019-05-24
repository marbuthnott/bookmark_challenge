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

  describe '.delete' do
    it 'deletes the given bookmark' do
      bookmark = Bookmarks.create(title: 'Makers Academy', url: 'http://www.makersacademy.com')
  
      Bookmarks.delete(id: bookmark.id)
  
      expect(Bookmarks.all.length).to eq 0
    end
  end 

  describe '.update' do
    it 'updates the given bookmark' do
      bookmark = Bookmarks.create(title: 'Hoogle', url: 'http://www.hoogle.com')
  
      updated_bookmark = Bookmarks.update(id: bookmark.id, title: 'Google', url: 'http://www.google.com')
  
      expect(updated_bookmark).to be_a Bookmarks
      expect(updated_bookmark.id).to eq bookmark.id
      expect(updated_bookmark.title).to eq 'Google'
      expect(updated_bookmark.url).to eq 'http://www.google.com'
    end
  end 

  describe '.find' do
    it 'returns the requested bookmark object' do
      bookmark = Bookmarks.create(title: 'Makers Academy', url: 'http://www.makersacademy.com')

      result = Bookmarks.find(id: bookmark.id)

      expect(result).to be_a Bookmarks
      expect(result.id).to eq bookmark.id
      expect(result.title).to eq 'Makers Academy'
      expect(result.url).to eq 'http://www.makersacademy.com'
    end
  end
end