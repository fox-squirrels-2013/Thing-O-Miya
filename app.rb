require 'sinatra'
require 'active_record'
require_relative './app/models/sailboat'

ActiveRecord::Base.establish_connection(adapter: 'postgresql', database: 'sinatra_skeleton_dev')

get '/' do 
  erb :index
end

# post '/'