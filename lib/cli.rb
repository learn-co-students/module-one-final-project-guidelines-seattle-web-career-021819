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

        puts "\nHi, #{@@input.upcase}! would you like to guess some cocktail names based solely on their ingredients?".red
        puts "\n[0] Nope. exit".red
        puts "\n[1] Sure, but lets play on easy mode".red
        puts "\n[2] I consider myself a connisuer.  Let's play on hard mode.".red

        choice = STDIN.gets.chomp
        # exit

          if choice == "0"
              is_running = false
          # echo what the user types
          elsif choice == "1"  || choice == "one"
                Game.create_game
              i = 0
              for i in i..1 do
                self.easy_game
                i+= 1
              end
              Game.save_game

          elsif choice == "2"  || choice == "two"
            Game.create_game
            i = 0
            for i in i..1 do
              self.hard_game
              i+= 1
            end
            Game.save_game

          else
              puts "\n[Please enter in option 0, 1, or 2]"

          end
    end

    def self.get_user
      puts "\nWelcome! \nWho may I ask is playing today????".red
      @@input = STDIN.gets.chomp
      User.create_user(input)


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
