def get_ingredient_from_user
  puts "please enter an ingredient"
  ingredient = gets.chomp.downcase
  get_recipes_by_ingredient(ingredient)
end

def get_recipes_by_ingredient(ingredient)

  url = 'http://www.recipepuppy.com/api/?i='
  response_string = RestClient.get(url+ingredient)
  response_hash = JSON.parse(response_string)

  response_hash["results"].each_with_index do |xx, i|
    puts "#{i+1}. #{xx["title"].strip}"
    puts "ingredients: #{xx["ingredients"]}"
    puts
  end
  recipe_menu
end

def recipe_menu
  puts "Please choose one:"
  puts "0. Return to main menu"
  puts "1. Save a recipe to favorites"
  puts "2. See the next ten recipes"
  choice = gets.chomp
  case choice
  when "0"
    welcome
  when "1"

  when "2"

  else
    puts "Invalid choice!"
  end
end

def save_to_favorites
  puts "Would you like to save any recipes to your favorites? (Y/N)"
  choice = gets.chomp.downcase
  if choice == "y"

  elsif choice == "n"

  else
    puts "Invalid choice!"
  end
end
