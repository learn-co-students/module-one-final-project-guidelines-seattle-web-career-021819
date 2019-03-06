require_relative '../config/environment.rb'
##Run file responsible for executing the actual program##
# -Create welcome message
# 		-Create user input for the player to search for (include error handling for invalid 	players)
# 		Acceptance criteria
# 			Return a player first and last name in proper case as a hash key value pair (first/last name)

#lookup formatting table of results in CLI

#welcome message

p "Welcome to NBA Player Stat Tracker!"
sleep 1
p "We make it easy to track your favorite players stats through the NBA season."
User.user_authentication
sleep 1
player_query = User.full_user_input_and_search

Player.search_player_api_for_id(player_query)
