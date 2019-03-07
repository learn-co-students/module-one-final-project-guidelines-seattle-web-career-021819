def user_profile_menu(user)

  puts "
#{user.name}'s User Profile
===============================================
  User name:
    real name:
    profile created:
    profile updated:
  ---------------------------------------------
  Number of favorite shows:
    total episodes:
    total runtime:
    most frequent network added:
  ---------------------------------------------
  Number of playlists created:
    total runtime:
    most frequent show added:
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
  if user_input == "1"
    print_list_of_favorites(user, "profile_menu")

  elsif user_input == "2"
    print_list_of_favorites(user, "main_menu")
    # "main_menu" argument is a workaround to load show-removing menu

  elsif user_input == "3"
    # view additional statistics:
      # list of Show start dates, + most frequent years?
      # others??

  elsif user_input == "4"
    # change user name

  elsif user_input == "5"
    # change real name

  elsif user_input == "6"
    CLI.main_menu

  elsif user_input == "0"
    CLI.goodbye_message

  else
    user_profile_menu(user)

  end



end
