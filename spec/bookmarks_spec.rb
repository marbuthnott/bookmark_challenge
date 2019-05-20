require './models/bookmarks.rb'


describe Bookmarks do
  describe '#all' do
    it 'returns all bookmarks' do
      bookmarks = Bookmarks.all

      expect(bookmarks).to include("https://github.com/")
      expect(bookmarks).to include("https://github.com/")
    end
  end
end