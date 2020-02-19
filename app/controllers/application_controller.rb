require "rubygems"
require "sinatra"
require 'sinatra/activerecord'
require "active_record"

ENV["SINATRA_ENV"] = "database"

#if ActiveRecord::Migrator.needs_migration?
#  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
#end
#set :database_file, 'config/database.yml'
#set :database, "sqlite3:db/database.sqlite3"

ActiveRecord::Base.logger = Logger.new('debug.log')
#configuration = YAML::load(IO.read('../config/database.yml'))
#ActiveRecord::Base.establish_connection(configuration['development'])
ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database  => "db/database.sqlite"
)
class ApplicationController < Sinatra::Base
	configure do		
		set :public_folder, "public"
		set :views, "app/views"
	end
	
	get '/' do
		erb :index
	end
end
