require 'sinatra/base'
require_relative 'models/bookmarks'

class BookmarkManager < Sinatra::Base
  get '/' do
    erb :welcome_page
  end

  get '/bookmarks' do
    @bookmarks = Bookmarks.all
    erb :'index'
  end

  get '/bookmarks/new' do
   erb :'bookmarks/new'
  end

  post '/bookmarks' do
    Bookmarks.create(url: params['url'], title: params['title'])
    redirect '/bookmarks'
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end