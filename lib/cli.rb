require_relative '../config/environment'

class CLI

  GOODBYE_TEXT = <<~'CHEERS'
                    o           o
                        o   o
                           o         o

                       o       o  o
                    ________._____________
                    |   .                |
                    |^^^.^^^^^.^^^^^^.^^^|
                    |     .   .   .      |
                     \      . . . .     /
 C H E E R S !!!       \     .  .     /
                         \    ..    /
                           \      /
                             \  /
                              \/
                              ||
                              ||
                              ||
                              ||
                              ||
                              /\
                             /;;\
                        ==============
  CHEERS

  

  attr_accessor :current_user

  def run
    puts BOOZY_TEXT.green
    self.get_user
    self.main_menu
    is_running = false
    while is_running
    end
  end

  def main_menu
    puts <<~MAIN_MENU

    #{"Hi, #{self.current_user.name.upcase.bold}! Pick your poison.".cyan}

    #{"[0]".red.bold} #{" Nope. I'm going pour myself a cold one.".cyan}

    #{"[1]".green.bold} #{" Sure... but let's play on easy mode.".cyan}

    #{"[2]".green.bold} #{" I consider myself a connoisseur. Let's play on hard mode.".cyan}

    #{"[3]".green.bold} #{" Get my current point total".cyan}

    MAIN_MENU
    choice = STDIN.gets.chomp
    if choice == "0"
      puts GOODBYE_TEXT.yellow
      is_running = false
    elsif choice == "1"  || choice == "one"
      game = Game.create(user: self.current_user, game_points: 0)
      game.easy_game
      game.save_game
      self.restart?
    elsif choice == "2"  || choice == "two"
      game = Game.create(user: self.current_user, game_points: 0)
      game.hard_game
      game.save_game
      self.restart?
    elsif choice == "3" || choice == "three"
      self.current_user.total
      self.restart?
    else
      puts "\n[Please enter in option 0, 1, 2, or 3]".cyan
      self.main_menu
    end
  end

  def get_user
    puts <<~GET_USER

    #{"Welcome!".cyan.bold}

    #{"Who may I ask is playing today?".cyan}
    GET_USER
    input = STDIN.gets.chomp
    self.current_user = User.find_or_create_by(name: input.downcase)
  end

  def restart?
    puts <<~RESTART

    #{"Would you like to play again, #{self.current_user.name.upcase.bold}?".cyan}

    #{"[0]".red} #{" GET ME OUT OF HERE! I'm thirsty.".cyan}

    #{"[1]".green} #{" Hell yah! Pour me another.".cyan}

    RESTART
    play_a = STDIN.gets.chomp
    if play_a == "0"
      puts GOODBYE_TEXT.yellow
      is_running = false
    else
      self.main_menu
    end
  end

end
