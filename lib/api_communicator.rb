def get_recipes_by_ingredient(ingredient)

  url = 'http://www.recipepuppy.com/api/?i='
  response_string = RestClient.get(url+ingredient)
  response_hash = JSON.parse(response_string)

  response_hash["results"].each_with_index do |xx, i|
    puts "#{i+1}. #{xx["title"].strip}"
    puts "ingredients: #{xx["ingredients"]}"
    puts
  end
  save_to_favorites
end

def save_to_favorites
  puts "Would you like to save any recipes to your favorites? (Y/N)"
  choice = gets.chomp.downcase
end

  # We can access the recipe name through response_hash["results"][0]["title"]
  # We can collect the recipe url through response_hash["results"][0]["href"]
  # We can collect the recipe ingredients  response_hash["results"][0]["ingredients"].split






# def get_character_movies_from_api(character)
#   #make the web request
#   response_string = RestClient.get('http://www.swapi.co/api/people/')
#   json = JSON.parse(response_string.body)
#   json = json["results"]
#   result = json.find do |instance|
#     instance["name"].downcase == character
#   end
#   result["films"]
# end
#
# def print_movies(films)
#   # some iteration magic and puts out the movies in a nice list
#   films.map! do |url|
#     response_string = RestClient.get(url)
#     film = JSON.parse(response_string.body)["title"]
#   end
#   i = 1
#   films.each do |film|
#     puts "#{i}. #{film}"
#     i += 1
#   end
# end
#
# def show_character_movies(character)
#   films = get_character_movies_from_api(character)
#   print_movies(films)
# end
#
# ## BONUS
#
# # that `get_character_movies_from_api` method is probably pretty long. Does it do more than one job?
# # can you split it up into helper methods?
