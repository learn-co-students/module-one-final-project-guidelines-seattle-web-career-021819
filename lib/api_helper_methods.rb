def get_json(url)
  response = RestClient.get(url)
  json = JSON.parse(response.body) #=> json = hash, containing "page", "pages", "tv_shows" keys
end


## ========== OPTION 1. FROM USER MAIN MENU (cont.)========== ##
def search_results(all_pages)
  formatted_list = []
  all_pages.each do |show_hash|
    formatted_list << "id. #{show_hash["id"]} - #{show_hash["name"]}"
  end
  if formatted_list.count != 1
    self.print_search_results(formatted_list)
  else
    fetch_show_by_id(all_pages[0]["id"].to_s)
  end
end



def fetch_show_by_id(num)
  url = API_URL + "show-details?q=" + num
  show_hash = get_json(url)["tvShow"]
  self.display_found_show_details(show_hash)
end


## ========== OPTION 2. FROM USER MAIN MENU ========== ##
def print_list_of_favorites(user)
  show_array = []
  favorites_array = fetch_list_of_favorites(user)
  if favorites_array.count == 0
    system('clear')
    puts "You have no favorites yet!"
  else
    favorites_array.each do |favorite_instance|
      show =  Show.find_by(api_id: favorite_instance.show_id)
      show_array << show.name
    end
    system('clear')
    puts @menu_message
    puts
    puts "Here are your favorite shows!"
    puts "-----------------------------"
    puts show_array.sort
  end
  puts
  puts "Press enter to return to main menu or enter a show to remove from favorites"
  user_input = STDIN.gets.chomp
  if user_input.strip == ""
    CLI.main_menu
  elsif show_array.include?(user_input)
    delete_show_from_favorites(user_input, user)
  else
    @menu_message = "Please enter a valid show name"
    print_list_of_favorites(user)
  end
end



def delete_show_from_favorites(user_input, user)
  selected_show_api = Show.find_by(name: user_input).api_id
  Favorite.where(user_id: @user.id, show_id: selected_show_api).destroy_all
  @menu_message = "#{user_input} has been removed from your Favorites"
  print_list_of_favorites(@user)
end


## ========== OPTION 3. FROM USER MAIN MENU ========== ##
def fetch_episodes_for_playlist(user)
  all_episodes_array = []
  favorites_array = fetch_list_of_favorites(user)
  favorites_array.each do |favorite_instance|
    all_episodes_array += fetch_episodes_by_id(favorite_instance.show_id)
  end
  add_playlist_to_table(all_episodes_array, user)
end



def fetch_list_of_favorites(user)
  favorites_array = Favorite.where(user_id: user.id)
end



def fetch_episodes_by_id(num)
  url = API_URL + "show-details?q=" + num.to_s
  show_info = get_json(url)["tvShow"]
  episode_array = show_info["episodes"] #=> array of hash-episodes
  episode_array.each do |episode_hash|
    episode_hash["show_name"] = show_info["name"]
  end
  episode_array
end



def add_playlist_to_table(array, user)
  random_array = array.sample(10)
  episode_array = random_array.map do |episode_hash|
    "#{episode_hash["show_name"]} - S#{episode_hash["season"]}E#{episode_hash["episode"]}. #{episode_hash["name"]}"
  end
  Playlist.create(user_id: user.id,
    episode_1: episode_array[0],
    episode_2: episode_array[1],
    episode_3: episode_array[2],
    episode_4: episode_array[3],
    episode_5: episode_array[4],
    episode_6: episode_array[5],
    episode_7: episode_array[6],
    episode_8: episode_array[7],
    episode_9: episode_array[8],
    episode_10: episode_array[9]
  )
  print_new_playlist(episode_array)
end



def print_new_playlist(episode_array)
  system('clear')
  puts "Playlist created!"
  puts "-----------------"
  puts episode_array
  puts
  puts "Press enter to return to the main menu"
  STDIN.gets.chomp
  CLI.main_menu
end



# plug into:
# CLI, #47 - self.user_select (add option to see list of users - will need to check if user_input == "")
# CLI, #78 - self.main_menu (add option to see list of users)
def list_all_users
  puts User.pluck(:name)
end
# after printing list, re-prompt to enter User name


## ========== OPTION 1. FROM SHOW DETAILS (cont.) ========== ##
## ==========    referenced in add_to_favorites   ========== ##
def add_show_to_table(show_hash)
  show = Show.find_by(api_id: show_hash["id"])
  if show == nil
    Show.create(api_id: show_hash["id"], name: show_hash["name"], description: show_hash["description"], genre: show_hash["genres"][0], network: show_hash["network"], start_date: show_hash["start_date"])
  end
end
