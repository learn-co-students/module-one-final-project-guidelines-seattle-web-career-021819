def welcome
  puts "Welcome to our program!"

  run = true
  while run
    puts "Have you been here before? (y/n)"
    choice = gets.chomp.downcase

    if choice == "y"
      puts "Please enter username:"
      name = gets.chomp
      username = User.find_by(name: name)
      run = false
    elsif choice == "n"
      puts "Create username:"
      name = gets.chomp
      username = User.create(name: name)
      run = false
    else
      puts "Invalid input!"
    end
  end
end

def menu
  puts "0. exit"
  puts "1. search for a recipe"
  puts "2. view favorite recipes"
  puts "3. view most popular recipes"
end

def get_ingredient_from_user
  puts "please enter an ingredient"
  ingredient = gets.chomp.downcase
  # use gets to capture the user's input. This method should return that input, downcased.
end
