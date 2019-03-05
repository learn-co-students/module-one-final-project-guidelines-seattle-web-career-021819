def welcome
  puts "Greetings friend! Feeling hungry?!"
end

#use STDIN?
def get_ingredient_from_user
  puts "Please enter your favorite ingredient:"
  favorite_ingredient = STDIN.gets.chomp.downcase
end
