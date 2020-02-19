require 'sinatra/base'
#require "config/environment.rb"

#if ActiveRecord::Migrator.needs_migration?
#  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
#end

require_relative 'app/controllers/application_controller.rb'
require_relative 'app/controllers/user_controller.rb'

use Rack::MethodOverride
use UserController
run ApplicationController