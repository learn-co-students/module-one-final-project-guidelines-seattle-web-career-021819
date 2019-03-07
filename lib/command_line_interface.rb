def main_menu

  #The main menu the user can choose from
  puts ""
  puts "Welcome to Recipe Generator! Please enter a number to select an option: "
  puts ""
  puts "-----------------------------------------------"
  puts "1. Create New Account"
  puts "2. Search For Recipes"
  puts "3. View My Recipes"
  puts "4. Exit"
  puts "-----------------------------------------------"

  #User chooses an option from the menu
  user_input = STDIN.gets.chomp.downcase

  if user_input == "1"
    add_new_user
    recipe_list

  elsif user_input == "2"
    is_user_new
    user_input2

  elsif user_input == "3"
    view_saved_recipes

  elsif user_input == "4"
    exit

  else
    puts ""
    puts "Invalid entry, please enter a number 1 through 4 to make a selection."
    main_menu
  end
end

#Add new user name to database and prompt for different name if it already exists
def add_new_user
  puts ""
  puts "Please enter a new account name:"
  puts ""
  user_name = STDIN.gets.chomp.downcase
  if User.exists?(name: "#{user_name}")
    puts "Oopsie! That user name is not available, please choose another name."
    add_new_user
  else
  User.create(name: "#{user_name}")
  end
end

#Utilizes methods in api_communicator file to print a nice ordered list of recipes
def recipe_list
  i = get_ingredient_from_user
  array = get_recipes_from_api(i)
  print_recipe_names(array)
end

#Checks to see if user name is already in use, prompts to add new user name if it is, otherwise lets them move forward
def is_user_new
  puts ""
  puts "Please enter your account name:"
  puts ""
  current_name = STDIN.gets.chomp.downcase
    if User.exists?(name: "#{current_name}")
       User.find_by_name("#{current_name}")
    else
      puts ""
      puts "Hi new user!"
      add_new_user
    end
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
 Recipe.create(title: "#{users_choice}")
 puts users_choice
end

#User inputs their ingredient of choice
def get_ingredient_from_user
  puts ""
  puts "Please enter your favorite ingredient:"
  puts ""
  favorite_ingredient = STDIN.gets.chomp.downcase
end


#IN PROGRESS: figuring out how to save user's recipe choice:
def save_user_recipe
  puts ""
  puts "Please enter the number of the recipe you'd like to save:"
  puts ""
  recipe_number = STDIN.gets.chomp.downcase
end


#For option 3 - If user exists, pulls up their saved recipes, otherwise they go to add_new_user
def view_saved_recipes
  puts ""
  puts "Please enter your account name to view your saved recipes:"
  puts ""
  user_name = STDIN.gets.chomp.downcase
    if User.exists?(name: "#{user_name}")
      saved_user = User.find_by(name: "#{user_name}")
      puts ""
      puts "Hi there, #{saved_user.name.capitalize}, here are your saved recipes:"
      puts ""
    else
      add_new_user
  end
end
