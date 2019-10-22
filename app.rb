# frozen_string_literal: true

require 'sinatra/base'
require_relative './lib/bookmark'


# This is bigboy class
class BookmarkManager < Sinatra::Base
  get '/' do
    redirect '/bookmarks'
  end

  get '/bookmarks' do
    p ENV
    @bookmarks = Bookmark.all
    erb(:index)
  end

  run! if app_file == $0
end
