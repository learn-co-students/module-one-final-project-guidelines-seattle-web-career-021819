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



        is_running = true
        while is_running

          self.get_user

          self.main_menu
            choice = STDIN.gets.chomp
            # exit
            if choice == "0"
                is_running = false
            # echo what the user types
            elsif choice == "1"  || choice == "one"
                self.easy_game
            elsif choice == "2"  || choice == "two"
                self.hard_game
            else
                puts "\n[Please enter in option 1, 2, or 3]"
            end
        end
    end


    def self.main_menu
        puts "\nHi, #{@@input.upcase}! would you like to guess some cocktail names based solely on their ingredients?".red
        puts "\n[0] Nope. exit".red
        puts "\n[1] Sure, but lets play on easy mode".red
        puts "\n[2] I consider myself a connisuer.  Let's play on hard mode.".red
    end

    def self.get_user
      puts "\nWelcome! \nWho may I ask is playing today????".red
      @@input = STDIN.gets.chomp
      new_user = User.create_user(input)
      new_user
    end



    def self.easy_game
      puts "hello"
        Game.create_game
        var = Round.create_round
        binding.pry
        puts "#{Round.question}"
        Round.choices { |choice| puts "#{choice}" }

    end

    # def self.hard_game
    #
    # end



    # def self.get_json(url)
    #     response = RestClient.get(url)
    #     json = JSON.parse(response.body)
    # end
end
