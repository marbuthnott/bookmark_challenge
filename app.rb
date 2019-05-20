require 'sinatra/base'
require_relative 'models/bookmarks'

class BookmarkManager < Sinatra::Base
  get '/' do
    'Bookmark Manager'
  end

  get '/bookmarks' do
    @bookmarks = Bookmarks.all

    erb :'bookmarks/index'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end