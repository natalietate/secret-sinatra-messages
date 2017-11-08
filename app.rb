require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'
require './models'

# Database configuration
set :database, "sqlite3:development.sqlite3"

# messages index route
get '/' do
  erb :index
end

# creating messages route
post '/messages' do
  # TODO
end

# new messages route
get '/messages/new' do
  erb :'messages/new'
end

# show messages route
get '/messages/:id' do
  erb :'messages/show'
end
