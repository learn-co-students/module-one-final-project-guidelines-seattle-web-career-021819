$curr_user = nil

def welcome_message
  puts "------------------------------------------------------"
  puts "Welcome to Recipe Generator! Do you have an account?"
  puts "------------------------------------------------------"

  user_input = STDIN.gets.chomp.downcase

  if user_input == "yes"
    puts "Nice to have you back. What's your name?"
    user_name = STDIN.gets.chomp.downcase
    $curr_user = User.find_by(name: user_name)
  else
    puts ""
    puts "Nice to have you!"
    add_new_user
  end
end


def main_menu

  #The main menu the user can choose from
  puts ""
  puts "Welcome to Recipe Generator! Please enter a number to select an option: "
  puts ""
  puts "-----------------------------------------------"
  puts "1. Search for New Recipes"
  puts "2. View My Recipes"
  puts "3. Exit"
  puts "-----------------------------------------------"

  #User chooses an option from the menu
  user_input = STDIN.gets.chomp.downcase

  if user_input == "1"
    user_input2

  elsif user_input == "2"
    user_saved_recipes
    # r = user_input2
    # save_to_user_recipe(r)

  elsif user_input == "3"
    exit

  else
    puts ""
    puts "Invalid entry, please enter a number 1 through 3 to make a selection."
    main_menu
  end
end

#Add new user name to database and prompt for different name if it already exists
def add_new_user
  puts ""
  puts "Please enter a new account name:"
  puts ""
  user_name = STDIN.gets.chomp.downcase
  while User.exists?(name: user_name)
    puts "Oopsie! That user name is not available, please choose another name."
    user_name = STDIN.gets.chomp.downcase
  end
  $curr_user = User.create(name: user_name)
  end


#Utilizes methods in api_communicator file to print a nice ordered list of recipes
def recipe_list
  i = get_ingredient_from_user
  array = get_recipes_from_api(i)
  print_recipe_names(array)
end


#from Chris:
def user_input2
   arr = []
   arr << recipe_list
   new_array = arr.flatten
   puts new_array
   puts ""
   puts "Please input the number of which recipe you like:"
   desired_recipe_num = STDIN.gets.chomp
   users_choice = new_array[desired_recipe_num.to_i-1]
   create_recipe(users_choice)
end

#creates a new recipe instance and associates it with current user - yay!
def create_recipe(title)
  recipe_array = []
  r = Recipe.create(title: title)
  UserRecipe.create(user_id: $curr_user.id, recipe_id: r.id)
end

#IN PROGRESS: trying to output all recipes that user has saved
def user_saved_recipes
  recipe_array = []
  ur = UserRecipe.where(user_id: $curr_user.id)

  # ur.each do |x|
  #   if x.recipe_id == Recipe.all.id
  #     recipe_array << Recipe.name
  #     puts recipe_array
    # else

      puts "You have no saved recipes."
    end


#User inputs their ingredient of choice
def get_ingredient_from_user
  puts ""
  puts "Please enter your favorite ingredient:"
  puts ""
  favorite_ingredient = STDIN.gets.chomp.downcase
end
