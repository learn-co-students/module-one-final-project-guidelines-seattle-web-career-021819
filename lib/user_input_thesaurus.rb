# list of synonyms for user_input


# THESAURUS
add_syn = ["a", "ad", "add"]
all_syn = ["a", "al", "all"]
another_syn = ["a", "an", "another"]
back_syn = ["b", "ba", "back"]
current_syn = ["c", "cu", "cur", "current"]
different_syn = ["d", "di", "dif", "diff", "different"]
favorite_syn = ["f", "fa", "fav", "favs", "fave", "faves", "favorite", "favorites"]
generate_syn = ["g", "ge", "gen", "generate"]
list_syn = ["l", "li", "ls", "list"]
main_syn = ["m", "ma", "me", "mm", "main", "menu"]
playlist_syn = ["p", "pl", "play", "playl", "playlist"]
print_syn = ["p", "pr", "print"]
quit_syn = ["q", "qu", "quit", "e", "ex" "exit"] # Quit and Exit will both exit the program completely
search_syn = ["s", "se", "search", "find"]
select_syn = ["s", "se", "sel", "select"]
shows_syn = ["s", "h", "sh", "show", "shows"]
title_syn = ["t", "ti", "title", "titles"]
user_syn = ["u", "us", "user", "users"]



### COPY THE CODE BELOW THAT IS COMMENTED OUT
### (starting with the || pipes)
### -----------------------------------------

# ==== Main Menu ==== #
main_menu_1_words = search_syn += title_syn
# || main_menu_1_words.include?(user_input.downcase)

main_menu_2_words = shows_syn += current_syn += list_syn += favorite_syn
# || main_menu_2_words.include?(user_input.downcase)

main_menu_3_words = generate_syn += playlist_syn
# || main_menu_3_words.include?(user_input.downcase)

main_menu_4_words = select_syn += different_syn
# || main_menu_4_words.include?(user_input.downcase)

# 5) NEW OPTION?? - Print all user names
main_menu_5_words = print_syn += all_syn += user_syn
# || main_menu_5_words.include?(user_input.downcase)

main_menu_0_words = quit_syn
# || main_menu_0_words.include?(user_input.downcase)



# ==== Display_Found_Show_Details Menu ==== #
display_menu_1_words = add_syn += favorite_syn
# || display_menu_1_words.include?(user_input.downcase)

display_menu_2_words = search_syn += another_syn += title_syn
# || display_menu_2_words.include?(user_input.downcase)

display_menu_3_words = back_syn += main_syn
# || display_menu_3_words.include?(user_input.downcase)

display_menu_0_words = quit_syn
# || display_menu_0_words.include?(user_input.downcase)
