class CLI

	def self.run
		puts "Running CLI..."

		is_running = true
		while is_running
			self.main_menu
			input= STDIN.gets.chomp
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
		puts "0. Exit"
		puts "1. Characters"
		puts "2. Books"
		puts "3. Houses"
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
		puts "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
		puts "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
		HouseArt.display
		is_running = true
		is_running2 = true
 		while is_running
			puts "\n\n\n\n\n"
				puts "====================================================="
	  		puts "Think you know how many houses are in G.O.T? (yes/no)"
	  		puts "====================================================="
	      	input = STDIN.gets.chomp
		    if input.starts_with? "y" || input == "yes"
		      	puts "Give me your best guess.."
		      	input = STDIN.gets.chomp
			    if input == "#{House.all.count}"
			      	puts "Congratulations, you are officially a G.O.T NERD"
			      	is_running = false
			    else
			      	puts "Nice try, the correct Answer is #{House.all.count}"
					puts "Onward to the characters so you can NERD UP!!"
					is_running = false
				end
		    elsif input.starts_with? "n" || input == "no"
		      	puts "Ok, onward to the houses info so you can NERD UP!!"
		      	is_running = false
		  	else
		  		puts "Invalid input"
	        end
			DownArrow.display
		end
   		while is_running2
		   		puts
	        puts "Enter a house name to find out their Coat of Arms, or press 0 to return to main menu"
	        puts "===================================================================================="
	        puts "Suggested Searches (copy and paste works best!):"
	        puts "=============================================="
	        puts
	        puts "House Targaryen of King's Landing"
	        puts
					puts "House Baratheon of King's Landing"
					puts
	        puts "House Stark of Winterfell"
	        puts
	        puts "House Lannister of Casterly Rock"
					puts
					puts "House Baelish of Harrenhal"
					puts "================================="
					puts
	        input = STDIN.gets.chomp
	        puts
	        puts
	        found_house = House.find_by(name: input)
	        if found_house != nil
	        	slogan = found_house.coat_of_arms
	        	puts slogan
					SideArrow.display
	        elsif input == "0"
      			is_running2 = false
      		else
      			puts "invalid input"
      		end
 		end
	end
end


	       #  end
	       #  puts "Cool huh? Look up another house or press 0 to return to main menu"
      		# input = STDIN.gets.chomp
      		# if input == 0
      		# 	is_running2 = false
      		# end
