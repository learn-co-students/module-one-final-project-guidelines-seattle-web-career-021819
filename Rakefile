require_relative 'config/environment'
require 'sinatra/activerecord/rake'

desc 'starts a console'
task :console do
  ActiveRecord::Base.logger = Logger.new(STDOUT)
  Pry.start
end

desc 'Run the CLI'
task :run do
	CLI.run
end

desc 'run the seed file'
task :seed do
	Seed.run
end
