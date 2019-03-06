require_relative '../config/environment'
require_relative "../lib/api_communicator.rb"
require_relative "../lib/command_line_interface.rb"


puts "HELLO WORLD"
main_menu
i = get_ingredient_from_user
array = get_recipes_from_api(i)
print_recipe_names(array)
# user_choice = save_user_recipe -- working on saving the user's recipe choice
