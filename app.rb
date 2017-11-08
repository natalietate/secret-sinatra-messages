require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'
require './models'

# Database configuration
set :database, "sqlite3:development.sqlite3"

# messages index route
get '/' do
  @messages = Message.all
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
  @message = Message.find_by_id(params[:id])
  erb :'messages/show'
end
