require 'rest-client'
require 'json'
require 'pry'

#Access the API to get an array of recipes that include the user's ingredient query
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
end

#Uses the output of get_recipes_from_api, which is an array of recipes, and makes them into a nice ordered list for the user to choose from
def print_recipe_names(recipe_array)
  arr = []
  recipe_array.each_with_index do |recipe, i|
    title = recipe["title"].strip
    if title.length > 0
      arr << "#{i+1}. #{title}"
      end
    end
  arr
end
