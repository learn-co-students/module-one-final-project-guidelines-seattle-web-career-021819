require_relative 'config/environment'
require 'sinatra/activerecord/rake'

desc 'starts a console'
task :console do
  ActiveRecord::Base.logger = Logger.new(STDOUT)
  Pry.start
end


desc 'runs the bin/CLI.rb program'
task :run do
  CLI.run
end


desc 'destroy all data currently in db, then re-seed'
task :reset do
  User.destroy_all
  Favorite.destroy_all
  Show.destroy_all
  Rake::Task["db:seed"].invoke
end
