GAME_OF_THRONES_URL = "https://anapioficeandfire.com/api/"

class CLI


def self.run
 puts "Running CLI..."

is_running = true
	while is_running
		self.main_menu
		input= STDIN.gets.chomp
		#echo what the user types
		if input == "0"
		is_running = false
		elsif input == "1"
			self.character
		elsif input == "2"
			self.book
		elsif input == "3"
			self.house
		else
			puts "Invalid input."
		end
	end
end

	def self.main_menu
		puts "\n\n\n\n\n\n\n\n\n\n\n\n"
		Dragon.display
		puts "Which category would you like to choose?"
		puts "0. exit"
		puts "1. characters"
		puts "2. books"
		puts "3. houses"
	end

	def self.character
		is_running = true
		puts "========================================================"
  		puts "Think you know how many characters are in G.O.T? (yes/no)"
  		puts "========================================================"
      	input = STDIN.gets.chomp
	    if input.starts_with? "y" || input == "yes"
	      puts "Give me your best guess.."
	    else
	      puts "Ok, please put 0 to return to Main menu"
        end
	    input = STDIN.gets.chomp
	    if input == "2021"
	      puts "Congratulations, you are officially a G.O.T NERD"
	    else
	      puts "Nice try, the correct Answer is #{Character.all.map do |house_character|
													house_character.name
													end.uniq.count}"
		end
		while is_running == true
			puts "==========================================================================="
			puts "Enter a name for the Character to lookup or enter 0 to return to main menu."
			puts "==========================================================================="
			input = STDIN.gets.chomp
			puts
			puts
			found_character = Character.find_by(name: input)
			if found_character != nil

				brethren = found_character.house.characters.map do |house_character|
					if house_character.name != input
					house_character.name
					end
				end.uniq
				puts brethren
				puts "\n\n"
				puts "#{found_character.name} has allegience with #{found_character.house.name}."
				puts "---------------------------------------------------------------"
				puts "Above are #{found_character.name}'s house brethren"
				puts "\n\n\n\n\n\n\n"
			elsif input == "0"
				is_running = false
			else
				puts "Nobody matches that name"
				puts "Please enter a valid name"
			end
		end
	end

	def self.book
		puts "\n\n\n\n\n\n\n\n\n\n\n\n"
		BookArt.display
		is_running = true
		while is_running == true
			puts "\n========================================"
			puts "Here is a list of Game of Thrones books."
			puts "========================================\n\n"
			puts "Books: "
				book_list = Book.all[0..2]
				book_list << Book.all[4]
				book_list << Book.all[7]
				book_list.each_with_index do |book, i|
					puts "#{i+1}. #{book.name}."
				end
			puts "\nGraphic Novels and Satellite stories: "
				other_list = []
				other_list << Book.all[3]
				other_list << Book.all[5]
				other_list << Book.all[6]
				other_list << Book.all[8]
				other_list << Book.all[9]
				other_list << Book.all[10]
				other_list.each_with_index do |book, i|
					puts "#{i+6}. #{book.name}."
				end
				book_list << other_list
				book_list = book_list.flatten
			puts "\nEnter a book number to see what a loon George R.R. Martin is, or push 0 to return to main menu"
			input = STDIN.gets.chomp
			if input == "0"
				is_running = false
			elsif 0 < input.to_i && input.to_i < 12
				puts "#{book_list[input.to_i - 1].name} has #{book_list[input.to_i - 1].characters.count} characters in it."
			else	
				puts "Invalid input"
			end
		end
	end

	def self.house

    	is_running = true
    	HouseArt.display
		while is_running == true
<<<<<<< HEAD
    	puts "========================================================"
      puts "Think you know how many Houses are in G.O.T? (yes/no)"
      input = STDIN.gets.chomp
      if input.starts_with? "y" || input == "yes"
        puts "Give me your best guess.."
      else
        puts "Ok, please put 0 to return to Main menu"
      end
        input = STDIN.gets.chomp
      if input == "443"
            puts "Congratulations, you are officially a G.O.T NERD"
      else
        puts "Nice try, the correct Answer is #{House.count}"
	    end
    puts "Enter a house name to find out their Coat of Arms"
      input = STDIN.gets.chomp
      puts
      puts
    found_house = House.find_by(name: input)
    if found_house != nil
# binding.pry
    slogan = found_house.coat_of_arms
    puts slogan
    end


=======
    		puts "========================================================"
      		puts "Think you know how many Houses are in G.O.T? (yes/no)"
	      	input = STDIN.gets.chomp
		    if input.starts_with? "y" || input == "yes"
		      puts "Give me your best guess.."
		    else
		      puts "Ok, please put 0 to return to Main menu"
	        end
		      input = STDIN.gets.chomp
  	        if input == "443"
		      puts "Congratulations, you are officially a G.O.T NERD"
		    else
		      puts "Nice try, the correct Answer is #{House.count}"
			end
	    puts "Enter a house name to find out their Coat of Arms"
      	input = STDIN.gets.chomp
      	puts
      	puts
    	found_house = House.where(name: input)
	    if found_house != nil

	    slogan = found_house.coat_of_arms
	    puts slogan
	    end
>>>>>>> 2468518e70e100e11cd610c4cc51388cc3d4ff9e
  end
end
########MIGHT USE LATER##################
# 	puts "Browse top characters:"
#
# 	json = get_json(GAME_OF_THRONES_URL)
# 	facts = ["characters"]["name"]
# 	facts = facts.map do |facts|
# 		facts["name"]
# 	end
#
# end

########## HELPER METHODS ############

	def self.get_json(url)
        response = RestClient.get(url)
        json = JSON.parse(response.body)
    end

    def uri_escape(term)
    	term.gsub(' ', '%20')
    end
end
