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
		Dragon.display
		puts "Which category would you like to choose?"
		puts "0. exit"
		puts "1. characters"
		puts "2. books"
		puts "3. houses"
	end

	def self.character
		is_running = true
		while is_running == true
			puts "Enter a name for the Character to lookup or enter 0 to return to main menu."
			puts "Names are case sensitive."
			input = STDIN.gets.chomp
			puts 
			puts
			found_character = Character.find_by(name: input)
			if found_character != nil

				brethren = found_character.house.characters.map do |house_character|
					house_character.name
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
		is_running = true
		while is_running == true
			BookArt.display
			puts "========================================================"
			puts "\nHere is a list of Game of Thrones books.\n\n"
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
			elsif 0 < input.to_i && input.to_i < 13
				puts "#{book_list[input.to_i - 1].name} has #{book_list[input.to_i - 1].characters.count} characters in it."
			else
				puts "Invalid input"
			end
			puts "\n\n\n\n\n\n\n"
		end
	end

	def self.house
		
	end

########## HELPER METHODS ############

	def self.get_json(url)
        response = RestClient.get(url)
        json = JSON.parse(response.body)
    end

    def uri_escape(term)
    	term.gsub(' ', '%20')
    end
end
