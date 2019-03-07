require_relative '../config/environment'

API_URL = "https://www.episodate.com/api/"


# (prevent text clutter + spacing with empty puts lines)


class CLI
  attr_accessor :user, :title_search, :menu_message, :thesaurus


  def self.run
    @thesaurus = Thesaurus.new
    self.welcome_message
  end


## ========== WELCOME PAGE (TOP) ========== ##
  def self.welcome_message
    system('clear')
    puts "
Welcome to the Show Randomizer!
-------------------------------
Here, you can select your favorite shows
and generate playlists of random episodes
from your favorites!"
    puts
    self.user_select
  end


## ========== WELCOME PAGE (BOTTOM) ========== ##
  def self.user_select
    puts
    puts "
(NOTE: Usernames are case sensitive)
Please enter a user name, or enter a blank name
to see a list of all users:
"
    user_input = STDIN.gets.chomp
    if user_input.strip == ""
      list_all_users("user_select_menu")
    else
      self.create_or_load_profile(user_input)
    end
  end


  def self.create_or_load_profile(user_input)
    user_profile = User.find_by(name: user_input)
    if user_profile == nil
      @user = User.create(name: user_input)
    else
      @user = user_profile
    end
    self.main_menu
  end


## ========== USER MAIN MENU (DISPLAY)========== ##
  def self.main_menu
    @menu_message = nil
    system('clear')
    puts "
Welcome #{@user.name}!
Please select an option below:

1. [Search] shows by title
2. Show current list of [favorite] shows
3. Generate [playlist]!
4. Select different [user]
5. Print all user names
6. View your user profile

0. [Q]uit"
    # puts "5. View your user profile"
    user_input = STDIN.gets.chomp
    self.route_user_input(user_input)
  end


## ========== USER MAIN MENU (BACKEND)========== ##
  def self.route_user_input(user_input)
    if user_input == "1" || @thesaurus.main_menu_1_words.include?(user_input.downcase)
      self.search_shows_by_title
    elsif user_input == "2" || @thesaurus.main_menu_2_words.include?(user_input.downcase)
      print_list_of_favorites(@user, "main_menu")
    elsif user_input == "3" || @thesaurus.main_menu_3_words.include?(user_input.downcase)
      fetch_episodes_for_playlist(@user)
    elsif user_input == "4" || @thesaurus.main_menu_4_words.include?(user_input.downcase)
      self.user_select
    elsif user_input == "5" || @thesaurus.main_menu_5_words.include?(user_input.downcase)
      list_all_users("main_menu")
    elsif user_input == "6" || @thesaurus.main_menu_6_words.include?(user_input.downcase)
      user_profile_menu(@user)
    elsif user_input == "0" || @thesaurus.main_menu_0_words.include?(user_input.downcase)
      goodbye_message
    else
      puts "Invalid input. Please try again:"
      self.main_menu
    end
  end


  def self.goodbye_message
    system('clear')
    puts "Thank you! Goodbye!"
    puts
    exit
  end


## ========== OPTION 1. FROM USER MAIN MENU ========== ##
  def self.search_shows_by_title
    system('clear')
    puts "Enter show title to search:"
    @title_search = STDIN.gets.chomp
    url = API_URL + "search?q=" + @title_search
    url.gsub!(" ", "%20")
    json = get_json(url) #=> receive Hash of search-result
    self.get_array_of_tv_shows(json)
  end


  def self.get_array_of_tv_shows(json)
    all_pages = []
    if json["pages"] == 1
      all_pages = json["tv_shows"]

    elsif json["pages"] > 1
      counter = json["page"]
      counter_max = json["pages"]
      while counter <= counter_max
        url = API_URL + "search?q=" + @title_search + "&page=" + counter.to_s
        json = get_json(url)
        all_pages += json["tv_shows"]
        counter += 1
      end
      all_pages

    elsif json["pages"] == 0
      puts "No results found, please search again."
      self.search_shows_by_title

    else
      puts "ERROR: json[\"pages\"] returned a non-zero, non-positive number"
      puts "Returning to self.search_shows_by_title CLI class method."
      self.search_shows_by_title
    end
    search_results(all_pages)
  end



  def self.select_id_from_results(formatted_list)
    puts "Please enter the id number for the show you are looking for:"
    user_input = STDIN.gets.chomp
    formatted_list.each do |string|
      if string.include?(user_input)
        url = API_URL + "show-details?q=" + user_input.to_s
        show_hash = get_json(url)["tvShow"] #=> hash of ONLY THE SPECIFIC show's details
        @menu_message = nil
        self.display_found_show_details(show_hash)
      end
    end
    @menu_message = "ID not found. Please enter a valid ID"
    self.print_search_results(formatted_list)
  end


