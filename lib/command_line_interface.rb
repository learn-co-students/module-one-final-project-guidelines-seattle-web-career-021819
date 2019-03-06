def welcome
  puts "Welcome to our program!"
end

def get_ingredient_from_user
  puts "please enter an ingredient"
  ingredient = gets.chomp.downcase
  # use gets to capture the user's input. This method should return that input, downcased.
end
