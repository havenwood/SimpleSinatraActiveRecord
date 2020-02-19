require "rubygems"
require "sinatra"
require "active_record"

ENV["SINATRA_ENV"] = "database"

#if ActiveRecord::Migrator.needs_migration?
#  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
#end

class UserController < ApplicationController
	get "/user" do
		erb :user
	end
end