## ========== RESULTS PAGE (DISPLAY)========== ##
  def self.print_search_results(formatted_list)
    system('clear')
    puts @menu_message
    puts
    puts "Search results (total count: #{formatted_list.count})"
    puts "=================================="
    puts formatted_list
    puts
    self.select_id_from_results(formatted_list)
  end


## ========== SHOW DETAILS PAGE (DISPLAY)========== ##
  def self.display_found_show_details(show_hash)
    system('clear')
    puts @menu_message
    puts
    puts "
You have selected:
==================
Title: #{show_hash["name"]}
Genre: #{show_hash["genres"][0]}
Air Date: #{show_hash["start_date"]}
Network: #{show_hash["network"]}

Description: \n#{show_hash["description"]}".gsub(/<br\s*\/?>/, '').gsub(/<b\s*\/?>/, '').gsub(/\<\/b>/, '').gsub(/<i\s*\/?>/, '').gsub(/\<\/i>/, '')
    # currently only displays first genre (in array)
    # .gsub stuff: Scrub HTML tags from description
    puts
    puts
    puts "
What would you like to do?
1. [Add] to Favorites
2. [Search] for another title
3. [Back] to main menu
0. [Q]uit"

    user_input = STDIN.gets.chomp
    self.what_would_you_like_to_do(user_input, show_hash)
  end

## ========== SHOW DETAILS PAGE (BACKEND) ========== ##
  def self.what_would_you_like_to_do(user_input, show_hash)
    if user_input == "1" || @thesaurus.display_menu_1_words.include?(user_input.downcase)
      self.add_to_favorites(show_hash)
    elsif user_input == "2" || @thesaurus.display_menu_2_words.include?(user_input.downcase)
      self.search_shows_by_title
    elsif user_input == "3" || @thesaurus.display_menu_3_words.include?(user_input.downcase)
      self.main_menu
    elsif user_input == "0" || @thesaurus.display_menu_0_words.include?(user_input.downcase)
      system('clear')
      puts "Thank you! Goodbye!"
      exit
    else
      @menu_message = "Please enter a valid option"
      self.display_found_show_details(show_hash)
    end
  end


## ========== OPTION 1. FROM SHOW DETAILS ========== ##
  def self.add_to_favorites(show_hash)
   favorite_show = Favorite.find_by(user_id: @user.id, show_id: show_hash["id"])

   if favorite_show == nil
     Favorite.create(user_id: @user.id, show_id: show_hash["id"], playlist_on_off: "on")
     @menu_message = "#{show_hash["name"]} has been added to your favorites!"
     add_show_to_table(show_hash)
     self.display_found_show_details(show_hash)
   else
     @menu_message = "#{show_hash["name"]} is already in your favorites!"
     self.display_found_show_details(show_hash)
   end
  end


  #   user_profile = User.find_by(name: user_input) #=> returns User instance
  #
  #   if user_profile == nil
  #     # create a new User row with :name = user_input
  #     @user = User.create(name: user_input)
  #
  #   else
  #     @user = user_profile
  #   end
  #
  #   self.main_menu#(@user)
  #   end

## ================ FOR DEVELOPMENT ============= ##
  # this method is only for development - use it to test the outputs for the
  # season_list and title_list arrays below
  def self.episode_menu(episode_array)
    puts
    puts "List of Seasons:"
    puts "================"
    puts self.season_list(episode_array)
    puts
    puts "Please enter a season number:"
    user_input = STDIN.gets.chomp
    # should printing the episode list happen in a different method??
    season_num = user_input.downcase.tr("season", "").strip.to_i
    puts
    puts self.title_list(episode_array, season_num)
  end



  # creates an array of formatted "Season #" strings - can be printed as a list
  def self.season_list(episode_array)
    episode_array.map do |episode_hash|
      "Season #{episode_hash["season"]}"
    end.uniq
  end


  # creates an array of formatted episode titles - modify to include S01e01 notation??
  # MARKED FOR DELETION!!
  def self.title_list(episode_array, season_num)
    title_array = []
    episode_array.each do |episode_hash|
      if episode_hash["season"] == season_num
        title_array << "#{episode_hash["episode"]}. #{episode_hash["name"]}"
      end
    end
    title_array
  end


end
