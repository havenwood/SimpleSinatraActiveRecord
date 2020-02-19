ENV['SINATRA_ENV'] ||= "development"
require "rubygems"
require "sinatra"
require "active_record"
#require "sinatra/activerecord"
#require 'bundler/setup'
#Bundler.require(:default, ENV['SINATRA_ENV'])
#require "Bundler"
#Bundler.require
#set :database, "config/database.yml"

ActiveRecord::Base.establish_connection(
	:adapter => 'sqlite3',
	:database => "db/#{ENV['SINATRA_ENV']}.sqlite"
)
#configure :development do
#  set :database, 'sqlite3:db/database.db'
#end

#require_all 'app'

#Link To Models Here
require "models/car.rb"
