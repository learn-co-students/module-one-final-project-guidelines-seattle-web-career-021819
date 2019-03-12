require_relative './config/environment'
require 'sinatra/activerecord/rake'

desc 'Run the CLI'
task :run do
    CLI.new.run
end

desc 'starts a console'
task :console do
  ActiveRecord::Base.logger = Logger.new(STDOUT)
  Pry.start
end
