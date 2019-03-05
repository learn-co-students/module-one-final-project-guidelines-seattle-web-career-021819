

def play_game
  welcome
  current_user = get_user
  menu(current_user)
end

def welcome
  puts "Who Wants To Be A Millionare?"
end

def get_user
  puts "What's your name?"
  new_name = gets.chomp
  new_user = User.create(name: new_name)
  new_user
end


def menu(user)
  puts "What would you like to do?"
  puts
  puts "1. Play a new game"
  puts "2. Exit"
  user_input = gets.chomp
  if user_input == "1"
    start_game(user)
    #new_game_session = GameSession.new(user_id: user.id)
  else
    puts "Thanks for playing!"
    return nil
  end
end
