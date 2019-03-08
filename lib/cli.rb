require_relative '../config/environment'



class CLI

  @@input = ""
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

        puts "\nHi, #{@@input.upcase.bold}! Pick your poison.".cyan
        puts "\n[0]".red.bold + " Nope. exit".cyan
        puts "\n[1]".green.bold + " Sure, but let's play on easy mode".cyan
        puts "\n[2]".green.bold + " I consider myself a connisuer.  Let's play on hard mode.".cyan
        puts
        choice = STDIN.gets.chomp
        # exit

          if choice == "0"
              is_running = false
          # echo what the user types
          elsif choice == "1"  || choice == "one"
                Game.create_game
              i = 0
              for i in i..4 do
                self.easy_game
                i+= 1
              end
              Game.save_game
              self.restart?
          elsif choice == "2"  || choice == "two"
            Game.create_game
            i = 0
            for i in i..4 do
              self.hard_game
              i+= 1
            end
            Game.save_game
            self.restart?
          else
              puts "\n[Please enter in option 0, 1, or 2]"

          end
    end

    def self.get_user
      puts "\nWelcome!".cyan.bold
      puts "\nWho may I ask is playing today?".cyan
      @@input = STDIN.gets.chomp
      User.create_user(input)
    end

    def self.restart?
      puts "\n                    o           o
                      o   o
                         o         o

                     o       o  o
                  ________._____________
                  |   .                |
                  |^^^.^^^^^.^^^^^^.^^^|
                  |     .   .   .      |
                   \\      . . . .     /
C H E E R S !!!      \\     .  .     /
                       \\    ..    /
                         \\      /
                          \\  /
                            \\/
                            ||
                            ||
                            ||
                            ||
                            ||
                            /\\
                           /;;\\
                      ==============
      "
      puts "\nWould you like to play again, #{@@input.upcase.bold}?".cyan
        puts "\n[0]".red + " GET ME OUT OF HERE! I'm thirsty.".cyan
        puts "\n[1]".green + " Hell yah! Pour me another.".cyan
        play_a = STDIN.gets.chomp
        if play_a == "0"
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



    # def self.get_json(url)
    #     response = RestClient.get(url)
    #     json = JSON.parse(response.body)
    # end
end
