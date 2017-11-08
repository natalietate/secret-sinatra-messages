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
  message = Message.create(title: params[:title], body: params[:body])
  redirect "/messages/#{message.id}"
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

# TODO: Ability to delete post
# destroy
delete '/messages/:id' do
  message = Message.find_by_id(params[:id])
  message.destroy
  redirect '/'
end

# TODO: Ability to edit post
