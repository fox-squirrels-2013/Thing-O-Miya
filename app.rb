require 'sinatra'
require 'active_record'
require 'shotgun'
require_relative './app/models/sailboat'

ActiveRecord::Base.establish_connection(adapter: 'postgresql', database: 'sailboat')

# index
get '/' do 
  @sailboats = Sailboat.all
  erb :index
end

# new
get '/new' do
  erb :new
end

# create
post '/create' do     
  # b = Sailboat.new
  # b.name = params[:name]
  # b.length = params[:length]
  # b.save
  Sailboat.create(name: params[:name], length: params[:length])
  redirect '/'
end

# edit
get '/edit/:id' do
  @sailboat = Sailboat.find(params[:id])
  erb :edit
end

# update
put '/update' do
 sailboat = Sailboat.find(params[:id])
 sailboat.update_attributes(name: params[:name], length: params[:length])
 redirect '/'
end

# destroy
delete '/destroy' do
  Sailboat.find(params[:id]).destroy
  redirect '/'
end
