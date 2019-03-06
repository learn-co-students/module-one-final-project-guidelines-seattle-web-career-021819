  User.create(id: 1, name: "Dr. Mantis Toboggan")        #user_id = 1
  User.create(id: 2, name: "Big Dumb Flightless Bird")   #user_id = 2
  User.create(id: 3, name: "Ratslayer")                  #user_id = 3

  Show.create(id: 1, api_id: 3950, name: "Always Sunny", description: "It gets weird.", genre: "Comedy", network: "Fox", start_date: "1-15-2005")
  Show.create(id: 2, api_id: 4079, name: "King of the Hill", description: "Don't mess with Texas.", genre: "Cartoon", network: "Fox", start_date: "2-25-1996")
  Show.create(id: 3, api_id: 6227, name: "The Wire", description: "Baltimore drug war.", genre: "Drama", network: "HBO", start_date: "5-16-2000")
  # Always Sunny: show_id = 1
  # King of the Hill: show_id = 2
  # The Wire: show_id = 3


  Favorite.create(id: 1, user_id: 1, show_id: 3950)
  Favorite.create(id: 2, user_id: 1, show_id: 4079)

  Favorite.create(id: 3, user_id: 2, show_id: 4079)
  Favorite.create(id: 4, user_id: 2, show_id: 6227)
