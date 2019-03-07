def user_profile_menu(user)

  # possible to refactor to use the CLI.thesaurus,
  # instead of instantiating a new one EACH TIME
  # the user_profile_menu is loaded??
  thesaurus = Thesaurus.new


  # NOTE: Profile loads VERY slowly, with the string
  # interpolations below running EACH TIME the profile
  # re-prints (and re-querying the API for ALL episodes)
  #
  # => There's probably a way to cache these counts locally,
  #    and only update them when Favorites are added/dropped
  #    from the user's list, buuuuuut we'll do that later! :)


  # profile loading - Statistics variables
  total_favorite_shows = fetch_list_of_favorites(user).count
  total_episodes = count_episodes_from_favorites(user)


  # begin printing menu
  system('clear')

  puts "
#{user.name}'s User Profile
===============================================
  User name: #{user.name}
    real name: #{user.real_name}
    profile created: #{user.created_at}
    profile updated: #{user.updated_at}
  ---------------------------------------------
  Number of favorite shows: #{total_favorite_shows}
    total episodes: #{total_episodes}
    total runtime:
    average episodes per show: #{(total_episodes.to_f / total_favorite_shows.to_f).round(10)}
    most frequent network added:
  ---------------------------------------------
  Number of playlists created:
    total runtime:
    most frequent show added: [UNDER CONSTRUCTION]
  ---------------------------------------------

  "
  puts "
  What would you like to do?
    1. View favorite shows and toggle playlist adding on/off
    2. Remove shows from favorites list
    3. See additional profile statistics
    4. Change user name
    5. Change real name
    6. Return to main menu

    0. Quit
    "
  user_input = STDIN.gets.chomp

  # remember to add in Thesaurus synonyms as || conditionals!
  if user_input == "1" || thesaurus.profile_menu_1_words.include?(user_input.downcase)
    print_list_of_favorites(user, "profile_menu")

  elsif user_input == "2"
    print_list_of_favorites(user, "profile_remove_menu")
    # "main_menu" argument is a workaround to load show-removing menu

  elsif user_input == "3"
    # view additional statistics:
      # list of Show start dates, + most frequent years?
      # others??

  elsif user_input == "4"
    change_user_name_menu(user)

  elsif user_input == "5"
    change_real_name_menu(user)

  elsif user_input == "6"
    CLI.main_menu

  elsif user_input == "0"
    CLI.goodbye_message

  else
    puts
    puts "Profile loading, please wait..."
    user_profile_menu(user)

  end

end



# NEED TO ADD: menu_message? - see Yutaro!
# (from CLI, or new variable?)
def change_user_name_menu(user)
  system('clear')

  puts "
(NOTE: Usernames are case sensitive)
Please enter a new user name, or
press enter to keep current name:
"
  user_input = STDIN.gets.chomp
  if user_input.strip == ""
    puts
    puts "Profile loading, please wait..."
    user_profile_menu(user)

  else
    check_if_user_name_exists(user, user_input)
  end
end

def check_if_user_name_exists(user, user_input)
  user_name_check = User.find_by(name: user_input)
  if user_name_check == nil
    user.name = user_input
    user.save
    puts
    puts "User name updated! Press enter to return to your profile:"
    STDIN.gets.chomp
    puts
    puts "Profile loading, please wait..."
    user_profile_menu(user)
  else
    puts
    puts "User name already taken. Press enter to try again:"
    STDIN.gets.chomp
    change_user_name_menu(user)
  end
  #failsafe - return to main menu - DEBUG/REMOVE??
  CLI.main_menu
end




def change_real_name_menu(user)
  system('clear')

  puts "
Please enter a new real name, or
press enter to keep current name:
"
  user_input = STDIN.gets.chomp
  if user_input.strip == ""
    puts
    puts "Profile loading, please wait..."
    user_profile_menu(user)

  else
    change_user_real_name(user, user_input)
  end
end


def change_user_real_name(user, user_input)
  user.real_name = user_input
  user.save
  puts
  puts "User name updated! Press enter to return to your profile:"
  STDIN.gets.chomp
  puts
  puts "Profile loading, please wait..."
  user_profile_menu(user)
end
