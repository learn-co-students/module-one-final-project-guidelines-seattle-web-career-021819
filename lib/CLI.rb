def welcome
  puts "Who Wants To Be A Millionare?"
end

def get_user
  puts "What's your name?"
  new_name = gets.chomp
  User.new(name: new_name)
end
