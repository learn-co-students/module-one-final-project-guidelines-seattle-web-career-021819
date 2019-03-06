require_relative '../config/environment'
require_relative '../db/seeds'

# response_string = RestClient.get('http://www.recipepuppy.com/api/')
# response_hash = JSON.parse(response_string)
# We can access the recipe name through response_hash["results"][0]["title"]
# We can collect the recipe url through response_hash["results"][0]["href"]
# We can collect the recipe ingredients  response_hash["results"][0]["ingredients"].split
# binding.pry
puts "HELLO WORLD"
welcome
get_ingredient_from_user
