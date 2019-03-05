GAME_OF_THRONES_URL = "https://anapioficeandfire.com/api/"

class CLI
	def self.run
		puts "running CLI..."

		is_running = true
		while is_running
			self.main_menu
			user_input = STDIN.gets.chomp
			if user_input == "3"
				is_running = false
				json = get_json(GAME_OF_THRONES_URL)
				puts json
			elsif user_input == "1"  || "characters"
				self.character_menu
			elsif user_input == "2" || "seasons"
				self.season_menu
				#build out season option interactions
			else 
				puts "Invalid choice"
			end
		end
	end

	def self.main_menu
		puts "What would you like to do?"
		puts
		puts "1. Characters"
		puts "2. Seasons"
		puts "3. Exit"
		puts
	end

	def self.character_menu
		puts "Choose a character to see which seasons they are in."
		puts
		puts "1. Jon Snow"
		puts "2. Geoffrey Barathian"
		puts "3. Khal Drogo"
		puts "4. Catlin Stark"
		puts "5. HODOR!!"
		puts "6. Type in a name to see if they are in the F&I universe."
		puts "7. Return to Main Menu"
		puts
		#gather user input and GoT JSON
		user_input = STDIN.gets.chomp
		json = get_json(GAME_OF_THRONES_URL/characters)
		#build switches for user input
	end

	def self.season_menu
		#Enter id to lookup
		puts "Select a season to see which characters are included"
		puts
		puts "1. Season 1"
		puts "2. Season 2"
		puts "3. Season 3"
		puts "4. Season 4"
		puts "5. Season 5"
		puts "6. Season 6"
		puts "7. Return to Main Menu"
		puts
		#perform network request
		url= json["name"]
		puts "Character: #{name}"

		#prompt the user to see if we want to see what seasons they are featured in
		puts "Would you like to see their featured seasons (yes/no)"

		#if user says yes! then print hte name of seasons featured
		# user_input = STDIN.gets.chomp
		# if user_input.start_with? "y" || user_input = "yes"
		# 	json= self.get_json(json["season"])	
		# 	name = json["name"]
		# 	puts "Seasons featured: #{name}"
		# 	puts
		# end
	end










	

	def self.get_json(url)
        response = RestClient.get(url)
        json = JSON.parse(response.body)
    end
end
