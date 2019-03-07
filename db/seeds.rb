# SEEDS TEMPORARILY DISABLED - better to use
# real data from the API to fill the database
# after migrations 005-008 added new columns


  Show.create(id: 1, api_id: 3950, name: "It's Always Sunny in Philadelphia", description: "The series follows \"The Gang\", a group of five depraved underachievers: twins Dennis Reynolds and Deandra \"Sweet Dee\" Reynolds; their friends Charlie Kelly, Ronald \"Mac\" McDonald, and, from season 2 onward, Frank Reynolds, the man who raised Dennis and Dee. The Gang runs the dilapidated Paddy's Pub, an Irish bar in South Philadelphia.

Each member of the gang shows varying degrees of dishonesty, egotism, selfishness, greed, pettiness, ignorance, laziness and unethical behavior, and they are often engaged in controversial activities. Episodes usually find them hatching elaborate schemes, conspiring against one another and others for personal gain, vengeance, or simply for the entertainment of watching one another's downfall. They habitually inflict mental, emotional and physical pain. They regularly use blackmail to manipulate one another and others outside of the group.", genre: "Comedy", network: "FXX", start_date: "2005-08-04")
  Show.create(id: 2, api_id: 4079, name: "King of the Hill", description: "King of the Hill<\/b> follows the life of Hank Hill, his wife Peggy, their 13-year-old son Bobby, their 18-year-old niece Luanne, her husband Lucky, their newborn baby girl Gracie and his beer guzzling neighborhood buddies, Dale, Bill and Boomhauer.", genre: "Comedy", network: "FOX", start_date: "1997-01-12")
  Show.create(id: 3, api_id: 6227, name: "The Wire", description: "The first season of The Wire<\/b> (2002) concentrated on the often-futile efforts of police to infiltrate a West Baltimore drug ring headed by Avon Barksdale and his lieutenant, Stringer Bell. In Seasons Two and Three, as the Barksdale investigation escalated, new storylines involving pressures on the working class and the city's political leadership were introduced. Season Four focused on the stories of several young boys in the public school system, struggling with problems at home and the lure of the corner - set against the rise of a new drug empire in West Baltimore and a new Mayor in City Hall. The fifth and final season of The Wire<\/i> centers on the media's role in addressing - or failing to address - the fundamental political, economic and social realities depicted over the course of the series, while also resolving storylines of the numerous characters woven throughout the narrative arc of the show.", genre: "Crime", network: "HBO", start_date: "2002-06-02")
  # Always Sunny: show_id = 1
  # King of the Hill: show_id = 2
  # The Wire: show_id = 3




  # User.create(id: 1, name: "Dr. Mantis Toboggan")        #user_id = 1
  # User.create(id: 2, name: "Big Dumb Flightless Bird")   #user_id = 2
  # User.create(id: 3, name: "Ratslayer")                  #user_id = 3
  #
  # Show.create(id: 1, api_id: 3950, name: "Always Sunny", description: "It gets weird.", genre: "Comedy", network: "Fox", start_date: "1-15-2005")
  # Show.create(id: 2, api_id: 4079, name: "King of the Hill", description: "Don't mess with Texas.", genre: "Cartoon", network: "Fox", start_date: "2-25-1996")
  # Show.create(id: 3, api_id: 6227, name: "The Wire", description: "Baltimore drug war.", genre: "Drama", network: "HBO", start_date: "5-16-2000")
  #     # Always Sunny: show_id = 1
  #     # King of the Hill: show_id = 2
  #     # The Wire: show_id = 3
  #
  #
  # Favorite.create(id: 1, user_id: 1, show_id: 3950, playlist_on_off: "on")
  # Favorite.create(id: 2, user_id: 1, show_id: 4079, playlist_on_off: "on")
  #
  # Favorite.create(id: 3, user_id: 2, show_id: 4079, playlist_on_off: "on")
  # Favorite.create(id: 4, user_id: 2, show_id: 6227, playlist_on_off: "on")
