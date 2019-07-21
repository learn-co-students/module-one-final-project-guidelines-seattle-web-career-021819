require 'bundler'
Bundler.require

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')
ActiveRecord::Base.logger = nil

require_all 'lib'



require 'rest-client'
require 'json'
require 'pry'
require_all 'app'

SINATRA_ACTIVESUPPORT_WARNING=false
