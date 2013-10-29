require 'sinatra'
require 'active_record'
require 'shotgun'
require_relative './app/models/sailboat'

ActiveRecord::Base.establish_connection(adapter: 'postgresql', database: 'sailboats')

get '/' do 
  erb :index
end

get '/create' do
  erb :create
end

post '/create' do
  p params      
  b = Sailboat.new
  b.name = params[:name]
  b.type = params[:length]
  b.save
  redirect '/create'

end