$curr_user = nil

def welcome_message
  puts "------------------------------------------------------"
  puts "Welcome to Recipe Generator! Do you have an account? (yes/no)"
  puts "------------------------------------------------------"

  user_input = STDIN.gets.chomp.downcase

  if user_input == "yes"
    puts "Nice to have you back. What's your name?"
    user_name = STDIN.gets.chomp.downcase
    if User.exists?(name: user_name)
    $curr_user = User.find_by(name: user_name)
    else
      add_new_user
    end
  else
    puts ""
    puts "Nice to have you!"
    add_new_user
  end
end


def main_menu

  #The main menu the user can choose from
  puts ""
  puts "MAIN MENU"
  puts ""
  puts "Please enter a number to select an option: "
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
    svd = user_saved_recipes
    puts svd
    return main_menu

  elsif user_input == "2"
    svd = user_saved_recipes
    puts svd

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
  if array.length == 0
    puts ""
    puts "Sorry, that recipe is not available."
    return main_menu
  else
    print_recipe_names(array)
  end
end


#from Chris - user chooses the recipe they want by number and it is added to their recipe list
def user_input2
   arr = []
   arr << recipe_list
   new_array = arr.flatten
   puts new_array
   puts ""
   puts "Please input the number of which recipe you like:"
   desired_recipe_num = STDIN.gets.chomp
   users_choice = new_array[desired_recipe_num.to_i-1]
   create_recipe(users_choice[2..-1].strip)
end

#creates a new recipe instance and associates it with current user - yay!
def create_recipe(title)
  recipe_array = []
  r = Recipe.create(title: title)
  UserRecipe.create(user_id: $curr_user.id, recipe_id: r.id)
end

#Outputs all recipes that user has saved
def user_saved_recipes
  user_recipes = UserRecipe.all.select {|ur| ur.user_id == $curr_user.id}
  saved_recipes = user_recipes.map {|ur| ur.recipe.title}
  puts ""
  puts "YUMMY!"
  puts "Here are all of your saved recipes:"
  puts ""
  saved_recipes
end


#User inputs their ingredient of choice
def get_ingredient_from_user
  puts ""
  puts "Please enter your favorite ingredient:"
  puts ""
  favorite_ingredient = STDIN.gets.chomp.downcase
end

def user_delete_recipes
  arr = []
 user_recipes = UserRecipe.all.select {|ur| ur.user_id == $curr_user.id}
 saved_recipes = user_recipes.map {|ur| ur.recipe.title}
 puts ""
 puts "Please enter the name of the recipe you'd like to delete: "
 unwanted_recipe = STDIN.gets.chomp.downcase
 recipe_to_be_deleted = Recipe.find_by(title: unwanted_recipe)
 recipe_to_be_deleted.delete
end
