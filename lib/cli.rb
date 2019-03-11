require_relative '../config/environment'

class CLI

  @@input = ""

  @@cheers = <<~'CHEERS'
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


  def self.input
    @@input
  end


  def self.run
    puts "



        /
      #/
      ##
      ##
      ##
      ## /###     /###     /###     ######  ##   ####
      ##/ ###  / / ###  / / ###  / /#######  ##    ###  /
      ##   ###/ /   ###/ /   ###/ /      ##  ##     ###/
      ##    ## ##    ## ##    ##         /   ##      ##
      ##    ## ##    ## ##    ##        /    ##      ##
      ##    ## ##    ## ##    ##       ###   ##      ##
      ##    ## ##    ## ##    ##        ###  ##      ##
      ##    /# ##    ## ##    ##         ### ##      ##
       ####/    ######   ######           ##  #########
        ###      ####     ####            ##    #### ###
                                          /           ###
                                         /     #####   ###
                                        /    /#######  /#
                                       /    /      ###/
".green


    self.get_user
    self.main_menu
    is_running = false
    while is_running
    end
  end


  def self.main_menu
    puts <<~MAIN_MENU

    #{"Hi, #{@@input.upcase.bold}! Pick your poison.".cyan}

    #{"[0]".red.bold} #{" Nope. I'm going pour myself a cold one.".cyan}

    #{"[1]".green.bold} #{" Sure... but let's play on easy mode.".cyan}

    #{"[2]".green.bold} #{" I consider myself a connoisseur. Let's play on hard mode.".cyan}

    #{"[3]".green.bold} #{" Get my current point total".cyan}

    MAIN_MENU
    choice = STDIN.gets.chomp
    if choice == "0"
      puts @@cheers.yellow
      is_running = false
    elsif choice == "1"  || choice == "one"
      Game.create_game
      4.times do
        self.easy_game
      end
      Game.save_game
      self.restart?
    elsif choice == "2"  || choice == "two"
      Game.create_game
      4.times do
        self.hard_game
      end
      Game.save_game
      self.restart?
    elsif choice == "3" || choice == "three"
      User.total
      self.restart?
    else
      puts "\n[Please enter in option 0, 1, 2, or 3]".cyan
      self.main_menu
    end
  end

  def self.get_user
    puts <<~GET_USER

    #{"Welcome!".cyan.bold}

    #{"Who may I ask is playing today?".cyan}
    GET_USER
    @@input = STDIN.gets.chomp
    User.create_or_find_user(input)
  end

  def self.restart?
    puts <<~RESTART

    #{"Would you like to play again, #{@@input.upcase.bold}?".cyan}

    #{"[0]".red} #{" GET ME OUT OF HERE! I'm thirsty.".cyan}

    #{"[1]".green} #{" Hell yah! Pour me another.".cyan}

    RESTART
    play_a = STDIN.gets.chomp
    if play_a == "0"
      puts @@cheers.yellow
      is_running = false
    else
      self.main_menu
    end
  end

  def self.easy_game
    Round.create_round
    Round.get_questions_and_answers
    Round.play_game
    answer = STDIN.gets.chomp
    Round.save_round(answer)
  end

  def self.hard_game
    Round.create_round
    Round.get_questions_and_answers
    Round.play_game_hard
    answer = STDIN.gets.chomp
    Round.save_round(answer)
  end

end
