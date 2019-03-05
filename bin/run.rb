require_relative '../config/environment'

User.delete_all

claire = User.create(name: "Claire")

puts "HELLO WORLD"
