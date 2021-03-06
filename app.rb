require 'sinatra/base'
require_relative 'models/bookmarks'

class BookmarkManager < Sinatra::Base

  enable :method_override

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

  delete '/bookmarks/:id' do
    Bookmarks.delete(id: params['id'])
    redirect '/bookmarks'
  end

  get '/bookmarks/:id/update' do
    @bookmark = Bookmarks.find(id: params[:id])
    erb :'bookmarks/update'
  end

  patch '/bookmarks/:id' do
    Bookmarks.update(id: params[:id], title: params[:title], url: params[:url])
    redirect '/bookmarks'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end