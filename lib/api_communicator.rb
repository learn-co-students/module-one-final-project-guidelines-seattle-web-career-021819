require 'rest-client'
require 'json'
require 'pry'

def get_recipes_from_api(user_ingredient)
  s = "http://www.recipepuppy.com/api/?i=#{user_ingredient}"
  response_string = RestClient.get(s)
  response_hash = JSON.parse(response_string)

  recipes = response_hash["results"]
  arr = []
  recipes.each do |recipe|
    if recipe["ingredients"].include?(user_ingredient)
      arr << recipe
end
end
arr
end

def print_recipe_names(recipe_array)
  recipe_array.each_with_index do |recipe, i|
    title = recipe["title"].strip
    if title.length > 0
      puts "#{i+1}. #{title}"
    end
 end

end
