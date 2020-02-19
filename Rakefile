ENV['SINATRA_ENV'] ||= "development"
ENV['RACK_ENV'] ||= "development"

#require 'sqlite3'
require_relative 'config/environment.rb'
require 'active_record'
require 'sinatra'
require 'sinatra/activerecord'
set :database, {adapter: "sqlite3", database: "db/#{ENV['SINATRA_ENV']}.sqlite"}

require 'sinatra/activerecord/rake'
