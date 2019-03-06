def main_menu
  # puts "Greetings friend! Do you have an account?"
  #
  # user_input = STDIN.gets.chomp.downcase
  #
  # if user_input == "yes" || "y"
  #   puts "Welcome back, what's your name?"
  #   user_name = STDIN.gets.chomp.downcase
  #

  puts "Welcome! Please enter a number to select an option: "
  puts "1. Create New Account"
  puts "2. Search For Recipes"
  puts "3. View My Recipes"
  puts "4. Exit"

  user_input = STDIN.gets.chomp.downcase

  if user_input == "1"
    puts "Welcome! What's your name?"
    user_name = STDIN.gets.chomp.downcase
    User.create(name: "#{user_name}")
    #what next after a new user enters name and is saved?
  elsif user_input == "2"
    puts "Please enter your account name:"
    user_name = STDIN.gets.chomp.downcase

    get_ingredient_from_user

  elsif user_input == "3"
    puts "Please enter your name to view your saved recipes:"
    user_name = STDIN.gets.chomp.downcase
    saved_user = User.find_by(name: "#{user_name}")
    puts "Hi there, #{user_name}, here are your saved recipes:"
    binding.pry
    #what next? need to pull up saved recipes -- make method
  elsif user_input == "4"
    exit
  else
    puts "Invalid entry, please enter a number 1 through 4 to make a selection."
    main_menu
  end

end



def get_ingredient_from_user
  puts "Please enter your favorite ingredient:"
  favorite_ingredient = STDIN.gets.chomp.downcase
end


# figuring out how to save user's recipe choice:
# def save_user_recipe
#   puts "Please enter the number of the recipe you'd like to save:"
#   recipe_number = STDIN.gets.chomp.downcase
#
# end
