require 'terminal-table'
require 'colorize'

$curr_user = nil



def welcome_message
  pizza
  puts pizza
  a = Artii::Base.new :font => 'slant'
  puts a.asciify('Recipe Time!').colorize(:green)
  puts "--------------------------------------------------------------"
  puts "Welcome to Recipe Time! Do you have an account? (yes/no)".colorize(:magenta)
  puts "--------------------------------------------------------------"

  user_input = STDIN.gets.chomp.downcase

  if user_input == "yes"
    puts "Nice to have you back. What's your name?".colorize(:magenta)
    user_name = STDIN.gets.chomp.downcase
    if User.exists?(name: user_name)
    $curr_user = User.find_by(name: user_name)
    else
      puts "We can't find you in our system!".colorize(:magenta)
      add_new_user
    end
  else
    puts ""
    puts "Nice to have you!".colorize(:magenta)
    add_new_user
  end
end


def main_menu

is_running = true
  puts ""
  puts "Recipe Time is here to help you find new recipes! Search for new recipes based on your favorite ingredient and save recipe ideas for later.".colorize(:magenta)
  while is_running
    #The main menu the user can choose from
    puts ""
    puts "Please enter a number to select an option: ".colorize(:magenta)
    puts ""

    def table
    rows = []
    rows << ['1 -'.colorize(:green), "Search for New Recipes".colorize(:green)]
    rows << ['2 -'.colorize(:green), "View My Recipes".colorize(:green)]
    rows << ['3 -'.colorize(:green), "Delete A Recipe".colorize(:green)]
    rows << ['4 -'.colorize(:green), "Exit".colorize(:green)]
    table = Terminal::Table.new :title => "MAIN MENU".colorize(:green), :rows => rows
    end
    puts table
    #User chooses an option from the menu
    user_input = STDIN.gets.chomp.downcase

    if user_input == "1"
      user_input2
      svd = user_saved_recipes
      puts svd


    elsif user_input == "2"
      svd = user_saved_recipes
      puts svd

    elsif user_input == "3"
      # svd = user_saved_recipes
      # puts svd
      user_delete_recipes

    elsif user_input == "4"
      is_running = false

    else
      puts ""
      puts "Invalid entry, please enter a number 1 through 4 to make a selection.".colorize(:magenta)
    end
  end
end

#Add new user name to database and prompt for different name if it already exists
def add_new_user
  puts ""
  puts "Please enter a new account name:".colorize(:magenta)
  puts ""
  user_name = STDIN.gets.chomp.downcase
  while User.exists?(name: user_name)
    puts "Oopsie! That user name is not available, please choose another name.".colorize(:magenta)
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
    puts "Sorry, that recipe is not available.".colorize(:magenta)
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
   puts "Please input the number of which recipe you like:".colorize(:magenta)
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
  arr = []
  user_recipes = UserRecipe.all.select {|ur| ur.user_id == $curr_user.id}
  # saved_recipes = user_recipes.map {|ur| ur.recipe.title}
  user_recipes.each_with_index do |ur, index|
    arr << "#{index+1}: #{ur.recipe.title}"
  end
  puts ""
  puts ""
  puts "YUMMY!".colorize(:magenta)
  puts "Here are all of your saved recipes:".colorize(:magenta)
  puts ""
  # puts saved_recipes
  puts arr
end


#User inputs their ingredient of choice
def get_ingredient_from_user
  puts ""
  puts "Please enter your favorite ingredient:".colorize(:magenta)
  puts ""
  favorite_ingredient = STDIN.gets.chomp.downcase
end

def user_delete_recipes
  arr = []
 user_recipes = UserRecipe.all.select {|ur| ur.user_id == $curr_user.id}
 saved_recipes = user_recipes.map {|ur| ur.recipe.title}
 saved_recipes.each_with_index do |recipe, index|
   arr << "#{index+1}: #{recipe}"
    end
    puts "Here are your saved recipes:".colorize(:magenta)
    puts arr
    puts ""
    puts "Please enter the name of the recipe you'd like to delete: ".colorize(:magenta)
 unwanted_recipe = STDIN.gets.chomp
 recipe_to_be_deleted = Recipe.find_by(title: unwanted_recipe)
 if recipe_to_be_deleted == nil
   puts ""
   puts "Sorry, I couldnt find that recipe.".colorize(:magenta)
 else
   user_recipe = UserRecipe.find_by(recipe_id: recipe_to_be_deleted.id)
   user_recipe.delete
 end
end

#user delete recipe method in progress to delete by number
# def user_delete_recipes
#   arr = []
#  user_recipes = UserRecipe.all.select {|ur| ur.user_id == $curr_user.id}
#  saved_recipes = user_recipes.map {|ur| ur.recipe.title}
#
#  saved_recipes.each_with_index do |recipe, index|
#   arr << "#{index+1}: #{recipe}"
#    end
#  puts arr
#
#  puts ""
#  puts "Please enter the number of the recipe you'd like to delete: "
#  unwanted_recipe_num = STDIN.gets.chomp
#  unwanted_recipe_num = unwanted_recipe_num.to_i - 1
#  recipe = arr[unwanted_recipe_num][2..-1].strip
#  recipe_to_be_deleted = Recipe.find_by(title: recipe)
#  if recipe_to_be_deleted == nil
#    puts "Sorry I couldnt find it"
#  else
#    user_recipe = UserRecipe.find_by(recipe_id: recipe_to_be_deleted.id)
#    user_recipe.delete
#  end
# end
