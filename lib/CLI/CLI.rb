

def play_game
  welcome
  current_user = get_user
  menu(current_user)
end

def welcome
  system "clear"
  aa = Artii::Base.new :font => 'big'
  bb = Artii::Base.new :font => 'univers'
  cc = Artii::Base.new :font => 'epic'
  puts aa.asciify('Welcome to')
  sleep(2)
  system "clear"
  puts aa.asciify("Who Wants To Be A")
  sleep(1)
  puts bb.asciify("Millionbear").center(100)
  puts cc.asciify("$$$").center(100)
  sleep(2)
  system "clear"
  puts aa.asciify "With your host"
  sleep(1)
  system "clear"
  puts bb.asciify "Alex Trebear"
  sleep(2)
  system "clear"
end

def get_user
  puts "What's your name?"
  new_name = gets.chomp
  puts
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
