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
		is_running2 = true
		while is_running2
			puts "========================================================"
	  		puts "Think you know how many characters are in G.O.T? (yes/no)"
	  		puts "========================================================"
	      	input = STDIN.gets.chomp
		    if input.starts_with? "y" || input == "yes"
		      	puts "Give me your best guess.."
		      	input = STDIN.gets.chomp
			    if input == "2021"
			      	puts "Congratulations, you are officially a G.O.T NERD"
			      	is_running2 = false
			    else
			      	puts "Nice try, the correct Answer is #{Character.all.map do |house_character|
															house_character.name
															end.uniq.count}"
					puts "Onward to the characters so you can NERD UP!!"
					is_running2 = false
				end
		    elsif input.starts_with? "n" || input == "no"
		      	puts "Ok, onward to the characters info so you can NERD UP!!"
		      	is_running2 = false
		  	else
		  		puts "Invalid input"
	        end
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
        binding.pry
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
		puts "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
		puts "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
		BookArt.display
		is_running = true
		while is_running == true
<<<<<<< HEAD
			BookArt.display
			puts "========================================================"
			puts "\nHere is a list of Game of Thrown books.\n\n"
=======
			puts "\n========================================"
			puts "Here is a list of Game of Thrones books."
			puts "========================================\n\n"
>>>>>>> d82b3bbf217c923d8f98185f4b588c05274b8261
			puts "Books: "
				book_list = Book.all[0..2]
				book_list << Book.all[4]
				book_list << Book.all[7]
				book_list.each_with_index do |book, i|
					puts "#{i+1}. #{book.name}."
				end
			puts "\nGraphic Novels and Satellite stories: "
				other_list = Book.all[5,6]
				other_list << Book.all[3]
				other_list.each_with_index do |book, i|
					puts "#{i+1}. #{book.name}."
				end
			puts "\nEnter a book number to see what a loon George R.R. Martin is, or push 0 to return to main menu"
			input = STDIN.gets.chomp
			if input == "0"
				is_running = false
<<<<<<< HEAD
			elsif input == "1"
				puts "#{book_list[0].name} has #{book_list[0].characters.count} characters in it."
			elsif input == "2"
				puts "#{book_list[1].name} has #{book_list[1].characters.count} characters in it."
			elsif input == "3"
				puts "#{book_list[2].name} has #{book_list[2].characters.count} characters in it."
			elsif input == "4"
				puts "#{book_list[3].name} has #{book_list[3].characters.count} characters in it."
			elsif input == "5"
				puts "#{book_list[4].name} has #{book_list[4].characters.count} characters in it."
			else
				puts "Invalid input"
			end
			STDIN.gets.chomp
=======
			elsif 0 < input.to_i && input.to_i < 12
				puts "#{book_list[input.to_i - 1].name} has #{book_list[input.to_i - 1].characters.count} characters in it."
			else	
				puts "Invalid input"
			end
>>>>>>> d82b3bbf217c923d8f98185f4b588c05274b8261
		end
	end

	def self.house
<<<<<<< HEAD
    HouseArt.display
    is_running = true

		while is_running == true
=======
    	is_running = true
    	HouseArt.display
		while is_running == true
    	puts "========================================================"
>>>>>>> d82b3bbf217c923d8f98185f4b588c05274b8261
      puts "Think you know how many Houses are in G.O.T? (yes/no)"
      puts "If no press 0 to return to main menu"
      input = STDIN.gets.chomp
      if input == "0"
        is_running = false
      elsif input.starts_with? "y" || input == "yes"
        puts "Give me your best guess.."
        puts "========================="

      input = STDIN.gets.chomp
      if input == "443"
        puts "Congratulations, you are officially a G.O.T NERD!"
        puts "================================================="
      else
        puts "Nice try, the correct Answer is #{House.count}"
<<<<<<< HEAD
      	puts "=============================================="
      end
    end
    puts "\n\n\n\n\n\n\n"
        puts "Enter a house name to find out their Coat of Arms"
        puts "=================================================="
        puts "Suggested Searches:"
          puts "================="
        puts
        puts "House Targaryen of King's Landing"
        puts
        puts "House Stark of Winterfell"
        puts
        puts "House Lannister of Casterly Rock"
        puts
        input = STDIN.gets.chomp
        puts
        puts
        found_house = House.find_by(name: input)
          if found_house != nil
            slogan = found_house.coat_of_arms
          puts slogan
      end
      STDIN.gets.chomp
=======
	    end
    puts "Enter a house name to find out their Coat of Arms"
      input = STDIN.gets.chomp
      puts
      puts
    found_house = House.find_by(name: input)
    if found_house != nil
    slogan = found_house.coat_of_arms
    puts slogan
    end
>>>>>>> d82b3bbf217c923d8f98185f4b588c05274b8261
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
