require 'sinatra/base'

class BookmarkManager < Sinatra::Base
  get '/' do
    bookmarks = ['https://github.com/', 'https://www.bbc.co.uk/']
    bookmarks.join
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end