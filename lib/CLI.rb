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
				puts "\n\n\n\n\n\n\n\n\n\n"
			elsif input == "0"
				is_running = false
			else
				puts "Nobody matches that name"
				puts "Please enter a valid name"
			end
		end



		#print out name of the character
		# ***NOT WORKING****
		# name = json["name"]
		# puts "Character: #{name}"

		#prompt the user to see if we want to lookup the seasons of GOT
		#they were featured in
		# puts "Would you like to see the seasons #{name} was featured in? (yes/no)"

		#if user says yes! print the array of seasons the character was featured
		# choice = STDIN.gets.chomp
		# if choice.starts_with? "y" || choice == "yes"
		# 	json = self.get_json(json["homeworld"])
		# 	tvSeries=json["tvSeries"]
		# 	puts "Seasons featured: #{tvSeries}"
		# 	puts
		# end
	end



	def self.book

	end

	def self.house
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
