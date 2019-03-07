require_relative '../config/environment'

class CLI
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



        is_running = true
        while is_running

          # self.get_user

          self.main_menu
            choice = STDIN.gets.chomp
            # exit
            if choice == "0"
                is_running = false
            # echo what the user types
            elsif choice == "1"
                self.easy_game
            elsif choice == "2"
                self.hard_game
            else
                puts "\n[Please enter in option 1, 2, or 3]"
            end
        end
    end

    def self.get_user
      puts "\nWelcome! \nWho may I ask is playing today?".red
      input = STDIN.gets.chomp
      new_user = User.create_user(input)
      new_user
    end

    def self.main_menu
        puts "\nHi, #{get_user.name.upcase}! would you like to guess some cocktail names based solely on their ingredients?".red
        puts "\n[0] Nope. exit".red
        puts "\n[1] Sure, but lets play on easy mode".red
        puts "\n[2] I consider myself a connisuer.  Let's play on hard mode.".red
    end

    def self.easy_game
        Game.create_game
        Round.create_round
    end

    def self.hard_game

    end



    def self.get_json(url)
        response = RestClient.get(url)
        json = JSON.parse(response.body)
    end
end
