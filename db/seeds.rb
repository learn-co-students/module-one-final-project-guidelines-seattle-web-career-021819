require 'pry'

recipe_data = [
 {
   "strDrink": "1-900-FUK-MEUP",
   "questions": "Absolut Kurant-1/2 oz , Grand Marnier-1/4 oz , Chambord Raspberry Liqueur-1/4 oz , Midori Melon Liqueur-1/4 oz , Malibu Rum-1/4 oz , Amaretto-1/4 oz , Cranberry Juice-1/2 oz , Pineapple Juice-1/4 oz : Shake ingredients in a mixing tin filled with ice cubes. Strain into a rocks glass.",
   "strInstructions": "Shake ingredients in a mixing tin filled with ice cubes. Strain into a rocks glass.",
   "strIngredients": "Absolut Kurant-1/2 oz , Grand Marnier-1/4 oz , Chambord Raspberry Liqueur-1/4 oz , Midori Melon Liqueur-1/4 oz , Malibu Rum-1/4 oz , Amaretto-1/4 oz , Cranberry Juice-1/2 oz , Pineapple Juice-1/4 oz",
   "incorrect": "Bruised Heart, French Connection, Quarter Deck Cocktail"
 },
 {
   "strDrink": "110 in the shade",
   "questions": "Lager-16 oz , Tequila-1.5 oz: Drop shooter in glass. Fill with beer",
   "strInstructions": "Drop shooter in glass. Fill with beer",
   "strIngredients": "Lager-16 oz , Tequila-1.5 oz",
   "incorrect": " Queen Charlotte, Gin Sour, Port And Starboard"
 },
 {
   "strDrink": "151 Florida Bushwacker",
   "questions": "Malibu Rum-1/2 oz , Light Rum-1/2 oz , 151 Proof Rum-1/2 oz Bacardi , Dark Creme de Cacao-1 oz , Cointreau-1 oz , Milk-3 oz , Coconut Liqueur-1 oz , Vanilla Ice-Cream-1 cup: Combine all ingredients. Blend until smooth. Garnish with chocolate shavings if desired.",
   "strInstructions": "Combine all ingredients. Blend until smooth. Garnish with chocolate shavings if desired.",
   "strIngredients": "Malibu Rum-1/2 oz , Light Rum-1/2 oz , 151 Proof Rum-1/2 oz Bacardi , Dark Creme de Cacao-1 oz , Cointreau-1 oz , Milk-3 oz , Coconut Liqueur-1 oz , Vanilla Ice-Cream-1 cup",
   "incorrect": "Monkey Wrench, Cranberry Punch, Lassi - Mango"
 },
 {
   "strDrink": "155 Belmont",
   "questions": "Dark Rum-1 shot , Light Rum-2 shots , Vodka-1 shot , Orange Juice-1 shot: Blend with ice. Serve in a wine glass. Garnish with carrot.",
   "strInstructions": "Blend with ice. Serve in a wine glass. Garnish with carrot.",
   "strIngredients": "Dark Rum-1 shot , Light Rum-2 shots , Vodka-1 shot , Orange Juice-1 shot",
   "incorrect": "Red Snapper, Tomato Tang, Sherry Eggnog"
 },
 {
   "strDrink": "24k nightmare",
   "questions": "Goldschlager-1/2 oz , Jagermeister-1/2 oz , Rumple Minze-1/2 oz , 151 Proof Rum-1/2 oz Bacardi: Add over ice,shake and pour.",
   "strInstructions": "Add over ice,shake and pour.",
   "strIngredients": "Goldschlager-1/2 oz , Jagermeister-1/2 oz , Rumple Minze-1/2 oz , 151 Proof Rum-1/2 oz Bacardi",
   "incorrect": "Jitterbug, Arctic Mouthwash, Apple Karate"
 },
 {
   "strDrink": "252",
   "questions": "151 Proof Rum-1/2 shot Bacardi , Wild Turkey-1/2 shot : Add both ingredients to shot glass, shoot, and get drunk quick",
   "strInstructions": "Add both ingredients to shot glass, shoot, and get drunk quick",
   "strIngredients": "151 Proof Rum-1/2 shot Bacardi , Wild Turkey-1/2 shot",
   "incorrect": "White Russian, Egg Nog - Healthy, Lemon Shot"
 },
 {
   "strDrink": "3 Wise Men",
   "questions": "Jack Daniels-1/3 oz , Johnnie Walker-1/3 oz , Jim Beam-1/3 oz : put them them in a glass... and slam it to tha head.",
   "strInstructions": "put them them in a glass... and slam it to tha head.",
   "strIngredients": "Jack Daniels-1/3 oz , Johnnie Walker-1/3 oz , Jim Beam-1/3 oz",
   "incorrect": "Alaska Cocktail, Stinger, Avalanche"
 },
 {
   "strDrink": "3-Mile Long Island Iced Tea",
   "questions": "Gin-1/2 oz , Light Rum-1/2 oz , Tequila-1/2 oz , Triple Sec-1/2 oz , Vodka-1/2 oz , Coca-Cola, Sweet and Sour-1-2 dash , Bitters-1 wedge , Lemon , : Fill 14oz glass with ice and alcohol. Fill 2/3 glass with cola and remainder with sweet & sour. Top with dash of bitters and lemon wedge.",
   "strInstructions": "Fill 14oz glass with ice and alcohol. Fill 2/3 glass with cola and remainder with sweet & sour. Top with dash of bitters and lemon wedge.",
   "strIngredients": "Gin-1/2 oz , Light Rum-1/2 oz , Tequila-1/2 oz , Triple Sec-1/2 oz , Vodka-1/2 oz , Coca-Cola\n , Sweet and Sour-1-2 dash , Bitters-1 wedge , Lemon ,",
   "incorrect": "Lady Love Fizz, New York Lemonade, Sidecar"
 },
 {
   "strDrink": "410 Gone",
   "questions": "Peach Vodka-2-3 oz, Coca-Cola: Layered in a shot glass.",
   "strInstructions": "Layered in a shot glass.",
   "strIngredients": "Peach Vodka-2-3 oz, Coca-Cola",
   "incorrect": "Kamikaze, Balmoral, Orange Crush"
 },
 {
   "strDrink": "50/50",
   "questions": "Vanilla Vodka-2 1/2 oz , Splash of Grand Marnier, Fill with Orange Juice: Fill glass with crushed ice. Add vodka. Add a splash of grand-marnier. Fill with o.j.",
   "strInstructions": "Fill glass with crushed ice. Add vodka. Add a splash of grand-marnier. Fill with o.j.",
   "strIngredients": "Vanilla Vodka-2 1/2 oz , Splash of Grand Marnier, Fill with Orange Juice",
   "incorrect": "Brandy Sour, Sweet Bananas, Adam Bomb"
 },
 {
   "strDrink": "501 Blue",
   "questions": "Blue Curacao , Blueberry Schnapps, Vodka, Sour Mix , 7-Up: Mix equal amounts into a glass with ice.",
   "strInstructions": "Mix equal amounts into a glass with ice.",
   "strIngredients": "Blue Curacao\n , Blueberry Schnapps\n , Vodka\n , Sour Mix\n , 7-Up",
   "incorrect": "Boomerang, After Five, Jewel Of The Nile"
 },
 {
   "strDrink": "69 Special",
   "questions": "Gin-2 oz dry , 7-Up-4 oz , Lemon Juice-0.75 oz: Pour 2 oz. gin. Add 4 oz. 7-up. Add Lemon Juice for flavor. If you are weak, top up glass with more 7-Up.",
   "strInstructions": "Pour 2 oz. gin. Add 4 oz. 7-up. Add Lemon Juice for flavor. If you are weak, top up glass with more 7-Up.",
   "strIngredients": "Gin-2 oz dry , 7-Up-4 oz , Lemon Juice-0.75 oz",
   "incorrect": "Thriller, Smut, Ziemes Martini Apfelsaft"
 },
 {
   "strDrink": "747",
   "questions": "Kahlua-1/3 part , Bailey's Irish Cream-1/3 part , Frangelico-1/3 part : Pour kaluha, then Baileys, then Frangelico not chilled and not layered -- SERVE!!!",
   "strInstructions": "Pour kaluha, then Baileys, then Frangelico not chilled and not layered -- SERVE!!!",
   "strIngredients": "Kahlua-1/3 part , Bailey's Irish Cream-1/3 part , Frangelico-1/3 part",
   "incorrect": "Bailey's Dream Shake, Holloween Punch, Sea breeze"
 },
 {
   "strDrink": "9 1/2 Weeks",
   "questions": "Absolut Citron-2 oz , Orange Curacao-1/2 oz , Strawberry Liqueur-1 splash , Orange Juice-1 oz : Combine all ingredients in glass mixer. Chill and strain into Cocktail glass. Garnish with sliced strawberry.",
   "strInstructions": "Combine all ingredients in glass mixer. Chill and strain into Cocktail glass. Garnish with sliced strawberry.",
   "strIngredients": "Absolut Citron-2 oz , Orange Curacao-1/2 oz , Strawberry Liqueur-1 splash , Orange Juice-1 oz",
   "incorrect": "Bora Bora, Gluehwein, Victory Collins"
 },
 {
   "strDrink": "A Day at the Beach",
   "questions": "Coconut Rum-1 oz , Amaretto-1/2 oz , Orange Juice-4 oz , Grenadine-1/2 oz : Shake Rum, Amaretto, and Orange Juice in a shaker filled with ice. Strain over ice into a highball glass. Add Grenadine and garnish with a Pineapple Wedge and a Strawberry.",
   "strInstructions": "Shake Rum, Amaretto, and Orange Juice in a shaker filled with ice. Strain over ice into a highball glass. Add Grenadine and garnish with a Pineapple Wedge and a Strawberry.",
   "strIngredients": "Coconut Rum-1 oz , Amaretto-1/2 oz , Orange Juice-4 oz , Grenadine-1/2 oz",
   "incorrect": "After Supper Cocktail, Gin Rickey, Japanese Fizz"
 },
 {
   "strDrink": "A Furlong Too Late",
   "questions": "Light Rum-2 oz , Ginger Beer-4 oz , Twist of Lemon Peel: Pour the rum and ginger beer into a highball glass almost filled with ice cubes. Stir well. Garnish with the lemon twist.",
   "strInstructions": "Pour the rum and ginger beer into a highball glass almost filled with ice cubes. Stir well. Garnish with the lemon twist.",
   "strIngredients": "Light Rum-2 oz , Ginger Beer-4 oz , Twist of Lemon Peel",
   "incorrect": "Campari Beer, Egg Nog #4, Fruit Cooler"
 },
 {
   "strDrink": "A Gilligan's Island",
   "questions": "Vodka-1 oz , Peach Schnapps-1 oz , Orange Juice-3 oz , Cranberry Juice-3 oz : Shaken, not Stired!",
   "strInstructions": "Shaken, not Stired!",
   "strIngredients": "Vodka-1 oz , Peach Schnapps-1 oz , Orange Juice-3 oz , Cranberry Juice-3 oz",
   "incorrect": "Sunny Holiday Punch, Microwave Hot Cocoa, Hot Chocolate to Die for"
 },
 {
   "strDrink": "A Night In Old Mandalay",
   "questions": "Light Rum-1 oz , Anejo Rum-1 oz , Orange Juice-1 oz , Lemon Juice-1/2 oz, Ginger Ale-3 oz , Twist of Lemon Peel : In a shaker half-filled with ice cubes, combine the light rum, anejo rum, orange juice, and lemon juice. Shake well. Strain into a highball glass almost filled with ice cubes. Top with the ginger Ale. Garnish with the lemon twist.",
   "strInstructions": "In a shaker half-filled with ice cubes, combine the light rum, anejo rum, orange juice, and lemon juice. Shake well. Strain into a highball glass almost filled with ice cubes. Top with the ginger Ale. Garnish with the lemon twist.",
   "strIngredients": "Light Rum-1 oz , Anejo Rum-1 oz , Orange Juice-1 oz , Lemon Juice-1/2 oz, Ginger Ale-3 oz , Twist of Lemon Peel",
   "incorrect": "Spiking coffee, Sangria - The World's Best, 110 in the shade"
 },
 {
   "strDrink": "A Piece of Ass",
   "questions": "Amaretto-1 shot , Southern Comfort-1 shot , Ice Cubes, Sour Mix: Put ice in glass. Pour in shots. Fill with Sour Mix.",
   "strInstructions": "Put ice in glass. Pour in shots. Fill with Sour Mix.",
   "strIngredients": "Amaretto-1 shot , Southern Comfort-1 shot , Ice Cubes\n , Sour Mix",
   "incorrect": "London Town, Monkey Gland, Atlantic Sun"
 },
 {
   "strDrink": "A Splash of Nash",
   "questions": "Cranberry Juice-2 oz , Soda water-2 oz , Midori Melon Liqueur-0.5 oz , Creme de Banane-0.5 oz: Drop shot glass with banana & melon liquers into a 9 oz hi- ball glass containing soda water and cranberry juice. Drink in one shot.",
   "strInstructions": "Drop shot glass with banana & melon liquers into a 9 oz hi- ball glass containing soda water and cranberry juice. Drink in one shot.",
   "strIngredients": "Cranberry Juice-2 oz , Soda water-2 oz , Midori Melon Liqueur-0.5 oz , Creme de Banane-0.5 oz",
   "incorrect": "Rum Old-fashioned, Bumble Bee #1, Screwdriver"
 },
 {
   "strDrink": "A True Amaretto Sour",
   "questions": "Amaretto-1 jigger , Lemon Juice of 1/2 , Ice, Maraschino Cherry: Rub the rim of an old fashioned glass with lemon, and dip repeatedly into granulated sugar until it has a good \"frosted\" rim. Shake a jigger of Amaretto with the juice of 1/2 a lemon. Strain into glass and add ice. Garnish with a Marachino Cherry.",
   "strInstructions": "Rub the rim of an old fashioned glass with lemon, and dip repeatedly into granulated sugar until it has a good \"frosted\" rim. Shake a jigger of Amaretto with the juice of 1/2 a lemon. Strain into glass and add ice. Garnish with a Marachino Cherry.",
   "strIngredients": "Amaretto-1 jigger , Lemon Juice of 1/2 , Ice\n , Maraschino Cherry",
   "incorrect": "Scotch Sour, Kool-Aid Shot, Karsk"
 },
 {
   "strDrink": "A midsummernight dream",
   "questions": "Vodka-2 oz , Kirschwasser-1 oz , Strawberry Liqueur-1 tsp , Strawberries-5, Schweppes Russchian: Mix the strawberrys in a blender Pour it together with the vodka,kirch and strawberry liquer over ice in a shaker. Shake well and pour in a highballglass. Fill up with the Russchian water",
   "strInstructions": "Mix the strawberrys in a blender Pour it together with the vodka,kirch and strawberry liquer over ice in a shaker. Shake well and pour in a highballglass. Fill up with the Russchian water",
   "strIngredients": "Vodka-2 oz , Kirschwasser-1 oz , Strawberry Liqueur-1 tsp , Strawberries-5, Schweppes Russchian",
   "incorrect": "Bluebird, Big Red, Russian Spring Punch"
 },
 {
   "strDrink": "A. J.",
   "questions": "Applejack-1 1/2 oz , Grapefruit Juice-1 oz : Shake ingredients with ice, strain into a cocktail glass, and serve.",
   "strInstructions": "Shake ingredients with ice, strain into a cocktail glass, and serve.",
   "strIngredients": "Applejack-1 1/2 oz , Grapefruit Juice-1 oz",
   "incorrect": "Gin And Tonic, Thai Iced Tea, Applecar"
 },
 {
   "strDrink": "A.D.M. (After Dinner Mint)",
   "questions": "White Creme de Menthe-1/2 oz , Southern Comfort-3/4 oz , Vodka-1/2 oz , Fill with Hot Chocolate: shake vigorously",
   "strInstructions": "shake vigorously",
   "strIngredients": "White Creme de Menthe-1/2 oz , Southern Comfort-3/4 oz , Vodka-1/2 oz , Fill with Hot Chocolate",
   "incorrect": "Boston Sour, A True Amaretto Sour, Vodka And Tonic"
 },
 {
   "strDrink": "A1",
   "questions": "Gin-1 3/4 shot , Grand Marnier-1 Shot , Lemon Juice-1/4 Shot, Grenadine-1/8 Shot: Pour all ingredients into a cocktail shaker, mix and serve over ice into a chilled glass.",
   "strInstructions": "Pour all ingredients into a cocktail shaker, mix and serve over ice into a chilled glass.",
   "strIngredients": "Gin-1 3/4 shot , Grand Marnier-1 Shot , Lemon Juice-1/4 Shot, Grenadine-1/8 Shot",
   "incorrect": "Zambeer, Apple Berry Smoothie, Caipirissima"
 },
 {
   "strDrink": "ABC",
   "questions": "Amaretto, Bailey's Irish Cream, Cognac: Layered in a shot glass.",
   "strInstructions": "Layered in a shot glass.",
   "strIngredients": "Amaretto, Bailey's Irish Cream, Cognac",
   "incorrect": "Grass Skirt, Kool-Aid Slammer, Just a Moonmint"
 },
 {
   "strDrink": "ACID",
   "questions": "151 Proof Rum-1 oz Bacardi , Wild Turkey-1 oz: Pour in the 151 first followed by the 101 served with a Coke or Dr Pepper chaser.",
   "strInstructions": "Pour in the 151 first followed by the 101 served with a Coke or Dr Pepper chaser.",
   "strIngredients": "151 Proof Rum-1 oz Bacardi , Wild Turkey-1 oz",
   "incorrect": "Irish Curdling Cow, Rum Sour, Egg-Nog - Classic Cooked"
 },
 {
   "strDrink": "AT&T",
   "questions": "Absolut Vodka-1 oz , Gin-1 oz , Tonic Water-4 oz: Pour Vodka and Gin over ice, add Tonic and Stir",
   "strInstructions": "Pour Vodka and Gin over ice, add Tonic and Stir",
   "strIngredients": "Absolut Vodka-1 oz , Gin-1 oz , Tonic Water-4 oz",
   "incorrect": "Limona Corona, Alabama Slammer, Bourbon Sour"
 },
 {
   "strDrink": "Abbey Cocktail",
   "questions": "Gin-1 1/2 oz , Orange Bitters-1 dash , Orange-Juice of 1/4 , Cherry-1: Shake all ingredients (except for the cherry) with ice and strain into a cocktail glass. Top with the cherry and serve.",
   "strInstructions": "Shake all ingredients (except for the cherry) with ice and strain into a cocktail glass. Top with the cherry and serve.",
   "strIngredients": "Gin-1 1/2 oz , Orange Bitters-1 dash , Orange-Juice of 1/4 , Cherry-1",
   "incorrect": "Angelica Liqueur, Port Wine Cocktail, Abbey Martini"
 },
 {
   "strDrink": "Abbey Martini",
   "questions": "Gin-2 shots , Sweet Vermouth-1 shot , Orange Juice-1 shot , Angostura Bitters-3 dashes : Put all ingredients into a shaker and mix, then strain contents into a chilled cocktail glass.",
   "strInstructions": "Put all ingredients into a shaker and mix, then strain contents into a chilled cocktail glass.",
   "strIngredients": "Gin-2 shots , Sweet Vermouth-1 shot , Orange Juice-1 shot , Angostura Bitters-3 dashes",
   "incorrect": "Grand Blue, Butter Baby, Absinthe #2"
 },
 {
   "strDrink": "Abilene",
   "questions": "Dark Rum-1 1/2 oz , Peach nectar-2 oz , Orange Juice-3 oz: Pour all of the ingredients into a highball glass almost filled with ice cubes. Stir well.",
   "strInstructions": "Pour all of the ingredients into a highball glass almost filled with ice cubes. Stir well.",
   "strIngredients": "Dark Rum-1 1/2 oz , Peach nectar-2 oz , Orange Juice-3 oz",
   "incorrect": "Arizona Antifreeze, Ice Pick #1, Frozen Daiquiri"
 },
 {
   "strDrink": "Absinthe #2",
   "questions": "Vodka-1 bottle , Sugar-50 gr , Anise-50 ml pure , LicorIce Root-1 tblsp , Wormwood-1: Mix together and let sit a few days. Strain through a coffee filter. To serve mix 1 part absinthe to 4 parts water, add ice, enjoy.",
   "strInstructions": "Mix together and let sit a few days. Strain through a coffee filter. To serve mix 1 part absinthe to 4 parts water, add ice, enjoy.",
   "strIngredients": "Vodka-1 bottle , Sugar-50 gr , Anise-50 ml pure , LicorIce Root-1 tblsp , Wormwood-1",
   "incorrect": "B-52, Mudslinger, Alice Cocktail"
 },
 {
   "strDrink": "Absolut Evergreen",
   "questions": "Absolut Citron-2/3 part , Pisang Ambon-1/3 part , Ice Cubes, Bitter Lemon: Mix, pour over ice and top up with Bitter Lemon.",
   "strInstructions": "Mix, pour over ice and top up with Bitter Lemon.",
   "strIngredients": "Absolut Citron-2/3 part , Pisang Ambon-1/3 part , Ice Cubes\n , Bitter Lemon",
   "incorrect": "Dry Rob Roy, Imperial Fizz, Cuba Libre"
 },
 {
   "strDrink": "Absolut Sex",
   "questions": "Absolut Kurant-3/4 oz , Midori Melon Liqueur-3/4 oz , Cranberry Juice-1 oz , Sprite-1 splash : Shake Absolut Kurant, Midori, and Cranberry juice in shaker with ice: Strain into rocks glass: Splash of seven on top.Absolut Sex.",
   "strInstructions": "Shake Absolut Kurant, Midori, and Cranberry juice in shaker with ice: Strain into rocks glass: Splash of seven on top.Absolut Sex.",
   "strIngredients": "Absolut Kurant-3/4 oz , Midori Melon Liqueur-3/4 oz , Cranberry Juice-1 oz , Sprite-1 splash",
   "incorrect": "Absolut limousine, Kentucky B And B, Zippy's Revenge"
 },
 {
   "strDrink": "Absolut Stress #2",
   "questions": "Absolut Vodka-1 1/2 oz , Peach Schnapps-1/2 oz , Coconut Liqueur-1/2 oz , Cranberry Juice-1 1/2 oz , Pineapple Juice-1 1/2 oz: Mix well. Garnish with Orange and Cherry. Enjoy",
   "strInstructions": "Mix well. Garnish with Orange and Cherry. Enjoy",
   "strIngredients": "Absolut Vodka-1 1/2 oz , Peach Schnapps-1/2 oz , Coconut Liqueur-1/2 oz , Cranberry Juice-1 1/2 oz , Pineapple Juice-1 1/2 oz",
   "incorrect": "Flying Dutchman, Masala Chai, Sweet Sangria"
 },
 {
   "strDrink": "Absolut Summertime",
   "questions": "Absolut Citron-1 1/2 oz , Sweet and Sour-3/4 oz , Sprite-1/2 oz , Soda Water-3 oz , Lemon-1 slIce : Add all ingredients except lemon to shaker filled with ice. Cover and shake vigorously. Strain contents into ice filled collins glass. Garnish with lemon.",
   "strInstructions": "Add all ingredients except lemon to shaker filled with ice. Cover and shake vigorously. Strain contents into ice filled collins glass. Garnish with lemon.",
   "strIngredients": "Absolut Citron-1 1/2 oz , Sweet and Sour-3/4 oz , Sprite-1/2 oz , Soda Water-3 oz , Lemon-1 slIce",
   "incorrect": "Dark Caipirinha, Adam & Eve, Jello shots"
 },
 {
   "strDrink": "Absolut limousine",
   "questions": "Absolut Citron, Lime Juice, Fill with Ice, Top it up with Tonic Water : Fill Absolut into a glass. Add Lime juice. Add Ice and lime wedges.",
   "strInstructions": "Fill Absolut into a glass. Add Lime juice. Add Ice and lime wedges.",
   "strIngredients": "Absolut Citron, Lime Juice, Fill with Ice, Top it up with Tonic Water",
   "incorrect": "Zorbatini, Grizzly Bear, French \"75\""
 },
 {
   "strDrink": "Absolutely Cranberry Smash",
   "questions": "Absolut Vodka-2 oz , Cranberry Juice-4 oz , Ginger Ale-2 oz , Ice-Add : Stir ingredients together. Serve over ice.",
   "strInstructions": "Stir ingredients together. Serve over ice.",
   "strIngredients": "Absolut Vodka-2 oz , Cranberry Juice-4 oz , Ginger Ale-2 oz , Ice-Add",
   "incorrect": "Coffee Liqueur, Mulled Wine, Amaretto Stone Sour #3"
 },
 {
   "strDrink": "Absolutely Fabulous",
   "questions": "Vodka-1 shot , Cranberry Juice-2 shots , Top up with Champagne: Mix the Vodka and Cranberry juice together in a shaker and strain into a glass. Top up with Champagne.",
   "strInstructions": "Mix the Vodka and Cranberry juice together in a shaker and strain into a glass. Top up with Champagne.",
   "strIngredients": "Vodka-1 shot , Cranberry Juice-2 shots , Top up with Champagne",
   "incorrect": "Bermuda Highball, Bruised Heart, Kool First Aid"
 },
 {
   "strDrink": "Absolutly Screwed Up",
   "questions": "Absolut Citron-1 shot , Orange Juice-1 shot , Triple Sec-1 shot , Fill to top Ginger Ale : Shake it up it tasts better that way, but you can stir it if you want. 6 of those and you will be wasted for the rest of the night.",
   "strInstructions": "Shake it up it tasts better that way, but you can stir it if you want. 6 of those and you will be wasted for the rest of the night.",
   "strIngredients": "Absolut Citron-1 shot , Orange Juice-1 shot , Triple Sec-1 shot , Fill to top Ginger Ale",
   "incorrect": "Margarita, Popped Cherry, Scooter"
 },
 {
   "strDrink": "Acapulco",
   "questions": "Light Rum-1 1/2 oz , Triple Sec-1 1/2 tsp , Lime Juice-1 tblsp , Sugar-1 tsp , Egg White-1, Mint-1 : Combine and shake all ingredients (except mint) with ice and strain into an old-fashioned glass over ice cubes. Add the sprig of mint and serve.",
   "strInstructions": "Combine and shake all ingredients (except mint) with ice and strain into an old-fashioned glass over ice cubes. Add the sprig of mint and serve.",
   "strIngredients": "Light Rum-1 1/2 oz , Triple Sec-1 1/2 tsp , Lime Juice-1 tblsp , Sugar-1 tsp , Egg White-1, Mint-1",
   "incorrect": "Bellini, Nuked Hot Chocolate, Daiquiri"
 },
 {
   "strDrink": "Ace",
   "questions": "Gin-2 shots , Grenadine-1/2 shot , Heavy Cream-1/2 shot , Milk-1/2 shot , Egg White-1/2 Fresh : Shake all the ingredients in a cocktail shaker and ice then strain in a cold glass.",
   "strInstructions": "Shake all the ingredients in a cocktail shaker and ice then strain in a cold glass.",
   "strIngredients": "Gin-2 shots , Grenadine-1/2 shot , Heavy Cream-1/2 shot , Milk-1/2 shot , Egg White-1/2 Fresh",
   "incorrect": "Talos Coffee, Applejack, Owen's Grandmother's Revenge"
 },
 {
   "strDrink": "Adam",
   "questions": "Dark Rum-2 oz , Lemon Juice-1 oz , Grenadine-1 tsp: In a shaker half-filled with ice cubes, combine all of the ingredients. Shake well. Strain into a cocktail glass.",
   "strInstructions": "In a shaker half-filled with ice cubes, combine all of the ingredients. Shake well. Strain into a cocktail glass.",
   "strIngredients": "Dark Rum-2 oz , Lemon Juice-1 oz , Grenadine-1 tsp",
   "incorrect": "Whitecap Margarita, ACID, Absolutly Screwed Up"
 },
 {
   "strDrink": "Adam & Eve",
   "questions": "Gin-1 shot , Cognac-1 shot , Creme de Cassis-1 shot , Fresh Lemon Juice-1/8 shot: Shake together all the ingredients and strain into a cold glass.",
   "strInstructions": "Shake together all the ingredients and strain into a cold glass.",
   "strIngredients": "Gin-1 shot , Cognac-1 shot , Creme de Cassis-1 shot , Fresh Lemon Juice-1/8 shot",
   "incorrect": "Dirty Nipple, Royal Gin Fizz, Pink Penocha"
 },
 {
   "strDrink": "Adam Bomb",
   "questions": "Rum-1 part , Vodka-1 part , Tequila-1 part , Triple Sec-1/2 part , Fruit, Ice, Salt-1-3 pint , Fruit Juice: Add ice to blender (or to glass if prefer on the rocks) then fruit, and fruite juice depending on personal prefference then add the Rum, Vodka, Tequila, and triple sec. blend till smooth, rim glass with sugar or salt and pour mixture in. garnish with lemon or lime slice.",
   "strInstructions": "Add ice to blender (or to glass if prefer on the rocks) then fruit, and fruite juice depending on personal prefference then add the Rum, Vodka, Tequila, and triple sec. blend till smooth, rim glass with sugar or salt and pour mixture in. garnish with lemon or lime slice.",
   "strIngredients": "Rum-1 part , Vodka-1 part , Tequila-1 part , Triple Sec-1/2 part , Fruit\n , Ice\n , Salt-1-3 pint , Fruit Juice",
   "incorrect": "Amaretto Stinger, Baby Eskimo, 3-Mile Long Island Iced Tea"
 },
 {
   "strDrink": "Adam Sunrise",
   "questions": "Vodka-43467, Lemonade-1/2 can , Water, Sugar-10 tsp : Fill blender up with ice. Fill half with Bartons Vodka. Put 10 tsp of sugar, add 1/2 can lemonade concentrate, fill to top with water. Blend for 60 seconds.",
   "strInstructions": "Fill blender up with ice. Fill half with Bartons Vodka. Put 10 tsp of sugar, add 1/2 can lemonade concentrate, fill to top with water. Blend for 60 seconds.",
   "strIngredients": "Vodka-43467, Lemonade-1/2 can , Water, Sugar-10 tsp",
   "incorrect": "Buccaneer, Mimosa, Gin Sling"
 },
 {
   "strDrink": "Addington",
   "questions": "Sweet Vermouth-2 shots , Dry Vermouth-1 shot , Top up with Soda Water: Mix both the vermouth's in a shaker and strain into a cold glass. Top up with a squirt of Soda Water.",
   "strInstructions": "Mix both the vermouth's in a shaker and strain into a cold glass. Top up with a squirt of Soda Water.",
   "strIngredients": "Sweet Vermouth-2 shots , Dry Vermouth-1 shot , Top up with Soda Water",
   "incorrect": "Rum Cobbler, Zima Blaster, Absolut Stress #2"
 },
 {
   "strDrink": "Addison",
   "questions": "Gin-1 1/2 shot , Vermouth-1 1/2 shot: Shake together all the ingredients and strain into a cold glass.",
   "strInstructions": "Shake together all the ingredients and strain into a cold glass.",
   "strIngredients": "Gin-1 1/2 shot , Vermouth-1 1/2 shot",
   "incorrect": "Coke and Drops, Victor, Downshift"
 },
 {
   "strDrink": "Addison Special",
   "questions": "Vodka-1 shot , Grenadine-1 tblsp , Fill with Orange Juice: Combine ingredients in the order listed into a shaker. Fill half full with ice and shake well. Strain into glass with ice and garnish with a cherry and orange wedge.",
   "strInstructions": "Combine ingredients in the order listed into a shaker. Fill half full with ice and shake well. Strain into glass with ice and garnish with a cherry and orange wedge.",
   "strIngredients": "Vodka-1 shot , Grenadine-1 tblsp , Fill with Orange Juice",
   "incorrect": "Zorro, Black and Brown, Zizi Coin-coin"
 },
 {
   "strDrink": "Adios Amigos Cocktail",
   "questions": "Rum-1 shot , Dry Vermouth-1/2 shot , Cognac-1/2 shot , Gin-1/2 shot , Fresh Lime Juice-1/4 shot, Sugar Syrup-1/4 shot, Water-1/2 shot : Shake together all the ingredients and strain into a cold glass.",
   "strInstructions": "Shake together all the ingredients and strain into a cold glass.",
   "strIngredients": "Rum-1 shot , Dry Vermouth-1/2 shot , Cognac-1/2 shot , Gin-1/2 shot , Fresh Lime Juice-1/4 shot, Sugar Syrup-1/4 shot, Water-1/2 shot",
   "incorrect": "Pineapple GingerAle Smoothie, Sidecar Cocktail, Gentleman's Club"
 },
 {
   "strDrink": "Adonis Cocktail",
   "questions": "Sweet Vermouth-3/4 oz , Sherry-1 1/2 oz dry , Orange Bitters-1 dash: Stir all ingredients with ice, strain contents into a cocktail glass, and serve.",
   "strInstructions": "Stir all ingredients with ice, strain contents into a cocktail glass, and serve.",
   "strIngredients": "Sweet Vermouth-3/4 oz , Sherry-1 1/2 oz dry , Orange Bitters-1 dash",
   "incorrect": "Ace, Quaker's Cocktail, Valencia  Cocktail"
 },
 {
   "strDrink": "Affair",
   "questions": "Strawberry Schnapps-2 oz , Orange Juice-2 oz , Cranberry Juice-2 oz , Club Soda : Pour schnapps, orange juice, and cranberry juice over ice in a highball glass. Top with club soda and serve.",
   "strInstructions": "Pour schnapps, orange juice, and cranberry juice over ice in a highball glass. Top with club soda and serve.",
   "strIngredients": "Strawberry Schnapps-2 oz , Orange Juice-2 oz , Cranberry Juice-2 oz , Club Soda",
   "incorrect": "Nutty Irishman, Freddy Kruger, Flaming Dr. Pepper"
 },
 {
   "strDrink": "Affinity",
   "questions": "Scotch-1 1/2 oz , Sweet Vermouth-1 oz , Dry Vermouth-1 oz , Orange Bitters-2 dashes : In a mixing glass half-filled with ice cubes, combine all of the ingredients. Stir well. Strain into a cocktail glass.",
   "strInstructions": "In a mixing glass half-filled with ice cubes, combine all of the ingredients. Stir well. Strain into a cocktail glass.",
   "strIngredients": "Scotch-1 1/2 oz , Sweet Vermouth-1 oz , Dry Vermouth-1 oz , Orange Bitters-2 dashes",
   "incorrect": "The Evil Blue Thing, Black Forest Shake, Jack's Vanilla Coke"
 },
 {
   "strDrink": "After Dinner Cocktail",
   "questions": "Apricot Brandy-1 oz , Triple Sec-1 oz , Lime-Juice of 1 , Lime-1 : Shake all ingredients (except lime wedge) with ice and strain into a cocktail glass. Add the wedge of lime and serve.",
   "strInstructions": "Shake all ingredients (except lime wedge) with ice and strain into a cocktail glass. Add the wedge of lime and serve.",
   "strIngredients": "Apricot Brandy-1 oz , Triple Sec-1 oz , Lime-Juice of 1 , Lime-1",
   "incorrect": "Amaretto Sunset, Imperial Cocktail, Irish Cream"
 },
 {
   "strDrink": "After Five",
   "questions": "Peppermint Schnapps, Kahlua, Bailey's Irish Cream: 1. Pour Kahlua into shot glass to about 1/2 full. 2. Using a spoon(inverted), slowly pour in the Peppermint Schnapps until glass is about 3/4 full. Done correctly, the Schnapps will flow under the Kahlua for a clear layer. 3. Again using a spoon, but this time right side up, slowly top off the glass with a layer of Bailey's. Be careful to place the spoon right at the top of the Kahlua layer and to raise it as the glass fills up. Done correctly, this will provide a layer of Bailey's floating over the Kahlua. 4. Toss it down all at once for something like a Peppermint Pattie, WITH A BANG!!! NOTE: Best if all ingredients are chilled",
   "strInstructions": "1. Pour Kahlua into shot glass to about 1/2 full. 2. Using a spoon(inverted), slowly pour in the Peppermint Schnapps until glass is about 3/4 full. Done correctly, the Schnapps will flow under the Kahlua for a clear layer. 3. Again using a spoon, but this time right side up, slowly top off the glass with a layer of Bailey's. Be careful to place the spoon right at the top of the Kahlua layer and to raise it as the glass fills up. Done correctly, this will provide a layer of Bailey's floating over the Kahlua. 4. Toss it down all at once for something like a Peppermint Pattie, WITH A BANG!!! NOTE: Best if all ingredients are chilled",
   "strIngredients": "Peppermint Schnapps\n , Kahlua\n , Bailey's Irish Cream",
   "incorrect": "Damned if you do, Royal Fizz, Orgasm"
 },
 {
   "strDrink": "After Supper Cocktail",
   "questions": "Triple Sec-1 oz , Apricot Brandy-1 oz , Lemon Juice-1/2 tsp: Shake all ingredients with ice, strain into a cocktail glass, and serve.",
   "strInstructions": "Shake all ingredients with ice, strain into a cocktail glass, and serve.",
   "strIngredients": "Triple Sec-1 oz , Apricot Brandy-1 oz , Lemon Juice-1/2 tsp",
   "incorrect": "151 Florida Bushwacker, Zimadori Zinger, Royal Bitch"
 },
 {
   "strDrink": "After sex",
   "questions": "Vodka-2/3 oz , Creme de Banane-1/3 oz , Orange Juice: Pour the vodka and creme over some ice cubes in a tall glass and fill up with juice. to make it beuty full make the top of the glass with a grenadine and sugar",
   "strInstructions": "Pour the vodka and creme over some ice cubes in a tall glass and fill up with juice. to make it beuty full make the top of the glass with a grenadine and sugar",
   "strIngredients": "Vodka-2/3 oz , Creme de Banane-1/3 oz , Orange Juice",
   "incorrect": "Pink Lady, Casino RoyAle, Tuxedo Cocktail"
 },
 {
   "strDrink": "Afterglow",
   "questions": "Grenadine-1 part , Orange Juice-4 parts , Pineapple Juice-4 parts: Mix. Serve over ice.",
   "strInstructions": "Mix. Serve over ice.",
   "strIngredients": "Grenadine-1 part , Orange Juice-4 parts , Pineapple Juice-4 parts",
   "incorrect": "Kiwi Papaya Smoothie, Sex on the Beach, Midnight Manx"
 },
 {
   "strDrink": "Afternoon",
   "questions": "Kahlua-1/3 oz , Bailey's Irish Cream-1/3 oz , Frangelico-1.5, Coffee-1 1/3 oz hot , Cream: Build into a suiting glass, with no ice. Cream on top if wanted. Served directly.",
   "strInstructions": "Build into a suiting glass, with no ice. Cream on top if wanted. Served directly.",
   "strIngredients": "Kahlua-1/3 oz , Bailey's Irish Cream-1/3 oz , Frangelico-1.5, Coffee-1 1/3 oz hot , Cream",
   "incorrect": "Apple Grande, Kioki Coffee, Kir"
 },
 {
   "strDrink": "Alabama Slammer",
   "questions": "Southern Comfort-1 oz , Amaretto-1 oz , Sloe Gin-1/2 oz , Lemon Juice-1 dash : Pour all ingredients (except for lemon juice) over ice in a highball glass. Stir, add a dash of lemon juice, and serve.",
   "strInstructions": "Pour all ingredients (except for lemon juice) over ice in a highball glass. Stir, add a dash of lemon juice, and serve.",
   "strIngredients": "Southern Comfort-1 oz , Amaretto-1 oz , Sloe Gin-1/2 oz , Lemon Juice-1 dash",
   "incorrect": "Kentucky Colonel, Lemon Drop, Frozen Mint Daiquiri"
 },
 {
   "strDrink": "Alaska Cocktail",
   "questions": "Orange Bitters-2 dashes , Gin-1 1/2 oz , Yellow Chartreuse-3/4 oz , Twist of Lemon Peel : Stir all ingredients with ice, strain contents into a cocktail glass. Drop in a twist of lemon and serve.",
   "strInstructions": "Stir all ingredients with ice, strain contents into a cocktail glass. Drop in a twist of lemon and serve.",
   "strIngredients": "Orange Bitters-2 dashes , Gin-1 1/2 oz , Yellow Chartreuse-3/4 oz , Twist of Lemon Peel",
   "incorrect": "Rum Punch, Bloody Mary, Arizona Stingers"
 },
 {
   "strDrink": "Alexander",
   "questions": "Gin-1/2 oz , Creme de Cacao-1/2 oz white , Light Cream-2 oz , Nutmeg : Shake all ingredients with ice and strain contents into a cocktail glass. Sprinkle nutmeg on top and serve.",
   "strInstructions": "Shake all ingredients with ice and strain contents into a cocktail glass. Sprinkle nutmeg on top and serve.",
   "strIngredients": "Gin-1/2 oz , Creme de Cacao-1/2 oz white , Light Cream-2 oz , Nutmeg",
   "incorrect": "501 Blue, Lone Tree Cooler, Hemingway Special"
 },
 {
   "strDrink": "Alfie Cocktail",
   "questions": "Lemon Vodka-1 1/2 oz , Triple Sec-1 dash , Pineapple Juice-1 tblsp: Combine and shake all ingredients with ice, strain into a cocktail glass, and serve.",
   "strInstructions": "Combine and shake all ingredients with ice, strain into a cocktail glass, and serve.",
   "strIngredients": "Lemon Vodka-1 1/2 oz , Triple Sec-1 dash , Pineapple Juice-1 tblsp",
   "incorrect": "Absolut Summertime, Apricot Lady, Bellini Martini"
 },
 {
   "strDrink": "Algonquin",
   "questions": "Blended Whiskey-1 1/2 oz , Dry Vermouth-1 oz , Pineapple Juice-1 oz: Combine and shake all ingredients with ice, strain contents into a cocktail glass, and serve.",
   "strInstructions": "Combine and shake all ingredients with ice, strain contents into a cocktail glass, and serve.",
   "strIngredients": "Blended Whiskey-1 1/2 oz , Dry Vermouth-1 oz , Pineapple Juice-1 oz",
   "incorrect": "Adonis Cocktail, Cherry Rum, Mother's Milk"
 },
 {
   "strDrink": "Alice Cocktail",
   "questions": "Grenadine-1/3 oz , Orange Juice-1/3 oz , Pineapple Juice-2/3 oz , Cream-1 1/3 oz : Shake well, strain into a large cocktail glass.",
   "strInstructions": "Shake well, strain into a large cocktail glass.",
   "strIngredients": "Grenadine-1/3 oz , Orange Juice-1/3 oz , Pineapple Juice-2/3 oz , Cream-1 1/3 oz",
   "incorrect": "Berry Deadly, Orange Whip, Irish Coffee"
 },
 {
   "strDrink": "Alice in Wonderland",
   "questions": "Amaretto-1 shot , Grand Marnier-1 shot , Southern Comfort-1 shot : Just mix the three ingredients one to one to one",
   "strInstructions": "Just mix the three ingredients one to one to one",
   "strIngredients": "Amaretto-1 shot , Grand Marnier-1 shot , Southern Comfort-1 shot",
   "incorrect": "Tequila Fizz, Dubonnet Cocktail, Queen Bee"
 },
 {
   "strDrink": "Allegheny",
   "questions": "Dry Vermouth-1 oz , Bourbon-1 oz , Blackberry brandy-1 1/2 tsp , Lemon Juice-1 1/2 tsp , Twist of Lemon Peel : Shake all ingredients (except lemon peel) with ice and strain into a cocktail glass. Top with the twist of lemon peel and serve.",
   "strInstructions": "Shake all ingredients (except lemon peel) with ice and strain into a cocktail glass. Top with the twist of lemon peel and serve.",
   "strIngredients": "Dry Vermouth-1 oz , Bourbon-1 oz , Blackberry brandy-1 1/2 tsp , Lemon Juice-1 1/2 tsp , Twist of Lemon Peel",
   "incorrect": "Pink Gin, 747, Green Goblin"
 },
 {
   "strDrink": "Allies Cocktail",
   "questions": "Dry Vermouth-1 oz , Gin-1 oz , Kummel-1/2 tsp : Stir all ingredients with ice, strain contents into a cocktail glass, and serve.",
   "strInstructions": "Stir all ingredients with ice, strain contents into a cocktail glass, and serve.",
   "strIngredients": "Dry Vermouth-1 oz , Gin-1 oz , Kummel-1/2 tsp",
   "incorrect": "Zorro, Happy Skipper, Pink Panty Pulldowns"
 },
 {
   "strDrink": "Almeria",
   "questions": "Dark Rum-2 oz , Kahlua-1 oz , Egg White-1: In a shaker half-filled with ice cubes, combine all of the ingredients. Shake well. Strain into a cocktail glass.",
   "strInstructions": "In a shaker half-filled with ice cubes, combine all of the ingredients. Shake well. Strain into a cocktail glass.",
   "strIngredients": "Dark Rum-2 oz , Kahlua-1 oz , Egg White-1",
   "incorrect": "ABC, Banana Daiquiri, Turf Cocktail"
 },
 {
   "strDrink": "Almond Chocolate Coffee",
   "questions": "Amaretto-3/4 oz , Dark Creme de Cacao-1/2 oz , Coffee-8 oz : Pour in order into coffee cup. Top with whipped creme and chocolate shavings.",
   "strInstructions": "Pour in order into coffee cup. Top with whipped creme and chocolate shavings.",
   "strIngredients": "Amaretto-3/4 oz , Dark Creme de Cacao-1/2 oz , Coffee-8 oz",
   "incorrect": "Paradise, Bleeding Surgeon, Creme de Menthe"
 },
 {
   "strDrink": "Almond Joy",
   "questions": "Amaretto-1/2 oz , Creme de Cacao-1/2 oz white , Light Cream-2 oz : Shake all ingredients with ice, strain into a cocktail glass, and serve.",
   "strInstructions": "Shake all ingredients with ice, strain into a cocktail glass, and serve.",
   "strIngredients": "Amaretto-1/2 oz , Creme de Cacao-1/2 oz white , Light Cream-2 oz",
   "incorrect": "Champagne Cocktail, Avalon, Gin Swizzle\n"
 },
 {
   "strDrink": "Aloha Fruit punch",
   "questions": "Water-3/4 cup , Ginger-2 tsp , Guava Juice-2 cups , Lemon Juice-1 1/2 tblsp , Pineapple-1 1/2 cup , Sugar-1 cup , Pineapple Juice-3-4 cups : Add 1/4 cup water to ginger root. Boil 3 minutes. Strain. Add the liquid to the guava, lemon and Pineapple juices. Make a syrup of sugar and remaining water. Cool. Combine with juices and Pineapple. Chill throroughly.",
   "strInstructions": "Add 1/4 cup water to ginger root. Boil 3 minutes. Strain. Add the liquid to the guava, lemon and Pineapple juices. Make a syrup of sugar and remaining water. Cool. Combine with juices and Pineapple. Chill throroughly.",
   "strIngredients": "Water-3/4 cup , Ginger-2 tsp , Guava Juice-2 cups , Lemon Juice-1 1/2 tblsp , Pineapple-1 1/2 cup , Sugar-1 cup , Pineapple Juice-3-4 cups",
   "incorrect": "Gin Squirt, Jam Donut, Allegheny"
 },
 {
   "strDrink": "Amaretto And Cream",
   "questions": "Amaretto-1 1/2 oz , Light Cream-1 1/2 oz: Shake well with cracked ice, strain contents into a cocktail glass, and serve.",
   "strInstructions": "Shake well with cracked ice, strain contents into a cocktail glass, and serve.",
   "strIngredients": "Amaretto-1 1/2 oz , Light Cream-1 1/2 oz",
   "incorrect": "Adam Sunrise, Shark Attack, Mai Tai"
 },
 {
   "strDrink": "Amaretto Liqueur",
   "questions": "Sugar-1 cup, Water-3/4 cup , Apricot-2, Almond flavoring-1 tblsp , Grain Alcohol-1/2 cup pure , Water-1/2 cup , Brandy-1 cup , Food Coloring-3 drops yellow , Food Coloring-6 drops red , Food Coloring-2 drops blue : Combine sugar and 3/4 cup water in a small saucepan. Bring to a boil, Stiring constantly. Reduce heat and simmer until all sugar is dissolved. Remove from heat and cool. In an aging container, combine apricot halves, almond extract, grain alcohol with 1/2 cup water, and brandy. Stir in cooled sugar syrup mixture. Cap and let age for 2 days. Remove apricot halves. (Save apricot halves, can be used for cooking). Add food coloring and glycerine. Stir, recap and continue aging for 1 to 2 months. Re-bottle as desired. Liqueur is ready to serve but will continue to improve with additional aging.",
   "strInstructions": "Combine sugar and 3/4 cup water in a small saucepan. Bring to a boil, Stiring constantly. Reduce heat and simmer until all sugar is dissolved. Remove from heat and cool. In an aging container, combine apricot halves, almond extract, grain alcohol with 1/2 cup water, and brandy. Stir in cooled sugar syrup mixture. Cap and let age for 2 days. Remove apricot halves. (Save apricot halves, can be used for cooking). Add food coloring and glycerine. Stir, recap and continue aging for 1 to 2 months. Re-bottle as desired. Liqueur is ready to serve but will continue to improve with additional aging.",
   "strIngredients": "Sugar-1 cup, Water-3/4 cup , Apricot-2, Almond flavoring-1 tblsp , Grain Alcohol-1/2 cup pure , Water-1/2 cup , Brandy-1 cup , Food Coloring-3 drops yellow , Food Coloring-6 drops red , Food Coloring-2 drops blue",
   "incorrect": "A midsummernight dream, Auburn Headbanger, Texas Rattlesnake"
 },
 {
   "strDrink": "Amaretto Mist",
   "questions": "Amaretto-1 1/2 oz , Lime-1 : Pour amaretto in an old-fashioned glass over crushed ice. Add the wedge of lime and serve. (A wedge of lemon may be substituted for lime, if preferred.)",
   "strInstructions": "Pour amaretto in an old-fashioned glass over crushed ice. Add the wedge of lime and serve. (A wedge of lemon may be substituted for lime, if preferred.)",
   "strIngredients": "Amaretto-1 1/2 oz , Lime-1",
   "incorrect": "Artillery, Adam, Arise My Love"
 },
 {
   "strDrink": "Amaretto Rose",
   "questions": "Amaretto-1 1/2 oz , Lime Juice-1/2 oz , Club Soda: Pour amaretto and lime juice over ice in a collins glass. Fill with club soda and serve.",
   "strInstructions": "Pour amaretto and lime juice over ice in a collins glass. Fill with club soda and serve.",
   "strIngredients": "Amaretto-1 1/2 oz , Lime Juice-1/2 oz , Club Soda",
   "incorrect": "Quaker's Cocktail, Port Wine Cocktail, ABC"
 },
 {
   "strDrink": "Amaretto Shake",
   "questions": "Chocolate Ice-Cream-2 scoops , Brandy-2 oz , Amaretto-2 oz : Combine all ingredients in a blender and blend at high speed until smooth. Serve in chilled glass garnished with bittersweet chocolate shavings.",
   "strInstructions": "Combine all ingredients in a blender and blend at high speed until smooth. Serve in chilled glass garnished with bittersweet chocolate shavings.",
   "strIngredients": "Chocolate Ice-Cream-2 scoops , Brandy-2 oz , Amaretto-2 oz",
   "incorrect": "Scottish Highland Liqueur, Martini, Apple Slammer"
 },
 {
   "strDrink": "Amaretto Sour",
   "questions": "Amaretto-1 1/2 oz , Sour Mix-3 oz: Shake and strain. Garnish with a cherry and an orange slice.",
   "strInstructions": "Shake and strain. Garnish with a cherry and an orange slice.",
   "strIngredients": "Amaretto-1 1/2 oz , Sour Mix-3 oz",
   "incorrect": "Daiquiri, Poppy Cocktail, Mojito"
 },
 {
   "strDrink": "Amaretto Stinger",
   "questions": "Amaretto-1 1/2 oz , White Creme de Menthe-3/4 oz: Shake ingredients well with cracked ice, strain into a cocktail glass, and serve.",
   "strInstructions": "Shake ingredients well with cracked ice, strain into a cocktail glass, and serve.",
   "strIngredients": "Amaretto-1 1/2 oz , White Creme de Menthe-3/4 oz",
   "incorrect": "Queen Bee, Grape Lemon pineapple Smoothie, Apple Grande"
 },
 {
   "strDrink": "Amaretto Stone Sour",
   "questions": "Amaretto-1 part , Sour Mix-1 part , Orange Juice-1 part : Shake and Serve over ice",
   "strInstructions": "Shake and Serve over ice",
   "strIngredients": "Amaretto-1 part , Sour Mix-1 part , Orange Juice-1 part",
   "incorrect": "Screwdriver, Big Red, 252"
 },
 {
   "strDrink": "Amaretto Stone Sour #3",
   "questions": "Sour Mix-2 oz , Amaretto-2 oz , Tequila-2 oz , Add splash of Orange Juice : Shake sour mix, tequila and amaretto with ice. Strain into highball glass. Add a splash of OJ. Garnish with orange slice and a cherry.",
   "strInstructions": "Shake sour mix, tequila and amaretto with ice. Strain into highball glass. Add a splash of OJ. Garnish with orange slice and a cherry.",
   "strIngredients": "Sour Mix-2 oz , Amaretto-2 oz , Tequila-2 oz , Add splash of Orange Juice",
   "incorrect": "Manhattan, Alice Cocktail, Gin Rickey"
 },
 {
   "strDrink": "Amaretto Sunrise",
   "questions": "Amaretto-1/3 oz , Orange Juice-4 oz , Grenadine-1/1 1/3 oz : Mix together the amaretto and orange juice. Pour into glass and then add the grenadine untill you see the sunrise.",
   "strInstructions": "Mix together the amaretto and orange juice. Pour into glass and then add the grenadine untill you see the sunrise.",
   "strIngredients": "Amaretto-1/3 oz , Orange Juice-4 oz , Grenadine-1/1 1/3 oz",
   "incorrect": "Bourbon Sling, Jack Rose Cocktail, Artillery"
 },
 {
   "strDrink": "Amaretto Sunset",
   "questions": "Triple Sec-1/2 jigger , Amaretto-3 shots , Cider-1/2 cup , Ice-Add 1/2 cup : Shake ingredients in bartender's mixer quickly, just 5 shakes. Strain out ice, serve in glass immediately with a slice of orange.",
   "strInstructions": "Shake ingredients in bartender's mixer quickly, just 5 shakes. Strain out ice, serve in glass immediately with a slice of orange.",
   "strIngredients": "Triple Sec-1/2 jigger , Amaretto-3 shots , Cider-1/2 cup , Ice-Add 1/2 cup",
   "incorrect": "Dry Rob Roy, Quarter Deck Cocktail, New York Lemonade"
 },
 {
   "strDrink": "Amaretto Sweet & Sour",
   "questions": "Amaretto, Sweet and Sour, Midori Melon Liqueur, Pineapple Juice : Fill the blender with 3/4 ice. Add sweet & sour mix to the top of the ice. Add about 1\" of Pineapple juice, 1/2\" of melon liqeur, and 1/2 to 1/4\" of amaretto. Then blend the mix until it is of margaritta consistency or thinner.",
   "strInstructions": "Fill the blender with 3/4 ice. Add sweet & sour mix to the top of the ice. Add about 1\" of Pineapple juice, 1/2\" of melon liqeur, and 1/2 to 1/4\" of amaretto. Then blend the mix until it is of margaritta consistency or thinner.",
   "strIngredients": "Amaretto\n , Sweet and Sour\n , Midori Melon Liqueur, Pineapple Juice",
   "incorrect": "Zorbatini, Archbishop, Bora Bora"
 },
 {
   "strDrink": "Amaretto Tea",
   "questions": "Tea-6 oz hot , Amaretto-2 oz , Whipped Cream-Chilled : Pour hot tea into a pousse-cafe glass, using a spoon in glass to prevent cracking. Add amaretto, but do not stir. Top with chilled whipped cream and serve.",
   "strInstructions": "Pour hot tea into a pousse-cafe glass, using a spoon in glass to prevent cracking. Add amaretto, but do not stir. Top with chilled whipped cream and serve.",
   "strIngredients": "Tea-6 oz hot , Amaretto-2 oz , Whipped Cream-Chilled",
   "incorrect": "Zippy's Revenge, 1-900-FUK-MEUP, Highland Fling Cocktail"
 },
 {
   "strDrink": "Americano",
   "questions": "Campari-1 oz , Sweet Vermouth-1 oz red , Twist of Lemon Peel, Twist of Orange Peel : Pour the Campari and vermouth over ice into glass, add a splash of soda water and garnish with half orange slice.",
   "strInstructions": "Pour the Campari and vermouth over ice into glass, add a splash of soda water and garnish with half orange slice.",
   "strIngredients": "Campari-1 oz , Sweet Vermouth-1 oz red , Twist of Lemon Peel, Twist of Orange Peel",
   "incorrect": "Rose, Buccaneer, A midsummernight dream"
 },
 {
   "strDrink": "Angel Face",
   "questions": "Apricot Brandy-1/2 oz , Apple Brandy-1/2 oz , Gin-1 oz : Shake all ingredients with ice and strain contents into a cocktail glass.",
   "strInstructions": "Shake all ingredients with ice and strain contents into a cocktail glass.",
   "strIngredients": "Apricot Brandy-1/2 oz , Apple Brandy-1/2 oz , Gin-1 oz",
   "incorrect": "Quick-sand, Negroni, Abbey Cocktail"
 },
 {
   "strDrink": "Angelica Liqueur",
   "questions": "Angelica root-3 tblsp chopped, Almond-1 tblsp chopped , AllspIce-1 cracked , Cinnamon-1 one-inch , Anise-3-6 crushed , Coriander-1/8 tsp powdered , Marjoram Leaves-1 tblsp fresh chopped , Vodka-1.5 cup , Sugar-1/2 cup granulated , Water-1/4 cup : Combine all herbs, nuts and spices with vodka in a 1 quart or larger aging container. Cap tightly and shake daily for 2 weeks. Strain through a fine muslin cloth or coffee filter, discarding solids. Clean out aging container. Place liquid back in container. Place sugar and water in saucepan and stir to combine over medium heat. When sugar is completely dissolved, set aside and let cool. When cool combine with food coloring and add to liqueur liquid. Cap and allow to age and mellow in a cool, dark place for one month.",
   "strInstructions": "Combine all herbs, nuts and spices with vodka in a 1 quart or larger aging container. Cap tightly and shake daily for 2 weeks. Strain through a fine muslin cloth or coffee filter, discarding solids. Clean out aging container. Place liquid back in container. Place sugar and water in saucepan and stir to combine over medium heat. When sugar is completely dissolved, set aside and let cool. When cool combine with food coloring and add to liqueur liquid. Cap and allow to age and mellow in a cool, dark place for one month.",
   "strIngredients": "Angelica root-3 tblsp chopped, Almond-1 tblsp chopped , AllspIce-1 cracked , Cinnamon-1 one-inch , Anise-3-6 crushed , Coriander-1/8 tsp powdered , Marjoram Leaves-1 tblsp fresh chopped , Vodka-1.5 cup , Sugar-1/2 cup granulated , Water-1/4 cup",
   "incorrect": "Frisco Sour, Tuxedo Cocktail, Baby Eskimo"
 },
 {
   "strDrink": "Apello",
   "questions": "Orange Juice-1 1/3 oz , Grapefruit Juice-1 oz , Apple Juice-1/3 oz , Maraschino Cherry-1 : Stir. Garnish with maraschino cherry.",
   "strInstructions": "Stir. Garnish with maraschino cherry.",
   "strIngredients": "Orange Juice-1 1/3 oz , Grapefruit Juice-1 oz , Apple Juice-1/3 oz , Maraschino Cherry-1",
   "incorrect": "Rum Cobbler, Castillian Hot Chocolate, Texas Sling"
 },
 {
   "strDrink": "Apple Berry Smoothie",
   "questions": "Berries-1 cup , Apple-2 : Throw everything into a blender and liquify.",
   "strInstructions": "Throw everything into a blender and liquify.",
   "strIngredients": "Berries-1 cup , Apple-2",
   "incorrect": "Lassi - Sweet, Balmoral, Whisky Mac"
 },
 {
   "strDrink": "Apple Cider Punch #1",
   "questions": "Apple cider-4 qt , Brown sugar-1 cup , Lemonade-6 oz frozen , Orange Juice-6 oz frozen , Cloves-6 whole , AllspIce-6 whole , Nutmeg-1 tsp ground , Cinnamon-3 sticks : If you use the whole all spice and cloves, tie them in cheesecloth. Heat the mixture. Stir occasionally. If you want an alcoholic drink, rum would be nice.",
   "strInstructions": "If you use the whole all spice and cloves, tie them in cheesecloth. Heat the mixture. Stir occasionally. If you want an alcoholic drink, rum would be nice.",
   "strIngredients": "Apple cider-4 qt , Brown sugar-1 cup , Lemonade-6 oz frozen , Orange Juice-6 oz frozen , Cloves-6 whole , AllspIce-6 whole , Nutmeg-1 tsp ground , Cinnamon-3 sticks",
   "incorrect": "City Slicker, Mai Tai, Clover Club"
 },
 {
   "strDrink": "Apple Grande",
   "questions": "Tequila-3 oz , Apple cider-12 oz: Chill both ingredients!! Mix in a tumbler and enjoy!",
   "strInstructions": "Chill both ingredients!! Mix in a tumbler and enjoy!",
   "strIngredients": "Tequila-3 oz , Apple cider-12 oz",
   "incorrect": "Long Island Iced Tea, Fruit Shake, Lassi Khara"
 },
 {
   "strDrink": "Apple Karate",
   "questions": "Apple Juice-2 cups , Carrot-1 large: Place all ingredients in the blender jar - cover and whiz on medium speed until well blended. Pour in one tall, 2 medium or 3 small glasses and drink up.",
   "strInstructions": "Place all ingredients in the blender jar - cover and whiz on medium speed until well blended. Pour in one tall, 2 medium or 3 small glasses and drink up.",
   "strIngredients": "Apple Juice-2 cups , Carrot-1 large",
   "incorrect": "Salty Dog, Gagliardo, Abbey Martini"
 },
 {
   "strDrink": "Apple Pie with A Crust",
   "questions": "Apple Juice-3 parts , Malibu Rum-1 part , Cinnamon-3 dashes : Just mix the two liquids and sprinkle in the cinnamon. Serve either cold or heated.",
   "strInstructions": "Just mix the two liquids and sprinkle in the cinnamon. Serve either cold or heated.",
   "strIngredients": "Apple Juice-3 parts , Malibu Rum-1 part , Cinnamon-3 dashes",
   "incorrect": "Lemon Shot, Gin Fizz, Pisco Sour"
 },
 {
   "strDrink": "Apple Slammer",
   "questions": "7-Up-1 part , Apple Schnapps-1 part: Pour into a shot glass and present to consumer, they are expected to cover the top of the shotglass with thier palm, raise the glass, slam it on the bar and the swallow quickly.",
   "strInstructions": "Pour into a shot glass and present to consumer, they are expected to cover the top of the shotglass with thier palm, raise the glass, slam it on the bar and the swallow quickly.",
   "strIngredients": "7-Up-1 part , Apple Schnapps-1 part",
   "incorrect": "Jackhammer, Clove Cocktail, Gin Sling"
 },
 {
   "strDrink": "Applecar",
   "questions": "Applejack-1 oz , Triple Sec-1 oz , Lemon Juice-1 oz : Shake all ingredients with ice, strain into a cocktail glass, and serve.",
   "strInstructions": "Shake all ingredients with ice, strain into a cocktail glass, and serve.",
   "strIngredients": "Applejack-1 oz , Triple Sec-1 oz , Lemon Juice-1 oz",
   "incorrect": "Tomato Tang, Zambeer, SpIced Peach Punch"
 },
 {
   "strDrink": "Applejack",
   "questions": "Jack Daniels-1 oz , Midori Melon Liqueur-1/2 oz , Sour Mix-2 oz : Add all ingredients into mixing glass, chill and strain into cocktail glass",
   "strInstructions": "Add all ingredients into mixing glass, chill and strain into cocktail glass",
   "strIngredients": "Jack Daniels-1 oz , Midori Melon Liqueur-1/2 oz , Sour Mix-2 oz",
   "incorrect": "Bourbon Sour, Allegheny, Absolut limousine"
 },
 {
   "strDrink": "Apricot Lady",
   "questions": "Light Rum-1 1/2 oz , Apricot Brandy-1 oz , Triple Sec-1 tsp , Lemon Juice-1/2 oz , Egg White-1, Orange-1 : In a shaker half-filled with ice cubes, combine the rum, apricot brandy, triple sec, lemon juice, and egg white. Shake well. Strain into an old-fashioned glass almost filled with ice cubes. Garnish with the orange slice.",
   "strInstructions": "In a shaker half-filled with ice cubes, combine the rum, apricot brandy, triple sec, lemon juice, and egg white. Shake well. Strain into an old-fashioned glass almost filled with ice cubes. Garnish with the orange slice.",
   "strIngredients": "Light Rum-1 1/2 oz , Apricot Brandy-1 oz , Triple Sec-1 tsp , Lemon Juice-1/2 oz , Egg White-1, Orange-1",
   "incorrect": "Hawaiian Cocktail, Thai Coffee, Irish Russian"
 },
 {
   "strDrink": "Apricot punch",
   "questions": "Apricot Brandy-1 qt , Champagne-4 fifth , Vodka-1 fifth , 7-Up-4 L , Orange Juice-1/2 gal : Pour all ingrediants into a large punch bowl. Add ice and 4 oranges that are peeled and divided.",
   "strInstructions": "Pour all ingrediants into a large punch bowl. Add ice and 4 oranges that are peeled and divided.",
   "strIngredients": "Apricot Brandy-1 qt , Champagne-4 fifth , Vodka-1 fifth , 7-Up-4 L , Orange Juice-1/2 gal",
   "incorrect": "Flying Scotchman, French \"75\", Kiwi Papaya Smoothie"
 },
 {
   "strDrink": "Archbishop",
   "questions": "Gin-2 oz , Wine-1 oz Green Ginger , Benedictine-1 tsp , Lime-1: In an old-fashioned glass almost filled with ice cubes, combine all of the ingredients. Stir well.",
   "strInstructions": "In an old-fashioned glass almost filled with ice cubes, combine all of the ingredients. Stir well.",
   "strIngredients": "Gin-2 oz , Wine-1 oz Green Ginger , Benedictine-1 tsp , Lime-1",
   "incorrect": "Hot Creamy Bush, Orange Push-up, Amaretto Liqueur"
 },
 {
   "strDrink": "Arctic Fish",
   "questions": "Vodka-1/3 part , Grape soda-1/3 part , Orange Juice-1/3 part , Ice-lots , Candy-1 dash : Fill glass with ice and fish, add vodka, grape soda and orange juice. DO NOT STIR!!!!! Serve well chilled.",
   "strInstructions": "Fill glass with ice and fish, add vodka, grape soda and orange juice. DO NOT STIR!!!!! Serve well chilled.",
   "strIngredients": "Vodka-1/3 part , Grape soda-1/3 part , Orange Juice-1/3 part , Ice-lots , Candy-1 dash",
   "incorrect": "Monkey Gland, Pink Penocha, Gentleman's Club"
 },
 {
   "strDrink": "Arctic Mouthwash",
   "questions": "Maui-5 oz blue , Mountain Dew-5 oz , Ice Cubes: Blend all ingredients in a blender on high until ice is finely crushed. It should be of a slushy consistency. Pour immediately and serve.",
   "strInstructions": "Blend all ingredients in a blender on high until ice is finely crushed. It should be of a slushy consistency. Pour immediately and serve.",
   "strIngredients": "Maui-5 oz blue , Mountain Dew-5 oz , Ice Cubes",
   "incorrect": "Derby, Sidecar Cocktail, Foxy Lady"
 },
 {
   "strDrink": "Arise My Love",
   "questions": "Champagne-Chilled , Green Creme de Menthe-1 tsp: Put creme de menthe into a champagne flute. Fill with chilled champagne and serve.",
   "strInstructions": "Put creme de menthe into a champagne flute. Fill with chilled champagne and serve.",
   "strIngredients": "Champagne-Chilled , Green Creme de Menthe-1 tsp",
   "incorrect": "Addison Special, Midnight Cowboy, Chocolate Drink"
 },
 {
   "strDrink": "Arizona Antifreeze",
   "questions": "Vodka-1/3 oz , Midori Melon Liqueur-1/3 oz , Sweet and Sour-1/3 oz : Pour all ingredients into shot glass and slam !!!!",
   "strInstructions": "Pour all ingredients into shot glass and slam !!!!",
   "strIngredients": "Vodka-1/3 oz , Midori Melon Liqueur-1/3 oz , Sweet and Sour-1/3 oz",
   "incorrect": "Aztec Punch, Kamikaze, Port Wine Flip"
 },
 {
   "strDrink": "Arizona Stingers",
   "questions": "Absolut Vodka-2 shots , Iced Tea-12 oz lemon: Place ice cubes in the hurricane glass . Add the 2 HEAPING shots of Absolute Vodka (Note: You can add as many shots of Absolute as you want!) Fill the rest of glass with the Arizona Icetea with lemon. Stir to mix using a spoon. Drink up and enjoy!!!!!!!",
   "strInstructions": "Place ice cubes in the hurricane glass . Add the 2 HEAPING shots of Absolute Vodka (Note: You can add as many shots of Absolute as you want!) Fill the rest of glass with the Arizona Icetea with lemon. Stir to mix using a spoon. Drink up and enjoy!!!!!!!",
   "strIngredients": "Absolut Vodka-2 shots , Iced Tea-12 oz lemon",
   "incorrect": "Rum Old-fashioned, After Supper Cocktail, Orangeade"
 },
 {
   "strDrink": "Arizona Twister",
   "questions": "Vodka-1 shot , Malibu Rum-1 shot , Gold tequila-1 shot , Orange Juice-1 splash , Pineapple Juice-1 splash , Cream of coconut-1 splash , Grenadine-1 dash , Ice-crushed , Pineapple-1 wedge: Just mix in the shots of rum, vodka, and tequila. Add splashes of the three juices, heavy on the Pineapple. Top off with grenadine. Crushed ice should already be in glass. Top off the glass with a Pineapple wedge.",
   "strInstructions": "Just mix in the shots of rum, vodka, and tequila. Add splashes of the three juices, heavy on the Pineapple. Top off with grenadine. Crushed ice should already be in glass. Top off the glass with a Pineapple wedge.",
   "strIngredients": "Vodka-1 shot , Malibu Rum-1 shot , Gold tequila-1 shot , Orange Juice-1 splash , Pineapple Juice-1 splash , Cream of coconut-1 splash , Grenadine-1 dash , Ice-crushed , Pineapple-1 wedge",
   "incorrect": "Snakebite and Black, Miami VIce, Creme de Menthe"
 },
 {
   "strDrink": "Army special",
   "questions": "Vodka-30 ml , Gin-30 ml , Lime Juice Cordial-45 ml , Ice-1/2 glass crushed : Pour Vodka, Gin and lime cordial into glass, and top up with crushed ice. Wait for ice to melt slightly and sip without a straw.",
   "strInstructions": "Pour Vodka, Gin and lime cordial into glass, and top up with crushed ice. Wait for ice to melt slightly and sip without a straw.",
   "strIngredients": "Vodka-30 ml , Gin-30 ml , Lime Juice Cordial-45 ml , Ice-1/2 glass crushed",
   "incorrect": "Bobby Burns Cocktail, Artillery Punch, Gin Cooler"
 },
 {
   "strDrink": "Arthur Tompkins",
   "questions": "Gin-2 oz , Grand Marnier-1/2 oz , Lemon Juice-2 tsp , Twist of Lemon Peel: In a shaker half-filled with ice cubes, combine the gin, Grand Marnier, and lemon juice. Shake well. Strain into a sour glass and garnish with the lemon twist.",
   "strInstructions": "In a shaker half-filled with ice cubes, combine the gin, Grand Marnier, and lemon juice. Shake well. Strain into a sour glass and garnish with the lemon twist.",
   "strIngredients": "Gin-2 oz , Grand Marnier-1/2 oz , Lemon Juice-2 tsp , Twist of Lemon Peel",
   "incorrect": "Moranguito, Frozen Mint Daiquiri, Vodka Russian"
 },
 {
   "strDrink": "Artillery",
   "questions": "Sweet Vermouth-1 1/2 tsp , Gin-1 1/2 oz , Bitters-2 dashes : Stir all ingredients with ice, strain into a cocktail glass, and serve.",
   "strInstructions": "Stir all ingredients with ice, strain into a cocktail glass, and serve.",
   "strIngredients": "Sweet Vermouth-1 1/2 tsp , Gin-1 1/2 oz , Bitters-2 dashes",
   "incorrect": "Gin Sour, Afternoon, Strawberry Shivers"
 },
 {
   "strDrink": "Artillery Punch",
   "questions": "Tea-1 quart black , Rye Whiskey-1 quart , Red wine-1 fifth , Rum-1 pint Jamaican , Brandy-1/2 pint , Benedictine-1 1/2 oz , Orange Juice-1 pint , Lemon Juice-1/2 pint : Combine all the ingredients in a large punch bowl with a block of ice. If found too dry, sugar syrup may be added. Decorate with twists of lemon peel.",
   "strInstructions": "Combine all the ingredients in a large punch bowl with a block of ice. If found too dry, sugar syrup may be added. Decorate with twists of lemon peel.",
   "strIngredients": "Tea-1 quart black , Rye Whiskey-1 quart , Red wine-1 fifth , Rum-1 pint Jamaican , Brandy-1/2 pint , Benedictine-1 1/2 oz , Orange Juice-1 pint , Lemon Juice-1/2 pint",
   "incorrect": "Champagne Cocktail, A Furlong Too Late, A Splash of Nash"
 },
 {
   "strDrink": "Atlantic Sun",
   "questions": "Vodka-2/3 oz Smirnoff , Southern Comfort-2/3 oz , Passion Fruit Syrup-2/3 oz , Sweet and Sour-2 oz , Club Soda-1 dash : Shake all the ingredients, top the drink with soda. Garnish with a slice of orange.",
   "strInstructions": "Shake all the ingredients, top the drink with soda. Garnish with a slice of orange.",
   "strIngredients": "Vodka-2/3 oz Smirnoff , Southern Comfort-2/3 oz , Passion Fruit Syrup-2/3 oz , Sweet and Sour-2 oz , Club Soda-1 dash",
   "incorrect": "Absolut Sex, AT&T, Apple Karate"
 },
 {
   "strDrink": "Atomic Lokade",
   "questions": "Lemonade-5 oz , Vodka-1 oz , Blue Curacao-1/2 oz , Triple Sec-1/2 oz , Sugar, Ice : In a shaker, place lemonade, vodka, blue Curacao, and triple sec together. Shake with ice and strain into glass. Add sugar to taste",
   "strInstructions": "In a shaker, place lemonade, vodka, blue Curacao, and triple sec together. Shake with ice and strain into glass. Add sugar to taste",
   "strIngredients": "Lemonade-5 oz , Vodka-1 oz , Blue Curacao-1/2 oz , Triple Sec-1/2 oz , Sugar\n , Ice",
   "incorrect": "Grass Skirt, H.D., Imperial Fizz"
 },
 {
   "strDrink": "Auburn Headbanger",
   "questions": "Jagermeister-1 oz , Goldschlager-1 oz , : Mix in spread glass over ice. Strain and pour in shot glass. Sit down before shotting. ENJOY!!",
   "strInstructions": "Mix in spread glass over ice. Strain and pour in shot glass. Sit down before shotting. ENJOY!!",
   "strIngredients": "Jagermeister-1 oz , Goldschlager-1 oz ,",
   "incorrect": "Gin Squirt, 3 Wise Men, French 75"
 },
 {
   "strDrink": "Autodafa",
   "questions": "Vodka-1 1/3 oz , Lime Juice-1 dash , Soda Water: Mix and fill up with soda water. Drunk by finns on a sunny day any time of the year and day.",
   "strInstructions": "Mix and fill up with soda water. Drunk by finns on a sunny day any time of the year and day.",
   "strIngredients": "Vodka-1 1/3 oz , Lime Juice-1 dash , Soda Water",
   "incorrect": "Amaretto Sunset, Havana Cocktail, Dubonnet Cocktail"
 },
 {
   "strDrink": "Avalanche",
   "questions": "Crown Royal-1 shot , Kahlua-1 shot , Fill with Cream: Mix in highball glass over ice, shake well.",
   "strInstructions": "Mix in highball glass over ice, shake well.",
   "strIngredients": "Crown Royal-1 shot , Kahlua-1 shot , Fill with Cream",
   "incorrect": "Kentucky Colonel, Almond Joy, Nutty Irishman"
 },
 {
   "strDrink": "Avalon",
   "questions": "Vodka-3 parts, Pisang Ambon-1 part , Apple Juice-6 parts , Lemon Juice-1 1/2 part , Lemonade: Fill a tall glass with ice. Layer the Finlandia Vodka, lemon and apple juices, Pisang Ambon, and top up with lemonade. Stir slightly and garnish with a spiralled cucumber skin and a red cherry. The cucumber provides zest and looks attractive. This drink, created by Timo Haimi, took first prize in the 1991 Finlandia Vodka Long Drink Competition.",
   "strInstructions": "Fill a tall glass with ice. Layer the Finlandia Vodka, lemon and apple juices, Pisang Ambon, and top up with lemonade. Stir slightly and garnish with a spiralled cucumber skin and a red cherry. The cucumber provides zest and looks attractive. This drink, created by Timo Haimi, took first prize in the 1991 Finlandia Vodka Long Drink Competition.",
   "strIngredients": "Vodka-3 parts, Pisang Ambon-1 part , Apple Juice-6 parts , Lemon Juice-1 1/2 part , Lemonade",
   "incorrect": "Butter Baby, Cuba Libra, Royal Gin Fizz"
 },
 {
   "strDrink": "Aviation",
   "questions": "Gin- 2/3 oz, Lemon Juice- 2/3 oz, Maraschino Liqueur- 2/3 oz: Add all ingredients into cocktail shaker filled with ice. Shake well and strain into cocktail glass. Garnish with a cherry.",
   "strInstructions": "Add all ingredients into cocktail shaker filled with ice. Shake well and strain into cocktail glass. Garnish with a cherry.",
   "strIngredients": "Gin- 2/3 oz, Lemon Juice- 2/3 oz, Maraschino Liqueur- 2/3 oz",
   "incorrect": "Irish Curdling Cow, Chocolate Monkey, Zorro"
 },
 {
   "strDrink": "Aztec Punch",
   "questions": "Lemonade-1 can , Vodka-5 oz , Rum-7 oz , Ginger Ale-About 1 bottle : Mix all ingredients in a pitcher. Mix thoroughly and pour into whatever is available, the bigger the better! This drink packs a big punch, so don't over do it.",
   "strInstructions": "Mix all ingredients in a pitcher. Mix thoroughly and pour into whatever is available, the bigger the better! This drink packs a big punch, so don't over do it.",
   "strIngredients": "Lemonade-1 can , Vodka-5 oz , Rum-7 oz , Ginger Ale-About 1 bottle",
   "incorrect": "Sherry Flip, Scooter, Boston Sour"
 },
 {
   "strDrink": "B-52",
   "questions": "Bailey's Irish Cream, Grand Marnier, Kahlua: Layer ingredients into a shot glass. Serve with a Stirer.",
   "strInstructions": "Layer ingredients into a shot glass. Serve with a Stirer.",
   "strIngredients": "Bailey's Irish Cream, Grand Marnier, Kahlua",
   "incorrect": "Bailey's Dream Shake, Cranberry Punch, Ruby Tuesday"
 },
 {
   "strDrink": "B-53",
   "questions": "Kahlua-1/3 shot , Sambuca-1/3 shot , Grand Marnier-1/3 shot : Layer the Kahlua, Sambucca and Grand Marnier into a shot glas in that order. Better than B-52",
   "strInstructions": "Layer the Kahlua, Sambucca and Grand Marnier into a shot glas in that order. Better than B-52",
   "strIngredients": "Kahlua-1/3 shot , Sambuca-1/3 shot , Grand Marnier-1/3 shot",
   "incorrect": "Sweet Bananas, Addington, Moscow Mule"
 },
 {
   "strDrink": "Baby Eskimo",
   "questions": "Kahlua-2 oz , Milk-8 oz , Vanilla Ice-Cream-2 scoops : Leave ice-cream out for about 10 minutes. Add ingredients in order, stir with chopstick (butter knife or spoon works too). Consume immediately and often. Nice and light, great for following a heavy drink.",
   "strInstructions": "Leave ice-cream out for about 10 minutes. Add ingredients in order, stir with chopstick (butter knife or spoon works too). Consume immediately and often. Nice and light, great for following a heavy drink.",
   "strIngredients": "Kahlua-2 oz , Milk-8 oz , Vanilla Ice-Cream-2 scoops",
   "incorrect": "Apricot punch, Casino RoyAle, Ipamena"
 },
 {
   "strDrink": "Baby Guinness",
   "questions": "Kahlua-2 1/2 oz , Bailey's Irish Cream-1/2 oz: Pour Kahlua, almost filling shot glass. Then, carefully pour Baileys, using wall of shot glass. This will give the \"Guinness\" its \"head\".",
   "strInstructions": "Pour Kahlua, almost filling shot glass. Then, carefully pour Baileys, using wall of shot glass. This will give the \"Guinness\" its \"head\".",
   "strIngredients": "Kahlua-2 1/2 oz , Bailey's Irish Cream-1/2 oz",
   "incorrect": "Vesper, Alexander, Radioactive Long Island Iced Tea"
 },
 {
   "strDrink": "Bacardi Cocktail",
   "questions": "Light Rum-1 3/4 oz Bacardi , Lime Juice-1 oz , Sugar Syrup-1/2 tsp , Grenadine-1 dash : Shake together with ice. Strain into glass and serve.",
   "strInstructions": "Shake together with ice. Strain into glass and serve.",
   "strIngredients": "Light Rum-1 3/4 oz Bacardi , Lime Juice-1 oz , Sugar Syrup-1/2 tsp , Grenadine-1 dash",
   "incorrect": "SCreaming Orgasm, Orange Oasis, B-53"
 },
 {
   "strDrink": "Bailey's Dream Shake",
   "questions": "Bailey's Irish Cream-2 oz , Vanilla Ice-Cream-2 scoops , Cream: Blend ingredients for 30 seconds. Definitely refreshing for a hot summer's day !",
   "strInstructions": "Blend ingredients for 30 seconds. Definitely refreshing for a hot summer's day !",
   "strIngredients": "Bailey's Irish Cream-2 oz , Vanilla Ice-Cream-2 scoops , Cream",
   "incorrect": "Planter's Punch, Flying Dutchman, Duchamp's Punch"
 },
 {
   "strDrink": "Balmoral",
   "questions": "Scotch-1 1/2 oz , Sweet Vermouth-1/2 oz , Dry Vermouth-1/2 oz , Bitters-2 dashes : In a mixing glass half-filled with ice cubes, combine all of the ingredients. Stir well. Strain into a cocktail glass.",
   "strInstructions": "In a mixing glass half-filled with ice cubes, combine all of the ingredients. Stir well. Strain into a cocktail glass.",
   "strIngredients": "Scotch-1 1/2 oz , Sweet Vermouth-1/2 oz , Dry Vermouth-1/2 oz , Bitters-2 dashes",
   "incorrect": "Affinity, Alabama Slammer, Bleeding Surgeon"
 },
 {
   "strDrink": "Banana Cantaloupe Smoothie",
   "questions": "Cantaloupe-Juice of 1/2 , Banana-1 : Juice cantaloupe, pour juice into blender, add banana, and liquify.",
   "strInstructions": "Juice cantaloupe, pour juice into blender, add banana, and liquify.",
   "strIngredients": "Cantaloupe-Juice of 1/2 , Banana-1",
   "incorrect": "Long Island Tea, Banana Strawberry Shake Daiquiri-type, Rum Punch"
 },
 {
   "strDrink": "Banana Daiquiri",
   "questions": "Light Rum-1 1/2 oz , Triple Sec-1 tblsp , Banana-1, Lime Juice-1 1/2 oz , Sugar-1 tsp , Cherry-1 : Pour all ingredients into shaker with ice cubes. Shake well. Strain in chilled cocktail glass.",
   "strInstructions": "Pour all ingredients into shaker with ice cubes. Shake well. Strain in chilled cocktail glass.",
   "strIngredients": "Light Rum-1 1/2 oz , Triple Sec-1 tblsp , Banana-1, Lime Juice-1 1/2 oz , Sugar-1 tsp , Cherry-1",
   "incorrect": "Van Vleet, Atlantic Sun, Old Fashioned"
 },
 {
   "strDrink": "Banana Milk Shake",
   "questions": "Milk-3 1/3 oz cold , Orange Juice-1 1/3 oz , Sugar Syrup-2 tsp , Banana: Blend very well, preferably in a household mixer. Serve in a wine glass, garnish with whipped cream and a piece of banana.",
   "strInstructions": "Blend very well, preferably in a household mixer. Serve in a wine glass, garnish with whipped cream and a piece of banana.",
   "strIngredients": "Milk-3 1/3 oz cold , Orange Juice-1 1/3 oz , Sugar Syrup-2 tsp , Banana",
   "incorrect": "Blue Lagoon, Turf Cocktail, Iced Coffee"
 },
 {
   "strDrink": "Banana Strawberry Shake",
   "questions": "Strawberries-1/2 lb frozen , Banana-1 frozen , Yoghurt-1 cup plain , Milk-1 cup , Honey- to taste: Blend all together in a blender until smooth.",
   "strInstructions": "Blend all together in a blender until smooth.",
   "strIngredients": "Strawberries-1/2 lb frozen , Banana-1 frozen , Yoghurt-1 cup plain , Milk-1 cup , Honey- to taste",
   "incorrect": "Absolut Stress #2, Black & Tan, California Root Beer"
 },
 {
   "strDrink": "Banana Strawberry Shake Daiquiri-type",
   "questions": "Strawberries-1/2 lb frozen , Banana-1 frozen , Apple Juice-2 cups fresh : Blend all together in a blender until smooth.",
   "strInstructions": "Blend all together in a blender until smooth.",
   "strIngredients": "Strawberries-1/2 lb frozen , Banana-1 frozen , Apple Juice-2 cups fresh",
   "incorrect": "Mary Pickford, Pink Lady, Flaming Lamborghini"
 },
 {
   "strDrink": "Barracuda",
   "questions": "Rum-4.1 2/3 oz, Galliano-1.1 2/3 oz, Pineapple Juice-2 oz, Lime Juice- 1 dash, Top off with Prosecco : Shake pour ingredients with ice. Strain into glass, top with Sparkling wine.",
   "strInstructions": "Shake pour ingredients with ice. Strain into glass, top with Sparkling wine.",
   "strIngredients": "Rum-4.1 2/3 oz, Galliano-1.1 2/3 oz, Pineapple Juice-2 oz, Lime Juice- 1 dash, Top off with Prosecco",
   "incorrect": "Alice in Wonderland, Adam Sunrise, Limeade"
 },
 {
   "strDrink": "Belgian Blue",
   "questions": "Vodka-2/3 oz , Coconut Liqueur-1/3 oz , Blue Curacao-1/3 oz , Fill with Sprite: Just pour all ingredients in the glass and stir…",
   "strInstructions": "Just pour all ingredients in the glass and stir…",
   "strIngredients": "Vodka-2/3 oz , Coconut Liqueur-1/3 oz , Blue Curacao-1/3 oz , Fill with Sprite",
   "incorrect": "Sloe Gin Cocktail, Gluehwein, Sangria - The World's Best"
 },
 {
   "strDrink": "Bellini",
   "questions": "Champagne-6 oz , Peach Schnapps-1 oz: Pour peach puree into chilled flute, add sparkling wine. Stir gently.",
   "strInstructions": "Pour peach puree into chilled flute, add sparkling wine. Stir gently.",
   "strIngredients": "Champagne-6 oz , Peach Schnapps-1 oz",
   "incorrect": "Apello, John Collins, National Aquarium"
 },
 {
   "strDrink": "Bellini Martini",
   "questions": "Ice Cubes - 8, Vodka-3 oz , Peach nectar-1.5 oz , Peach Schnapps-1.5 oz , Lemon Peel-1 : Add ice cubes to shaker. Add vodka. Add peach schnapps. Add peach nectar. Shake. Strain into glass. Add lemon twist peel.",
   "strInstructions": "Add ice cubes to shaker.\n \n Add vodka.\n \n Add peach schnapps.\n \n Add peach nectar.\n \n Shake.\n \n Strain into glass.\n \n Add lemon twist peel.",
   "strIngredients": "Ice Cubes - 8, Vodka-3 oz , Peach nectar-1.5 oz , Peach Schnapps-1.5 oz , Lemon Peel-1",
   "incorrect": "Amaretto Sour, Strawberry Lemonade, Snowball"
 },
 {
   "strDrink": "Bermuda Highball",
   "questions": "Brandy-3/4 oz , Gin-3/4 oz , Dry Vermouth-3/4 oz , Carbonated Water: Pour brandy, gin, and dry vermouth into a highball glass over ice cubes. Fill with carbonated water and stir. Add the twist of lemon and serve. (Ginger Ale may be substituted for carbonated water, if preferred.)",
   "strInstructions": "Pour brandy, gin, and dry vermouth into a highball glass over ice cubes. Fill with carbonated water and stir. Add the twist of lemon and serve. (Ginger Ale may be substituted for carbonated water, if preferred.)",
   "strIngredients": "Brandy-3/4 oz , Gin-3/4 oz , Dry Vermouth-3/4 oz , Carbonated Water",
   "incorrect": "Ice Pick #1, Jack's Vanilla Coke, Shot-gun"
 },
 {
   "strDrink": "Berry Deadly",
   "questions": "Everclear-2 pint , Wine-1 bottle Boone Strawberry Hill , Orange Juice-1/2 gal , Kool-Aid-1 gal Tropical Berry : Add all ingredients to large bowl. Stir gently. Serve chilled.",
   "strInstructions": "Add all ingredients to large bowl. Stir gently. Serve chilled.",
   "strIngredients": "Everclear-2 pint , Wine-1 bottle Boone Strawberry Hill , Orange Juice-1/2 gal , Kool-Aid-1 gal Tropical Berry",
   "incorrect": "Amaretto And Cream, Shanghai Cocktail, Spiking coffee"
 },
 {
   "strDrink": "Between The Sheets",
   "questions": "Brandy-1 oz , Light Rum-1 oz , Triple Sec-1 oz , Lemon Juice-1 oz : Pour all ingredients into shaker with ice cubes, shake, strain into chilled cocktail glass.",
   "strInstructions": "Pour all ingredients into shaker with ice cubes, shake, strain into chilled cocktail glass.",
   "strIngredients": "Brandy-1 oz , Light Rum-1 oz , Triple Sec-1 oz , Lemon Juice-1 oz",
   "incorrect": "Casino, Talos Coffee, Bible Belt"
 },
 {
   "strDrink": "Bible Belt",
   "questions": "Southern Comfort-2 oz , Triple Sec-1/2 oz , Lime-2 wedges , Sour Mix-2 oz : Mix all ingredients, and pour over ice.",
   "strInstructions": "Mix all ingredients, and pour over ice.",
   "strIngredients": "Southern Comfort-2 oz , Triple Sec-1/2 oz , Lime-2 wedges , Sour Mix-2 oz",
   "incorrect": "Sangria #1, Rusty Nail, Spritz"
 },
 {
   "strDrink": "Big Red",
   "questions": "Irish Cream-1/2 oz , Goldschlager-1/2 oz: Pour ingredients into 1 ounce shot glass",
   "strInstructions": "Pour ingredients into 1 ounce shot glass",
   "strIngredients": "Irish Cream-1/2 oz , Goldschlager-1/2 oz",
   "incorrect": "Pink Panty Pulldowns, Apple Pie with A Crust, Sweet Tooth"
 },
 {
   "strDrink": "Black & Tan",
   "questions": "Ale-1 part Bass p Ale , Guinness Stout-1 part: Fill pint glass half full with Bass. Next pour Guiness over a spoon slowly until glass is full. If done correctly the Guiness will stay on top and the Bass on bottom hence the name Black & Tan.",
   "strInstructions": "Fill pint glass half full with Bass. Next pour Guiness over a spoon slowly until glass is full. If done correctly the Guiness will stay on top and the Bass on bottom hence the name Black & Tan.",
   "strIngredients": "Ale-1 part Bass p Ale , Guinness Stout-1 part",
   "incorrect": "Amaretto Mist, Tequila Fizz, Tequila Sour"
 },
 {
   "strDrink": "Black Forest Shake",
   "questions": "Ice Cubes, Chocolate Syrup, Cherry brandy, Vodka, Milk: In a blender put ice cubes, chocolate syrup, cherry brandy, vodka, and milk. Blend very well.",
   "strInstructions": "In a blender put ice cubes, chocolate syrup, cherry brandy, vodka, and milk. Blend very well.",
   "strIngredients": "Ice Cubes\n , Chocolate Syrup\n , Cherry brandy\n , Vodka\n , Milk",
   "incorrect": "Lone Tree Cocktail, Kir, Lone Tree Cooler"
 },
 {
   "strDrink": "Black Russian",
   "questions": "Coffee Liqueur-3/4 oz , Vodka-1 1/2 oz: Pour the ingredients into an old fashioned glass filled with ice cubes. Stir gently.",
   "strInstructions": "Pour the ingredients into an old fashioned glass filled with ice cubes. Stir gently.",
   "strIngredients": "Coffee Liqueur-3/4 oz , Vodka-1 1/2 oz",
   "incorrect": "Whitecap Margarita, Brandy Cobbler, Royal Bitch"
 },
 {
   "strDrink": "Black and Brown",
   "questions": "Guinness Stout, Root Beer : CAREFULLY to avoid explosive head formation: Pour Beer glass half full of favorite rootbeer and top off with Guinness.",
   "strInstructions": "CAREFULLY to avoid explosive head formation: Pour Beer glass half full of favorite rootbeer and top off with Guinness.",
   "strIngredients": "Guinness Stout, Root Beer",
   "incorrect": "Aloha Fruit punch, San Francisco, Jello shots"
 },
 {
   "strDrink": "Blackthorn",
   "questions": "Sweet Vermouth-1 oz , Sloe Gin-1 1/2 oz , Twist of Lemon Peel: Stir sloe gin and vermouth with ice and strain into a cocktail glass. Add the twist of lemon peel and serve.",
   "strInstructions": "Stir sloe gin and vermouth with ice and strain into a cocktail glass. Add the twist of lemon peel and serve.",
   "strIngredients": "Sweet Vermouth-1 oz , Sloe Gin-1 1/2 oz , Twist of Lemon Peel",
   "incorrect": "Absolut Evergreen, Sidecar, Banana Strawberry Shake"
 },
 {
   "strDrink": "Bleeding Surgeon",
   "questions": "Dark Rum-1 shot , Orange-1 slIce , Surge-1/2 glass , Cranberry Juice-1/2 glass : Pour Shot of Rum over slice of orange. Fill the remaining space in glass half way full of surge or similar drink. Finish off glass with cranberry juice. Be carefull, warm surge may foam over the glass.",
   "strInstructions": "Pour Shot of Rum over slice of orange. Fill the remaining space in glass half way full of surge or similar drink. Finish off glass with cranberry juice. Be carefull, warm surge may foam over the glass.",
   "strIngredients": "Dark Rum-1 shot , Orange-1 slIce , Surge-1/2 glass , Cranberry Juice-1/2 glass",
   "incorrect": "Wine Cooler, Bloody Mary, Grim Reaper"
 },
 {
   "strDrink": "Blind Russian",
   "questions": "Bailey's Irish Cream-3/4 oz , Godiva Liqueur-3/4 oz , Kahlua-3/4 oz , Butterscotch Schnapps-1/2 oz , Milk- to fill: Fill glass with ice. Add all liquers. Add milk. shake.",
   "strInstructions": "Fill glass with ice. Add all liquers. Add milk. shake.",
   "strIngredients": "Bailey's Irish Cream-3/4 oz , Godiva Liqueur-3/4 oz , Kahlua-3/4 oz , Butterscotch Schnapps-1/2 oz , Milk- to fill",
   "incorrect": "Spanish Chocolate, Almeria, Caribbean Orange Liqueur"
 },
 {
   "strDrink": "Bloody Maria",
   "questions": "Tequila-1 oz , Tomato Juice-2 oz , Lemon Juice-1 dash , Tabasco Sauce-1 dash , Celery Salt-1 dash , Lemon-1 slIce : Shake all ingredients (except lemon slice) with cracked ice and strain into an old-fashioned glass over ice cubes. Add the slice of lemon and serve.",
   "strInstructions": "Shake all ingredients (except lemon slice) with cracked ice and strain into an old-fashioned glass over ice cubes. Add the slice of lemon and serve.",
   "strIngredients": "Tequila-1 oz , Tomato Juice-2 oz , Lemon Juice-1 dash , Tabasco Sauce-1 dash , Celery Salt-1 dash , Lemon-1 slIce",
   "incorrect": "A Gilligan's Island, Dark and Stormy, Nuked Hot Chocolate"
 },
 {
   "strDrink": "Bloody Mary",
   "questions": "Vodka-1 1/2 oz , Tomato Juice-3 oz , Lemon Juice-1 dash , Worcestershire Sauce-1/2 tsp , Tabasco Sauce-2-3 drops , Lime-1 wedge : Stiring gently, pour all ingredients into highball glass. Garnish.",
   "strInstructions": "Stiring gently, pour all ingredients into highball glass. Garnish.",
   "strIngredients": "Vodka-1 1/2 oz , Tomato Juice-3 oz , Lemon Juice-1 dash , Worcestershire Sauce-1/2 tsp , Tabasco Sauce-2-3 drops , Lime-1 wedge",
   "incorrect": "Absinthe #2, Citrus Coke, Addison"
 },
 {
   "strDrink": "Blue Lagoon",
   "questions": "Vodka-1 oz , Blue Curacao-1 oz , Lemonade: Pour vodka and curacao over ice in a highball glass. Fill with lemonade, top with the cherry, and serve.",
   "strInstructions": "Pour vodka and curacao over ice in a highball glass. Fill with lemonade, top with the cherry, and serve.",
   "strIngredients": "Vodka-1 oz , Blue Curacao-1 oz , Lemonade",
   "incorrect": "Almond Chocolate Coffee, Malibu Twister, Jitterbug"
 },
 {
   "strDrink": "Blue Margarita",
   "questions": "Tequila-1 1/2 oz , Blue Curacao-1 oz , Lime Juice-1 oz , Salt-Coarse : Rub rim of cocktail glass with lime juice. Dip rim in coarse salt. Shake tequila, blue curacao, and lime juice with ice, strain into the salt-rimmed glass, and serve.",
   "strInstructions": "Rub rim of cocktail glass with lime juice. Dip rim in coarse salt. Shake tequila, blue curacao, and lime juice with ice, strain into the salt-rimmed glass, and serve.",
   "strIngredients": "Tequila-1 1/2 oz , Blue Curacao-1 oz , Lime Juice-1 oz , Salt-Coarse",
   "incorrect": "Flaming Dr. Pepper, Red Snapper, 50/50"
 },
 {
   "strDrink": "Blue Mountain",
   "questions": "Anejo Rum-1 1/2 oz , Tia Maria-1/2 oz , Vodka-1/2 oz , Orange Juice-1 oz , Lemon Juice-1 tsp : In a shaker half-filled with ice cubes, combine all of the ingredients. Shake well. Strain into an old-fashioned glass alomst filled with ice cubes.",
   "strInstructions": "In a shaker half-filled with ice cubes, combine all of the ingredients. Shake well. Strain into an old-fashioned glass alomst filled with ice cubes.",
   "strIngredients": "Anejo Rum-1 1/2 oz , Tia Maria-1/2 oz , Vodka-1/2 oz , Orange Juice-1 oz , Lemon Juice-1 tsp",
   "incorrect": "Adam, Gin Daisy, Godfather"
 },
 {
   "strDrink": "Bluebird",
   "questions": "Gin-1 1/2 oz , Triple Sec-1/2 oz , Blue Curacao-1/2 oz , Bitters-2 dashes , Maraschino Cherry-1, Lemon Peel-1 twist of : In a mixing glass half-filled with crushed ice, combine the gin, triple sec, Curacao, and bitters. Stir well. Strain into a cocktail glass and garnish with the lemon twist and the cherry.",
   "strInstructions": "In a mixing glass half-filled with crushed ice, combine the gin, triple sec, Curacao, and bitters. Stir well. Strain into a cocktail glass and garnish with the lemon twist and the cherry.",
   "strIngredients": "Gin-1 1/2 oz , Triple Sec-1/2 oz , Blue Curacao-1/2 oz , Bitters-2 dashes , Maraschino Cherry-1, Lemon Peel-1 twist of",
   "incorrect": "Egg Cream, Bloody Maria, Swedish Coffee"
 },
 {
   "strDrink": "Bob Marley",
   "questions": "Midori Melon Liqueur-1/2 oz , Jagermeister-1/2 oz , Goldschlager-1/2 oz : Layer in a 2 oz shot glass or pony glass",
   "strInstructions": "Layer in a 2 oz shot glass or pony glass",
   "strIngredients": "Midori Melon Liqueur-1/2 oz , Jagermeister-1/2 oz , Goldschlager-1/2 oz",
   "incorrect": "Adonis Cocktail, Auburn Headbanger, Lemouroudji"
 },
 {
   "strDrink": "Bobby Burns Cocktail",
   "questions": "Sweet Vermouth-1 1/2 oz , Scotch-1 1/2 oz , Benedictine-1 1/4 tsp , Twist of Lemon Peel: Stir all ingredients (except lemon peel) with ice and strain into a cocktail glass. Add the twist of lemon peel and serve.",
   "strInstructions": "Stir all ingredients (except lemon peel) with ice and strain into a cocktail glass. Add the twist of lemon peel and serve.",
   "strIngredients": "Sweet Vermouth-1 1/2 oz , Scotch-1 1/2 oz , Benedictine-1 1/4 tsp , Twist of Lemon Peel",
   "incorrect": "Bramble, Americano, Orgasm"
 },
 {
   "strDrink": "Boomerang",
   "questions": "Gin-2 oz , Dry Vermouth-1/2 oz , Bitters-2 dashes , Maraschino Liqueur-1/2 tsp , Maraschino Cherry-1 : In a mixing glass half-filled with ice cubes, combine the gin, vermouth, bitters, and maraschino liqueur. Stir well. Strain into a cocktail glass and garnish with the cherry.",
   "strInstructions": "In a mixing glass half-filled with ice cubes, combine the gin, vermouth, bitters, and maraschino liqueur. Stir well. Strain into a cocktail glass and garnish with the cherry.",
   "strIngredients": "Gin-2 oz , Dry Vermouth-1/2 oz , Bitters-2 dashes , Maraschino Liqueur-1/2 tsp , Maraschino Cherry-1",
   "incorrect": "Lemon Drop, Amaretto Stinger, Singapore Sling"
 },
 {
   "strDrink": "Boozy Snickers Milkshake",
   "questions": "Vanilla Ice-Cream-3 cups , Milk-1 cup , Godiva Liqueur-1/2 cup , Whipped Cream-for topping, caramel Sauce-4 tablespoons, Chocolate Sauce-4 tablespoons, Mini-Snickers Bars-15: Place the snickers bars in a plastic bag and roll over them with a rolling pin until crushed. Add crushed snickers pieces, ice cream, milk, caramel sauce, chocolate sauce, and chocolate liquor to a blender. Blend until shake is thick and frothy. Pour into glasses and top with chocolate liquor and whip cream.",
   "strInstructions": "Place the snickers bars in a plastic bag and roll over them with a rolling pin until crushed. Add crushed snickers pieces, ice cream, milk, caramel sauce, chocolate sauce, and chocolate liquor to a blender. Blend until shake is thick and frothy. Pour into glasses and top with chocolate liquor and whip cream.",
   "strIngredients": "Vanilla Ice-Cream-3 cups , Milk-1 cup , Godiva Liqueur-1/2 cup , Whipped Cream-for topping, caramel Sauce-4 tablespoons\n \n , Chocolate Sauce-4 tablespoons\n \n , Mini-Snickers Bars-15",
   "incorrect": "Margarita, Cuba Libre, Quentin"
 },
 {
   "strDrink": "Bora Bora",
   "questions": "Pineapple Juice-3 1/3 oz , Passion fruit Juice-2 oz , Lemon Juice-1/3 oz , Grenadine-1/3 oz : Prepare in a blender or shaker, serve in a highball glass on the rocks. Garnish with 1 slice of Pineapple and one cherry.",
   "strInstructions": "Prepare in a blender or shaker, serve in a highball glass on the rocks. Garnish with 1 slice of Pineapple and one cherry.",
   "strIngredients": "Pineapple Juice-3 1/3 oz , Passion fruit Juice-2 oz , Lemon Juice-1/3 oz , Grenadine-1/3 oz",
   "incorrect": "Pineapple GingerAle Smoothie, Mango Orange Smoothie, Zinger"
 },
 {
   "strDrink": "Boston Sidecar",
   "questions": "Light Rum-3/4 oz , Brandy-3/4 oz , Triple Sec-3/4 oz , Lime-Juice of 1/2 : Shake all ingredients with ice, strain into a cocktail glass, and serve.",
   "strInstructions": "Shake all ingredients with ice, strain into a cocktail glass, and serve.",
   "strIngredients": "Light Rum-3/4 oz , Brandy-3/4 oz , Triple Sec-3/4 oz , Lime-Juice of 1/2",
   "incorrect": "Blackthorn, Karsk, Imperial Cocktail"
 },
 {
   "strDrink": "Boston Sour",
   "questions": "Blended Whiskey-2 oz , Lemon-Juice of 1/2 , Powdered Sugar-1 tsp , Egg White-1, Lemon-1 slIce , Cherry-1 : Shake juice of lemon, powdered sugar, blended whiskey, and egg white with cracked ice and strain into a whiskey sour glass. Add the slice of lemon, top with the cherry, and serve.",
   "strInstructions": "Shake juice of lemon, powdered sugar, blended whiskey, and egg white with cracked ice and strain into a whiskey sour glass. Add the slice of lemon, top with the cherry, and serve.",
   "strIngredients": "Blended Whiskey-2 oz , Lemon-Juice of 1/2 , Powdered Sugar-1 tsp , Egg White-1, Lemon-1 slIce , Cherry-1",
   "incorrect": "Thai Iced Tea, Owen's Grandmother's Revenge, Yellow Bird"
 },
 {
   "strDrink": "Bourbon Sling",
   "questions": "Sugar-1 tsp superfine , Water-2 tsp , Lemon Juice-1 oz , Bourbon-2 oz , Twist of Lemon Peel : In a shaker half-filled with ice cubes, combine the sugar, water, lemon juice, and bourbon. Shake well. Strain well. Strain into a highball glass. Garnish with the lemon twist.",
   "strInstructions": "In a shaker half-filled with ice cubes, combine the sugar, water, lemon juice, and bourbon. Shake well. Strain well. Strain into a highball glass. Garnish with the lemon twist.",
   "strIngredients": "Sugar-1 tsp superfine , Water-2 tsp , Lemon Juice-1 oz , Bourbon-2 oz , Twist of Lemon Peel",
   "incorrect": "Dragonfly, Caipirinha, A. J."
 },
 {
   "strDrink": "Bourbon Sour",
   "questions": "Bourbon-2 oz , Lemon Juice-1 oz , Sugar-1/2 tsp superfine , Orange-1, Maraschino Cherry-1 : In a shaker half-filled with ice cubes, combine the bourbon, lemon juice, and sugar. Shake well. Strain into a whiskey sour glass, garnish with the orange slice and cherry.",
   "strInstructions": "In a shaker half-filled with ice cubes, combine the bourbon, lemon juice, and sugar. Shake well. Strain into a whiskey sour glass, garnish with the orange slice and cherry.",
   "strIngredients": "Bourbon-2 oz , Lemon Juice-1 oz , Sugar-1/2 tsp superfine , Orange-1, Maraschino Cherry-1",
   "incorrect": "Tommy's Margarita, Harvey Wallbanger, Limona Corona"
 },
 {
   "strDrink": "Boxcar",
   "questions": "Gin-1 1/2 oz , Triple Sec-1 oz , Lemon Juice-1 tsp , Grenadine-1/2 tsp , Egg White-1 : In a shaker half-filled with ice cubes, combine all of the ingredients. Shake well. Strain into a sour glass.",
   "strInstructions": "In a shaker half-filled with ice cubes, combine all of the ingredients. Shake well. Strain into a sour glass.",
   "strIngredients": "Gin-1 1/2 oz , Triple Sec-1 oz , Lemon Juice-1 tsp , Grenadine-1/2 tsp , Egg White-1",
   "incorrect": "Girl From Ipanema, A True Amaretto Sour, Damned if you do"
 },
 {
   "strDrink": "Brain Fart",
   "questions": "Everclear-1 fifth , Vodka-1 fifth Smirnoff Red Label , Mountain Dew-2 L , Surge-2 L , Lemon Juice-1 small bottle , Rum-1 pint : Mix all ingredients together. Slowly and gently. Works best if ice is added to punch bowl and soda's are very cold.",
   "strInstructions": "Mix all ingredients together. Slowly and gently. Works best if ice is added to punch bowl and soda's are very cold.",
   "strIngredients": "Everclear-1 fifth , Vodka-1 fifth Smirnoff Red Label , Mountain Dew-2 L , Surge-2 L , Lemon Juice-1 small bottle , Rum-1 pint",
   "incorrect": "Between The Sheets, Brainteaser, 151 Florida Bushwacker"
 },
 {
   "strDrink": "Brainteaser",
   "questions": "Sambuca-30 ml white , Erin Cream-30 ml , Advocaat-5 ml : layered erin first, then sambuca and then avocart(should sit in middle of other two. To drink: use a straw to suck up avocart then shot the rest and then suck fumes up through straw.",
   "strInstructions": "layered erin first, then sambuca and then avocart(should sit in middle of other two. To drink: use a straw to suck up avocart then shot the rest and then suck fumes up through straw.",
   "strIngredients": "Sambuca-30 ml white , Erin Cream-30 ml , Advocaat-5 ml",
   "incorrect": "Victor, Jamaica Kiss, Cranberry Cordial"
 },
 {
   "strDrink": "Bramble",
   "questions": "Gin- 1/3 oz, lemon Juice- 2/3 oz, Sugar Syrup-1/3 oz, Creme de Mure- 2/3 oz: Fill glass with crushed ice. Build gin, lemon juice and simple syrup over. Stir, and then pour blackberry liqueur over in a circular fashion to create marbling effect. Garnish with two blackberries and lemon slice.",
   "strInstructions": "Fill glass with crushed ice. Build gin, lemon juice and simple syrup over. Stir, and then pour blackberry liqueur over in a circular fashion to create marbling effect. Garnish with two blackberries and lemon slice.",
   "strIngredients": "Gin- 1/3 oz, lemon Juice- 2/3 oz, Sugar Syrup-1/3 oz, Creme de Mure- 2/3 oz",
   "incorrect": "Chocolate Milk, Zoksel, Jam Donut"
 },
 {
   "strDrink": "Brandon and Will's Coke Float",
   "questions": "Vanilla Ice-Cream-2 scoops , Coca-Cola-1 can , Bourbon-2 oz : Scoop two large scoops of vanilla ice-cream into frosted beer mug. Next, add 2 ounces Maker's Mark. Then, pour in coke. Gently stir and enjoy.",
   "strInstructions": "Scoop two large scoops of vanilla ice-cream into frosted beer mug. Next, add 2 ounces Maker's Mark. Then, pour in coke. Gently stir and enjoy.",
   "strIngredients": "Vanilla Ice-Cream-2 scoops , Coca-Cola-1 can , Bourbon-2 oz",
   "incorrect": "9 1/2 Weeks, Mimosa, Arise My Love"
 },
 {
   "strDrink": "Brandy Alexander",
   "questions": "Brandy-1 oz , Creme de Cacao-1 oz white , Light Cream-1 oz , Nutmeg: Shake all ingredients (except nutmeg) with ice and strain contents into a cocktail glass. Sprinkle nutmeg on top and serve.",
   "strInstructions": "Shake all ingredients (except nutmeg) with ice and strain contents into a cocktail glass. Sprinkle nutmeg on top and serve.",
   "strIngredients": "Brandy-1 oz , Creme de Cacao-1 oz white , Light Cream-1 oz , Nutmeg",
   "incorrect": "Martinez Cocktail, Arizona Twister, Just a Moonmint"
 },
 {
   "strDrink": "Brandy Cobbler",
   "questions": "Sugar-1 tsp superfine , Club soda-3 oz , Lemon-1, Brandy-2 oz , Maraschino Cherry-1, Orange-1 : In an old-fashioned glass, dissolve the sugar in the club soda. Add crushed ice until the glass is almost full. Add the brandy. Stir well. Garnish with the cherry and the orange and lemon slices.",
   "strInstructions": "In an old-fashioned glass, dissolve the sugar in the club soda. Add crushed ice until the glass is almost full. Add the brandy. Stir well. Garnish with the cherry and the orange and lemon slices.",
   "strIngredients": "Sugar-1 tsp superfine , Club soda-3 oz , Lemon-1, Brandy-2 oz , Maraschino Cherry-1, Orange-1",
   "incorrect": "Scotch Cobbler, Absolutely Cranberry Smash, Coffee-Vodka"
 },
 {
   "strDrink": "Brandy Flip",
   "questions": "Brandy-2 oz , Egg-1 whole , Sugar-1 tsp superfine , Light Cream-1/2 oz , Nutmeg-1/8 tsp grated : In a shaker half-filled with ice cubes, combine the brandy, egg, sugar, and cream. Shake well. Strain into a sour glass and garnish with the nutmeg.",
   "strInstructions": "In a shaker half-filled with ice cubes, combine the brandy, egg, sugar, and cream. Shake well. Strain into a sour glass and garnish with the nutmeg.",
   "strIngredients": "Brandy-2 oz , Egg-1 whole , Sugar-1 tsp superfine , Light Cream-1/2 oz , Nutmeg-1/8 tsp grated",
   "incorrect": "Afterglow, California Lemonade, Abilene"
 },
 {
   "strDrink": "Brandy Sour",
   "questions": "Brandy-2 oz , Lemon-Juice of 1/2 , Powdered Sugar-1/2 tsp , Lemon-1/2 slIce , Cherry-1 : Shake brandy, juice of lemon, and powdered sugar with ice and strain into a whiskey sour glass. Decorate with the lemon slice, top with the cherry, and serve.",
   "strInstructions": "Shake brandy, juice of lemon, and powdered sugar with ice and strain into a whiskey sour glass. Decorate with the lemon slice, top with the cherry, and serve.",
   "strIngredients": "Brandy-2 oz , Lemon-Juice of 1/2 , Powdered Sugar-1/2 tsp , Lemon-1/2 slIce , Cherry-1",
   "incorrect": "Grizzly Bear, Angelica Liqueur, Microwave Hot Cocoa"
 },
 {
   "strDrink": "Brave Bull Shooter",
   "questions": "Tequila-1/2 oz , Tabasco sauce-1/2 oz: Pour Tabasco into bottom of shot glass and fill with tequila.",
   "strInstructions": "Pour Tabasco into bottom of shot glass and fill with tequila.",
   "strIngredients": "Tequila-1/2 oz , Tabasco sauce-1/2 oz",
   "incorrect": "After sex, Kool First Aid, Adios Amigos Cocktail"
 },
 {
   "strDrink": "Bruce's Puce",
   "questions": "Grenadine, Kahlua, Bailey's Irish Cream: In a regular-sized shot glass, layer, with a spoon or cherry, the grenadine , the Kahlua , then the Bailey's Irish cream in equal portions. It goes down really smooth ,and you don't even need a chaser. It tastes just like chocolate milk.(Really!)",
   "strInstructions": "In a regular-sized shot glass, layer, with a spoon or cherry, the grenadine , the Kahlua , then the Bailey's Irish cream in equal portions. It goes down really smooth ,and you don't even need a chaser. It tastes just like chocolate milk.(Really!)",
   "strIngredients": "Grenadine\n , Kahlua\n , Bailey's Irish Cream",
   "incorrect": "After Five, Banana Daiquiri, Grasshopper"
 },
 {
   "strDrink": "Bruised Heart",
   "questions": "Vodka-1/2 oz , Chambord Raspberry Liqueur-1/2 oz , Peachtree Schnapps-1/2 oz , Cranberry Juice-1/2 oz : Pour all ingredients in a mixing tin over ice, stir, and strain into shot glass",
   "strInstructions": "Pour all ingredients in a mixing tin over ice, stir, and strain into shot glass",
   "strIngredients": "Vodka-1/2 oz , Chambord Raspberry Liqueur-1/2 oz , Peachtree Schnapps-1/2 oz , Cranberry Juice-1/2 oz",
   "incorrect": "Rum Screwdriver, Mother's Milk, Danbooka"
 },
 {
   "strDrink": "Bubble Gum",
   "questions": "Vodka, Banana Liqueur, Orange Juice, Peach Schnapps: Layer in order into a shot glass.",
   "strInstructions": "Layer in order into a shot glass.",
   "strIngredients": "Vodka, Banana Liqueur, Orange Juice, Peach Schnapps",
   "incorrect": "Herbal flame, Coffee Liqueur, English Rose Cocktail"
 },
 {
   "strDrink": "Buccaneer",
   "questions": "Corona-1, Bacardi Limon-1 shot: Pour the corona into an 18oz beer glass pour the bacardi limon into the beer stir very gently",
   "strInstructions": "Pour the corona into an 18oz beer glass pour the bacardi limon into the beer stir very gently",
   "strIngredients": "Corona-1, Bacardi Limon-1 shot",
   "incorrect": "Kiwi Lemon, Oreo Mudslide, Gin Smash"
 },
 {
   "strDrink": "Bumble Bee #1",
   "questions": "Bailey's Irish Cream-1/3 oz , Kahlua-1/3 oz , Sambuca-1/3 oz : This is a layered shot. First pour the Bailey's into the shot glass. Then take an upside down spoon and touch it to the inside wall of the glass. Carefully add the Kahlua. Repeat this process for the Sambuca. If done properly, the alcohol will stay separated and resemble a bumble bee. Enjoy!!!",
   "strInstructions": "This is a layered shot. First pour the Bailey's into the shot glass. Then take an upside down spoon and touch it to the inside wall of the glass. Carefully add the Kahlua. Repeat this process for the Sambuca. If done properly, the alcohol will stay separated and resemble a bumble bee. Enjoy!!!",
   "strIngredients": "Bailey's Irish Cream-1/3 oz , Kahlua-1/3 oz , Sambuca-1/3 oz",
   "incorrect": "Freddy Kruger, Valencia  Cocktail, Absolutly Screwed Up"
 },
 {
   "strDrink": "Butter Baby",
   "questions": "Vanilla Ice-Cream-2 scoops , Butterscotch Schnapps-1 part , Milk-full glass , Vodka-2 parts : Blend together in a blender. Serve in a chilled Beer mug with Fresh Blueberries and caramel for topping.",
   "strInstructions": "Blend together in a blender. Serve in a chilled Beer mug with Fresh Blueberries and caramel for topping.",
   "strIngredients": "Vanilla Ice-Cream-2 scoops , Butterscotch Schnapps-1 part , Milk-full glass , Vodka-2 parts",
   "incorrect": "Downshift, Orange Crush, Kioki Coffee"
 },
 {
   "strDrink": "Cafe Savoy",
   "questions": "Coffee, Milk-1/2 oz , Triple Sec-1/2 oz , Brandy: Fill mug almost to top with coffee.Add milk, triple sec and brandy. Stir.",
   "strInstructions": "Fill mug almost to top with coffee.Add milk, triple sec and brandy. Stir.",
   "strIngredients": "Coffee\n , Milk-1/2 oz , Triple Sec-1/2 oz , Brandy",
   "incorrect": "English Highball, Orange Scented Hot Chocolate, Dark Caipirinha"
 },
 {
   "strDrink": "Caipirinha",
   "questions": "Sugar-2 tsp, Lime-1, Cachaca-2 1/2 oz : Place lime and sugar into old fashioned glass and muddle (mash the two ingredients together using a muddler or a wooden spoon). Fill the glass with ice and add the CachaÃ§a.",
   "strInstructions": "Place lime and sugar into old fashioned glass and muddle (mash the two ingredients together using a muddler or a wooden spoon). Fill the glass with ice and add the CachaÃ§a.",
   "strIngredients": "Sugar-2 tsp, Lime-1, Cachaca-2 1/2 oz",
   "incorrect": "Kill the cold Smoothie, Porto flip, Gin Toddy"
 },
 {
   "strDrink": "Caipirissima",
   "questions": "Lime-2, Sugar-2 tblsp , White Rum-2-3 oz , Ice-crushed : Same as Caipirinha but instead of cachaca you add WHITE RUM. It's great!!!!!!!!",
   "strInstructions": "Same as Caipirinha but instead of cachaca you add WHITE RUM. It's great!!!!!!!!",
   "strIngredients": "Lime-2, Sugar-2 tblsp , White Rum-2-3 oz , Ice-crushed",
   "incorrect": "Thriller, Queen Charlotte, Stone Sour"
 },
 {
   "strDrink": "California Lemonade",
   "questions": "Blended Whiskey-2 oz , Lemon-Juice of 1 , Lime-Juice of 1 , Powdered Sugar-1 tblsp , Grenadine-1/4 tsp , Carbonated Water: Shake all ingredients (except carbonated water) with ice and strain into a collins glass over shaved ice. Fill with carbonated water and stir. Decorate with slices of orange and lemon. Add the cherry and serve with a straw.",
   "strInstructions": "Shake all ingredients (except carbonated water) with ice and strain into a collins glass over shaved ice. Fill with carbonated water and stir. Decorate with slices of orange and lemon. Add the cherry and serve with a straw.",
   "strIngredients": "Blended Whiskey-2 oz , Lemon-Juice of 1 , Lime-Juice of 1 , Powdered Sugar-1 tblsp , Grenadine-1/4 tsp , Carbonated Water",
   "incorrect": "Adam & Eve, Hot Chocolate to Die for, London Town"
 },
 {
   "strDrink": "California Root Beer",
   "questions": "Kahlua-3/4 oz , Galliano-3/4 oz , Soda Water-Fill with : Put Kahlua and Galliano in highball glass fill with soda",
   "strInstructions": "Put Kahlua and Galliano in highball glass fill with soda",
   "strIngredients": "Kahlua-3/4 oz , Galliano-3/4 oz , Soda Water-Fill with",
   "incorrect": "Vodka Fizz, Blind Russian, Smut\n"
 },
 {
   "strDrink": "Campari Beer",
   "questions": "Lager-1 bottle , Campari-1 bottle + 1 2/3 oz: Use a 15 oz glass. Add Campari first. Fill with beer.",
   "strInstructions": "Use a 15 oz glass. Add Campari first. Fill with beer.",
   "strIngredients": "Lager-1 bottle , Campari-1 bottle + 1 2/3 oz",
   "incorrect": "Applecar, Bellini Martini, Avalon"
 },
 {
   "strDrink": "Caribbean Boilermaker",
   "questions": "Corona-1 bottle , Light Rum-1 shot: Pour the Corona into an 18oz beer glass pour the rum into the beer.",
   "strInstructions": "Pour the Corona into an 18oz beer glass pour the rum into the beer.",
   "strIngredients": "Corona-1 bottle , Light Rum-1 shot",
   "incorrect": "Mocha-Berry, Jelly Bean, Brave Bull Shooter"
 },
 {
   "strDrink": "Caribbean Orange Liqueur",
   "questions": "Orange-3 large , Vodka-3 cups , Sugar-1 1/3 cup superfine : Pare very thinly the bright-colored rind from the oranges (no white). Blot the peel on paper towels to remove any excess oil. Put peel in a 4 cup screw-top jar. Add 2 cups vodka. Close jar. Store in a cool, dark place for 2 days or until the vodka has absorbed the flavor. Remove peel and add remaining vodka. Close jar and add remaining cup of vodka. Close the jar and store in a cool dark place at least 1 month to age.",
   "strInstructions": "Pare very thinly the bright-colored rind from the oranges (no white). Blot the peel on paper towels to remove any excess oil. Put peel in a 4 cup screw-top jar. Add 2 cups vodka. Close jar. Store in a cool, dark place for 2 days or until the vodka has absorbed the flavor. Remove peel and add remaining vodka. Close jar and add remaining cup of vodka. Close the jar and store in a cool dark place at least 1 month to age.",
   "strIngredients": "Orange-3 large , Vodka-3 cups , Sugar-1 1/3 cup superfine",
   "incorrect": "Lassi Raita, Lady Love Fizz, Black Russian"
 },
 {
   "strDrink": "Casino",
   "questions": "Gin-2 oz , Maraschino Liqueur-1/4 tsp , Lemon Juice-1/4 tsp , Orange Bitters-2 dashes , Cherry-1 : Pour all ingredients into shaker with ice cubes. Shake well. Strain into chilled cocktail glass. Garnish with a lemon twist and a maraschino cherry. Serve without a straw.",
   "strInstructions": "Pour all ingredients into shaker with ice cubes. Shake well. Strain into chilled cocktail glass. Garnish with a lemon twist and a maraschino cherry. Serve without a straw.",
   "strIngredients": "Gin-2 oz , Maraschino Liqueur-1/4 tsp , Lemon Juice-1/4 tsp , Orange Bitters-2 dashes , Cherry-1",
   "incorrect": "After Dinner Cocktail, Amaretto Shake, Frozen Daiquiri"
 },
 {
   "strDrink": "Casino RoyAle",
   "questions": "Gin-2 oz , Lemon Juice-1/2 oz , Maraschino Liqueur-1 tsp , Orange Bitters-1 dash , Egg Yolk-1 : In a shaker half-filled with ice cubes, combine all of the ingredients. Shake well. Strain into a sour glass.",
   "strInstructions": "In a shaker half-filled with ice cubes, combine all of the ingredients. Shake well. Strain into a sour glass.",
   "strIngredients": "Gin-2 oz , Lemon Juice-1/2 oz , Maraschino Liqueur-1 tsp , Orange Bitters-1 dash , Egg Yolk-1",
   "incorrect": "Snake Bite (UK), Holloween Punch, Pysch Vitamin Light"
 },
 {
   "strDrink": "Castillian Hot Chocolate",
   "questions": "Cocoa powder-1/2 cup , Sugar-1 cup , Cornstarch-7 tsp , Water-1/2 cup , Milk-1 qt : Shift the cocoa and sugar together into a medium-sized saucepan. Dissolve the cornstarch in the water, and stir into the cocoa and sugar until it is a smooth paste. Begin heating the mixture, Stiring it with a whisk, and gradually pour in the milk. Continue Stiring with the whisk as you bring the liquid to a simmer. Allow the chocolate to simmer for about 10 minutes, Stiring often, until it is thick, glossy and completely smooth. Serve steaming hot in coffee mug. Serves six.",
   "strInstructions": "Shift the cocoa and sugar together into a medium-sized saucepan. Dissolve the cornstarch in the water, and stir into the cocoa and sugar until it is a smooth paste. Begin heating the mixture, Stiring it with a whisk, and gradually pour in the milk. Continue Stiring with the whisk as you bring the liquid to a simmer. Allow the chocolate to simmer for about 10 minutes, Stiring often, until it is thick, glossy and completely smooth. Serve steaming hot in coffee mug. Serves six.",
   "strIngredients": "Cocoa powder-1/2 cup , Sugar-1 cup , Cornstarch-7 tsp , Water-1/2 cup , Milk-1 qt",
   "incorrect": "Rail Splitter, Yoghurt Cooler, Diesel"
 },
 {
   "strDrink": "Champagne Cocktail",
   "questions": "Champagne-Chilled , Sugar-1 piece , Bitters-2 dashes , Twist of Lemon Peel, Cognac-1 dash : Add dash of Angostura bitter onto sugar cube and drop it into champagne flute. Add cognac followed by gently pouring chilled champagne. Garnish with orange slice and maraschino cherry.",
   "strInstructions": "Add dash of Angostura bitter onto sugar cube and drop it into champagne flute. Add cognac followed by gently pouring chilled champagne. Garnish with orange slice and maraschino cherry.",
   "strIngredients": "Champagne-Chilled , Sugar-1 piece , Bitters-2 dashes , Twist of Lemon Peel, Cognac-1 dash",
   "incorrect": "Zima Blaster, B-52, Amaretto Sweet & Sou"
 },
 {
   "strDrink": "Cherry Electric Lemonade",
   "questions": "Gin-1 oz, Tequila-1 oz, Vodka-1 oz, White Rum-1 oz, Triple Sec-1 oz, Cherry Grenadine-1 oz, Sweet and Sour-1 oz, Club Soda-3 oz, , : Now stir vigorously and then pour over a large cup of ice. Now drink it with a straw and stir occasionally.",
   "strInstructions": "Now stir vigorously and then pour over a large cup of ice. Now drink it with a straw and stir occasionally.",
   "strIngredients": "Gin-1 oz, Tequila-1 oz, Vodka-1 oz, White Rum-1 oz, Triple Sec-1 oz, Cherry Grenadine-1 oz, Sweet and Sour-1 oz, Club Soda-3 oz, ,",
   "incorrect": "French Martini, Egg Nog #4, 410 Gone"
 },
 {
   "strDrink": "Cherry Rum",
   "questions": "Light Rum-1 1/4 oz , Cherry Brandy-1 1/2 tsp , Light Cream-1 tblsp : Shake all ingredients with ice, strain into a cocktail glass, and serve.",
   "strInstructions": "Shake all ingredients with ice, strain into a cocktail glass, and serve.",
   "strIngredients": "Light Rum-1 1/4 oz , Cherry Brandy-1 1/2 tsp , Light Cream-1 tblsp",
   "incorrect": "Applejack, Gin Swizzle, 110 in the shade"
 },
 {
   "strDrink": "Chicago Fizz",
   "questions": "Light Rum-1 oz , Port-1 oz , Lemon-Juice of 1/2 , Powdered Sugar-1 tsp , Egg White-1, Carbonated Water: Shake all ingredients (except carbonated water) with ice and strain into a highball glass over two ice cubes. Fill with carbonated water, stir, and serve.",
   "strInstructions": "Shake all ingredients (except carbonated water) with ice and strain into a highball glass over two ice cubes. Fill with carbonated water, stir, and serve.",
   "strIngredients": "Light Rum-1 oz , Port-1 oz , Lemon-Juice of 1/2 , Powdered Sugar-1 tsp , Egg White-1, Carbonated Water",
   "incorrect": "Bacardi Cocktail, Port And Starboard, Jewel Of The Nile"
 },
 {
   "strDrink": "Chocolate Beverage",
   "questions": "Milk-6 cups , Chocolate-3 oz Mexican , Cinnamon-1 tsp powdered , Egg-3 , : Boil milk in the top of a deep double boiler five minutes. Remove from fire and add chocolate, mixed with the cinnamon, a little at a time, beating with molinillo or egg beater after each addition. When the chocolate is thoroughly blended, heat to the boiling point. Place over bottom of double boiler and add eggs, whipping constantly, until they are thoroughly blended and the mixture is frothing. Serve in coffee mug. Serves eight.",
   "strInstructions": "Boil milk in the top of a deep double boiler five minutes. Remove from fire and add chocolate, mixed with the cinnamon, a little at a time, beating with molinillo or egg beater after each addition. When the chocolate is thoroughly blended, heat to the boiling point. Place over bottom of double boiler and add eggs, whipping constantly, until they are thoroughly blended and the mixture is frothing. Serve in coffee mug. Serves eight.",
   "strIngredients": "Milk-6 cups , Chocolate-3 oz Mexican , Cinnamon-1 tsp powdered , Egg-3 ,",
   "incorrect": "Amaretto Rose, Kool-Aid Slammer, Rum Cooler"
 },
 {
   "strDrink": "Chocolate Black Russian",
   "questions": "Kahlua-1 oz , Vodka-1/2 oz , Chocolate Ice-Cream-5 oz : Combine all ingredients in an electric blender and blend at a low speed for a short length of time. Pour into a chilled champagne flute and serve.",
   "strInstructions": "Combine all ingredients in an electric blender and blend at a low speed for a short length of time. Pour into a chilled champagne flute and serve.",
   "strIngredients": "Kahlua-1 oz , Vodka-1/2 oz , Chocolate Ice-Cream-5 oz",
   "incorrect": "Vodka And Tonic, Royal Flush, Rum Sour"
 },
 {
   "strDrink": "Chocolate Drink",
   "questions": "Chocolate-125 gr, Milk-3/4 L , Water , : Melt the bar in a small amount of boiling water. Add milk. Cook over low heat, whipping gently (with a whisk, i would assume) until heated well. Don't let it boil! Serve in coffee mug.",
   "strInstructions": "Melt the bar in a small amount of boiling water. Add milk. Cook over low heat, whipping gently (with a whisk, i would assume) until heated well. Don't let it boil! Serve in coffee mug.",
   "strIngredients": "Chocolate-125 gr, Milk-3/4 L , Water ,",
   "incorrect": "Berry Deadly, Sweet Sangria, Sol Y Sombra"
 },
 {
   "strDrink": "Chocolate Milk",
   "questions": "Chocolate Liqueur-1/2 shot , Milk-1/2 shot , Amaretto-1 dash : Put the milk in the bottom, pour the Liquer on top and add the dash of amaretto. Do not mix. SLAM IT!",
   "strInstructions": "Put the milk in the bottom, pour the Liquer on top and add the dash of amaretto. Do not mix. SLAM IT!",
   "strIngredients": "Chocolate Liqueur-1/2 shot , Milk-1/2 shot , Amaretto-1 dash",
   "incorrect": "Absolutely Fabulous, Atomic Lokade, Ziemes Martini Apfelsaft"
 },
 {
   "strDrink": "Chocolate Monkey",
   "questions": "Banana Liqueur-1 shot , Creme de Cacao-2 shots , Chocolate Ice-Cream-2 scoops , Chocolate Syrup-1 oz , Chocolate Milk-4 oz , Whipped Cream-1, Cherry-1, Banana-1 piece : blend liqeuors with ice-cream, milk and syrup. pour into parfait glass, top with whipped cream and garnish with banana and cherry.",
   "strInstructions": "blend liqeuors with ice-cream, milk and syrup. pour into parfait glass, top with whipped cream and garnish with banana and cherry.",
   "strIngredients": "Banana Liqueur-1 shot , Creme de Cacao-2 shots , Chocolate Ice-Cream-2 scoops , Chocolate Syrup-1 oz , Chocolate Milk-4 oz , Whipped Cream-1, Cherry-1, Banana-1 piece",
   "incorrect": "Vampiro, Bob Marley, Tequila Surprise"
 },
 {
   "strDrink": "Citrus Coke",
   "questions": "Bacardi Limon-1 part , Coca-Cola-2 parts , : Pour half of coke in a glass. Then add Bacardi and top it off with the remaining coke. Stir and drink up!",
   "strInstructions": "Pour half of coke in a glass. Then add Bacardi and top it off with the remaining coke. Stir and drink up!",
   "strIngredients": "Bacardi Limon-1 part , Coca-Cola-2 parts ,",
   "incorrect": "A Piece of Ass, Amaretto Stone Sour #3, Bellini"
 },
 {
   "strDrink": "City Slicker",
   "questions": "Brandy-2 oz , Triple Sec-1/2 oz , Lemon Juice-1 tblsp : In a shaker half-filled with ice cubes, combine all of the ingredients. Shake well. Strain into a cocktail glass.",
   "strInstructions": "In a shaker half-filled with ice cubes, combine all of the ingredients. Shake well. Strain into a cocktail glass.",
   "strIngredients": "Brandy-2 oz , Triple Sec-1/2 oz , Lemon Juice-1 tblsp",
   "incorrect": "Orange Whip, Cafe Savoy, Godchild"
 },
 {
   "strDrink": "Classic Old-Fashioned",
   "questions": "Bitters-3 dashes , Water-1 tsp , Sugar-1, Bourbon-3 oz , Orange-1, Maraschino Cherry-1 : In an old-fashioned glass, muddle the bitters and water into the sugar cube, using the back of a teaspoon. Almost fill the glass with ice cubes and add the bourbon. Garnish with the orange slice and the cherry. Serve with a swizzle stick.",
   "strInstructions": "In an old-fashioned glass, muddle the bitters and water into the sugar cube, using the back of a teaspoon. Almost fill the glass with ice cubes and add the bourbon. Garnish with the orange slice and the cherry. Serve with a swizzle stick.",
   "strIngredients": "Bitters-3 dashes , Water-1 tsp , Sugar-1, Bourbon-3 oz , Orange-1, Maraschino Cherry-1",
   "incorrect": "Victory Collins, Cherry Rum, Chocolate Black Russian"
 },
 {
   "strDrink": "Clove Cocktail",
   "questions": "Sweet Vermouth-1 oz , Sloe Gin-1/2 oz , Wine-1/2 oz Muscatel : Stir all ingredients with ice, strain into a cocktail glass, and serve.",
   "strInstructions": "Stir all ingredients with ice, strain into a cocktail glass, and serve.",
   "strIngredients": "Sweet Vermouth-1 oz , Sloe Gin-1/2 oz , Wine-1/2 oz Muscatel",
   "incorrect": "Bumble Bee #1, Whiskey Sour, Campari Beer"
 },
 {
   "strDrink": "Clover Club",
   "questions": "Gin-1 1/2 oz , Grenadine-2 tsp , Lemon-Juice of 1/2 , Egg White-1 , : Dry shake ingredients to emulsify, add ice, shake and served straight up.",
   "strInstructions": "Dry shake ingredients to emulsify, add ice, shake and served straight up.",
   "strIngredients": "Gin-1 1/2 oz , Grenadine-2 tsp , Lemon-Juice of 1/2 , Egg White-1 ,",
   "incorrect": "Thai Iced Coffee, Scotch Sour, Pink Gin"
 },
 {
   "strDrink": "Coffee Liqueur",
   "questions": "Coffee-10 tblsp instant , Vanilla extract-4 tblsp , Sugar-2 1/2 cups , Vodka-1 qt , Water-2 1/2 cups : Combine coffee, sugar and water. Simmer 1 hour and let cool. Add vanilla and vodka. Age in se Aled jar 2 to 3 weeks.",
   "strInstructions": "Combine coffee, sugar and water. Simmer 1 hour and let cool. Add vanilla and vodka. Age in se Aled jar 2 to 3 weeks.",
   "strIngredients": "Coffee-10 tblsp instant , Vanilla extract-4 tblsp , Sugar-2 1/2 cups , Vodka-1 qt , Water-2 1/2 cups",
   "incorrect": "Amaretto Stone Sour, ACID, French Connection"
 },
 {
   "strDrink": "Coffee-Vodka",
   "questions": "Water-2 cups , Sugar-2 cups white , Coffee-1/2 cup instant , Vanilla, Vodka-1 1/2 cup , Caramel Coloring: Boil water and sugar until dissolved. Turn off heat. Slowly add dry instant coffee and continue Stiring. Add a chopped vanilla bean to the vodka, then combine the cooled sugar syrup and coffee solution with the vodka. Cover tightly and shake vigorously each day for 3 weeks. Strain and filter. Its also best to let the sugar mixture cool completely so the vodka won't evaporate when its added. If you like a smoother feel to the liqueur you can add about 1 teaspoon of glycerine to the finished product.",
   "strInstructions": "Boil water and sugar until dissolved. Turn off heat. Slowly add dry instant coffee and continue Stiring. Add a chopped vanilla bean to the vodka, then combine the cooled sugar syrup and coffee solution with the vodka. Cover tightly and shake vigorously each day for 3 weeks. Strain and filter. Its also best to let the sugar mixture cool completely so the vodka won't evaporate when its added. If you like a smoother feel to the liqueur you can add about 1 teaspoon of glycerine to the finished product.",
   "strIngredients": "Water-2 cups , Sugar-2 cups white , Coffee-1/2 cup instant , Vanilla, Vodka-1 1/2 cup , Caramel Coloring",
   "incorrect": "Ace, Belgian Blue, Sazerac"
 },
 {
   "strDrink": "Coke and Drops",
   "questions": "Coca-Cola-1 dl , Lemon Juice-7 drops , : Take a glass, pour the Coke in the glass, then you take 7 drops of lemon juice. Granish with a lemon slice on the rim of the glass.",
   "strInstructions": "Take a glass, pour the Coke in the glass, then you take 7 drops of lemon juice. Granish with a lemon slice on the rim of the glass.",
   "strIngredients": "Coca-Cola-1 dl , Lemon Juice-7 drops ,",
   "incorrect": "Japanese Fizz, Frozen Pineapple Daiquiri, Vermouth Cassis"
 },
 {
   "strDrink": "Cosmopolitan",
   "questions": "Absolut Citron-1 1/4 oz , Lime Juice-1/4 oz , Cointreau-1/4 oz , Cranberry Juice-1/4 cup : Add all ingredients into cocktail shaker filled with ice. Shake well and double strain into large cocktail glass. Garnish with lime wheel.",
   "strInstructions": "Add all ingredients into cocktail shaker filled with ice. Shake well and double strain into large cocktail glass. Garnish with lime wheel.",
   "strIngredients": "Absolut Citron-1 1/4 oz , Lime Juice-1/4 oz , Cointreau-1/4 oz , Cranberry Juice-1/4 cup",
   "incorrect": "Sunny Holiday Punch, The Evil Blue Thing, Iced Coffee Fillip"
 },
 {
   "strDrink": "Cosmopolitan Martini",
   "questions": "Cointreau-1/2 oz , Vodka-1 oz , Lime-Juice of 1/2 , Cranberry Juice-1 splash : Pour all ingredients in mixing glass half filled with ice, shake and strain into chilled Martini glass.",
   "strInstructions": "Pour all ingredients in mixing glass half filled with ice, shake and strain into chilled Martini glass.",
   "strIngredients": "Cointreau-1/2 oz , Vodka-1 oz , Lime-Juice of 1/2 , Cranberry Juice-1 splash",
   "incorrect": "Arctic Fish, 501 Blue, Masala Chai"
 },
 {
   "strDrink": "Cranberry Cordial",
   "questions": "Cranberries-1/2 kg chopped , Sugar-3/4 L , Light Rum-1/2 L : Place the chopped cranberries in a 2 liter jar that has a tight-fitting lid. Add the sugar and rum. Adjust the lid securely and place the jar in a cool, dark place. Invert the jar and shake it every day for six weeks. Strain the cordial into bottles and seal with corks.",
   "strInstructions": "Place the chopped cranberries in a 2 liter jar that has a tight-fitting lid. Add the sugar and rum. Adjust the lid securely and place the jar in a cool, dark place. Invert the jar and shake it every day for six weeks. Strain the cordial into bottles and seal with corks.",
   "strIngredients": "Cranberries-1/2 kg chopped , Sugar-3/4 L , Light Rum-1/2 L",
   "incorrect": "Sex on the Beach, Alfie Cocktail, Brandon and Will's Coke Float"
 },
 {
   "strDrink": "Cranberry Punch",
   "questions": "Cranberry Juice-4 cups , Sugar-1 1/2 cup , Pineapple Juice-4 cups , Almond flavoring-1 tblsp , Ginger Ale-2 qt : Combine first four ingredients. Stir until sugar is dissolved, chill. Then add ginger Ale just before serving. Add ice ring to keep punch cold.",
   "strInstructions": "Combine first four ingredients. Stir until sugar is dissolved, chill. Then add ginger Ale just before serving. Add ice ring to keep punch cold.",
   "strIngredients": "Cranberry Juice-4 cups , Sugar-1 1/2 cup , Pineapple Juice-4 cups , Almond flavoring-1 tblsp , Ginger Ale-2 qt",
   "incorrect": "Apricot Lady, Irish Cream, Mojito #3"
 },
 {
   "strDrink": "Cream Soda",
   "questions": "SpIced Rum-1 oz , Ginger Ale: Pour 1oz of Spiced Rum into a highball glass with ice. Fill with Ginger Ale.",
   "strInstructions": "Pour 1oz of Spiced Rum into a highball glass with ice. Fill with Ginger Ale.",
   "strIngredients": "SpIced Rum-1 oz , Ginger Ale",
   "incorrect": "Raspberry Cooler, Midnight Mint, Barracuda"
 },
 {
   "strDrink": "Creme de Menthe",
   "questions": "Sugar-8 cups , Water-6 cups , Grain Alcohol-1 pint , Peppermint extract-1 oz pure , Food Coloring-1 tblsp green : Bring sugar and water to a boil and simmer for 10 minutes. Cool. Add the remaining ingredients and stir. Cover and let ripen for 1 month.",
   "strInstructions": "Bring sugar and water to a boil and simmer for 10 minutes. Cool. Add the remaining ingredients and stir. Cover and let ripen for 1 month.",
   "strIngredients": "Sugar-8 cups , Water-6 cups , Grain Alcohol-1 pint , Peppermint extract-1 oz pure , Food Coloring-1 tblsp green",
   "incorrect": "Paradise, Brandy Flip, A Day at the Beach"
 },
 {
   "strDrink": "Cuba Libra",
   "questions": "Dark Rum-1-2 shot , Lime-Squeeze , Fill with Coca-Cola, Ice: Fill tall glass with ice cubes. Add rum. Rub cut edge of lime on rim of glass then squeeze juice into glass. Fill with Coca-Cola. Garnish with lime slice. Enjoy!",
   "strInstructions": "Fill tall glass with ice cubes. Add rum. Rub cut edge of lime on rim of glass then squeeze juice into glass. Fill with Coca-Cola. Garnish with lime slice. Enjoy!",
   "strIngredients": "Dark Rum-1-2 shot , Lime-Squeeze , Fill with Coca-Cola, Ice\n  ,",
   "incorrect": "Strawberry Daiquiri, Allies Cocktail, Quick F**K"
 },
 {
   "strDrink": "Cuba Libre",
   "questions": "Light Rum-2 oz , Lime-Juice of 1/2 , Coca-Cola , : Build all ingredients in a Collins glass filled with ice. Garnish with lime wedge.",
   "strInstructions": "Build all ingredients in a Collins glass filled with ice. Garnish with lime wedge.",
   "strIngredients": "Light Rum-2 oz , Lime-Juice of 1/2 , Coca-Cola ,",
   "incorrect": "Dirty Martini, Gin And Tonic, Amaretto Sunrise"
 },
 {
   "strDrink": "Daiquiri",
   "questions": "Light Rum-1 1/2 oz , Lime-Juice of 1/2 , Powdered Sugar-1 tsp : Pour all ingredients into shaker with ice cubes. Shake well. Strain in chilled cocktail glass.",
   "strInstructions": "Pour all ingredients into shaker with ice cubes. Shake well. Strain in chilled cocktail glass.",
   "strIngredients": "Light Rum-1 1/2 oz , Lime-Juice of 1/2 , Powdered Sugar-1 tsp",
   "incorrect": "Jamaican Coffee, Darkwood Sling, Cream Soda"
 },
 {
   "strDrink": "Damned if you do",
   "questions": "Whiskey-0.75 oz , Hot Damn-0.25 oz , : Pour into shot glass. Put in mouth. Repeat as deemed necessary.",
   "strInstructions": "Pour into shot glass. Put in mouth. Repeat as deemed necessary.",
   "strIngredients": "Whiskey-0.75 oz , Hot Damn-0.25 oz ,",
   "incorrect": "Army special, Black Forest Shake, Bermuda Highball"
 },
 {
   "strDrink": "Danbooka",
   "questions": "Coffee-3 parts , Everclear-1 part , : pour it in and mix it.",
   "strInstructions": "pour it in and mix it.",
   "strIngredients": "Coffee-3 parts , Everclear-1 part ,",
   "incorrect": "Golden dream, Acapulco, 747"
 },
 {
   "strDrink": "Dark Caipirinha",
   "questions": "demerara Sugar-2 tsp , Lime-1, Cachaca-2 1/2 oz , : Muddle the sugar into the lime wedges in an old-fashioned glass. Fill the glass with ice cubes. Pour the cachaca into the glass. Stir well.",
   "strInstructions": "Muddle the sugar into the lime wedges in an old-fashioned glass.\n \n Fill the glass with ice cubes.\n \n Pour the cachaca into the glass.\n \n Stir well.",
   "strIngredients": "demerara Sugar-2 tsp , Lime-1, Cachaca-2 1/2 oz ,",
   "incorrect": "Amaretto Tea, Bubble Gum, Homemade Kahlua"
 },
 {
   "strDrink": "Dark and Stormy",
   "questions": "Dark Rum-1 2/3 oz, Ginger Beer-3 1/3 oz : In a highball glass filled with ice add 6cl dark rum and top with ginger beer. Garnish with lime wedge.",
   "strInstructions": "In a highball glass filled with ice add 6cl dark rum and top with ginger beer. Garnish with lime wedge.",
   "strIngredients": "Dark Rum-1 2/3 oz, Ginger Beer-3 1/3 oz",
   "incorrect": "3-Mile Long Island Iced Tea, Classic Old-Fashioned, Popped Cherry"
 },
 {
   "strDrink": "Darkwood Sling",
   "questions": "Cherry Heering-1 part , Soda water-1 part , Orange Juice-1 part , Ice Cubes: There are many good cherry liqueurs you can use, but I prefere Heering. Add one share of the liqueur. Then you add one share of Soda. For a sour sling use Tonic (most people prefer the drink without Tonic). Afterwards you fill the glass with Orange Juice and ice cubes.",
   "strInstructions": "There are many good cherry liqueurs you can use, but I prefere Heering. Add one share of the liqueur. Then you add one share of Soda. For a sour sling use Tonic (most people prefer the drink without Tonic). Afterwards you fill the glass with Orange Juice and ice cubes.",
   "strIngredients": "Cherry Heering-1 part , Soda water-1 part , Orange Juice-1 part , Ice Cubes\n  ,",
   "incorrect": "Bruce's Puce, Lord And Lady, Pina Colada"
 },
 {
   "strDrink": "Derby",
   "questions": "Gin-2 oz, Peach Bitters-2 dashes, Mint-2 fresh leaves , : Pour all ingredients into a mixing glass with ice. Stir. Strain into a cocktail glass. Garnish with a sprig of fresh mint in the drink.",
   "strInstructions": "Pour all ingredients into a mixing glass with ice. Stir. Strain into a cocktail glass. Garnish with a sprig of fresh mint in the drink.",
   "strIngredients": "Gin-2 oz, Peach Bitters-2 dashes, Mint-2 fresh leaves ,",
   "incorrect": "Zimadori Zinger, Irish Spring, Hemingway Special"
 },
 {
   "strDrink": "Diesel",
   "questions": "Lager-1/2 pint , Cider-1/2 pint , Blackcurrant cordial-1 dash : Pour the lager first then add the blackcurrant cordial. Top up with the cider. The colour sholud be very dark approaching the colour of Guiness.",
   "strInstructions": "Pour the lager first then add the blackcurrant cordial. Top up with the cider. The colour sholud be very dark approaching the colour of Guiness.",
   "strIngredients": "Lager-1/2 pint , Cider-1/2 pint , Blackcurrant cordial-1 dash",
   "incorrect": "Zorro, Brain Fart, Tia-Maria"
 },
 {
   "strDrink": "Dirty Martini",
   "questions": "Vodka-70ml/2fl oz, Dry Vermouth-1 tbsp, Olive Brine-2 tbsp, Lemon-1 wedge, Olive-1 : Pour the vodka, dry vermouth and olive brine into a cocktail shaker with a handful of ice and shake well. Rub the rim of a martini glass with the wedge of lemon. Strain the contents of the cocktail shaker into the glass and add the olive. A dirty Martini contains a splash of olive brine or olive juice and is typically garnished with an olive.",
   "strInstructions": "Pour the vodka, dry vermouth and olive brine into a cocktail shaker with a handful of ice and shake well.\n \n Rub the rim of a martini glass with the wedge of lemon.\n \n Strain the contents of the cocktail shaker into the glass and add the olive.\n \n A dirty Martini contains a splash of olive brine or olive juice and is typically garnished with an olive.",
   "strIngredients": "Vodka-70ml/2fl oz, Dry Vermouth-1 tbsp, Olive Brine-2 tbsp, Lemon-1 wedge, Olive-1",
   "incorrect": "Wine Punch, Horse's Neck, Royal Fizz"
 },
 {
   "strDrink": "Dirty Nipple",
   "questions": "Kahlua, Sambuca, Bailey's Irish Cream: This is a layered shot - the Bailey's must be on top",
   "strInstructions": "This is a layered shot - the Bailey's must be on top",
   "strIngredients": "Kahlua\n , Sambuca\n , Bailey's Irish Cream\n  ,",
   "incorrect": "Chicago Fizz, Caipirissima, Shark Attack"
 },
 {
   "strDrink": "Downshift",
   "questions": "Fruit punch-2 part , Sprite-1 part , Tequila-2 shots , 151 Proof Rum-Float Bacardi : Start with the Sprite. Next comes the tequila. After that, add the Minute Maid Fruit Punch, then float the 151. Rocks optional.",
   "strInstructions": "Start with the Sprite. Next comes the tequila. After that, add the Minute Maid Fruit Punch, then float the 151. Rocks optional.",
   "strIngredients": "Fruit punch-2 part , Sprite-1 part , Tequila-2 shots , 151 Proof Rum-Float Bacardi",
   "incorrect": "69 Special, White Lady, Kentucky B And B"
 },
 {
   "strDrink": "Dragonfly",
   "questions": "Gin-1 1/2 oz , Ginger Ale-4 oz , Lime-1 , : In a highball glass almost filled with ice cubes, combine the gin and ginger Ale. Stir well. Garnish with the lime wedge.",
   "strInstructions": "In a highball glass almost filled with ice cubes, combine the gin and ginger Ale. Stir well. Garnish with the lime wedge.",
   "strIngredients": "Gin-1 1/2 oz , Ginger Ale-4 oz , Lime-1 ,",
   "incorrect": "Adam Bomb, Banana Milk Shake, Fruit Cooler"
 },
 {
   "strDrink": "Drinking Chocolate",
   "questions": "Heavy Cream-2 oz , Milk-6-8 oz , Cinnamon-1 stick , Vanilla-1, Chocolate-2 oz finely chopped dark , Whipped Cream-Fresh : Heat the cream and milk with the cinnamon and vanilla bean very slowly for 15-20 minutes. (If you don't have any beans add 1-2 tsp of vanilla after heating). Remove the bean and cinnamon. Add the chocolate. Mix until fully melted. Serve topped with some very dense fresh whipped cream. Serves 1-2 depending upon how much of a glutton you are. For a richer chocolate, use 4 oz of milk, 4 oz of cream, 4 oz of chocolate. Serve in coffee mug.",
   "strInstructions": "Heat the cream and milk with the cinnamon and vanilla bean very slowly for 15-20 minutes. (If you don't have any beans add 1-2 tsp of vanilla after heating). Remove the bean and cinnamon. Add the chocolate. Mix until fully melted. Serve topped with some very dense fresh whipped cream. Serves 1-2 depending upon how much of a glutton you are. For a richer chocolate, use 4 oz of milk, 4 oz of cream, 4 oz of chocolate. Serve in coffee mug.",
   "strIngredients": "Heavy Cream-2 oz , Milk-6-8 oz , Cinnamon-1 stick , Vanilla-1, Chocolate-2 oz finely chopped dark , Whipped Cream-Fresh",
   "incorrect": "Tequila Sunrise, Loch Lomond, Dirty Nipple"
 },
 {
   "strDrink": "Dry Rob Roy",
   "questions": "Scotch-2 1/2 oz , Dry Vermouth-1 1/2 tsp , Twist of Lemon Peel , : In a mixing glass half-filled with ice cubes, combine the Scotch and vermouth. Stir well. Strain into a cocktail glass. Garnish with the lemon twist.",
   "strInstructions": "In a mixing glass half-filled with ice cubes, combine the Scotch and vermouth. Stir well. Strain into a cocktail glass. Garnish with the lemon twist.",
   "strIngredients": "Scotch-2 1/2 oz , Dry Vermouth-1 1/2 tsp , Twist of Lemon Peel ,",
   "incorrect": "Brandy Sour, Vodka Martini, Coke and Drops"
 },
 {
   "strDrink": "Dubonnet Cocktail",
   "questions": "Dubonnet Rouge-1 1/2 oz , Gin-3/4 oz , Bitters-1 dash , Twist of Lemon Peel , : Stir all ingredients (except lemon peel) with ice and strain into a cocktail glass. Add the twist of lemon peel and serve.",
   "strInstructions": "Stir all ingredients (except lemon peel) with ice and strain into a cocktail glass. Add the twist of lemon peel and serve.",
   "strIngredients": "Dubonnet Rouge-1 1/2 oz , Gin-3/4 oz , Bitters-1 dash , Twist of Lemon Peel ,",
   "incorrect": "Turkeyball, 24k nightmare, Radler"
 },
 {
   "strDrink": "Duchamp's Punch",
   "questions": "Pisco- 2/3 oz, Lime Juice- 2/3 oz, Pineapple Syrup- 2/3 oz, St. Germain-2/3 oz, Angostura Bitters-2 Dashes, Pepper-Pinch, Lavender-2 sprigs : Shake all ingredients. Double strain in a chilled double old fashioned glass with abig ice cube. Garnish with a couple of lavender sprigs",
   "strInstructions": "Shake all ingredients.\n \n Double strain in a chilled double old fashioned glass with abig ice cube.\n \n Garnish with a couple of lavender sprigs",
   "strIngredients": "Pisco- 2/3 oz, Lime Juice- 2/3 oz, Pineapple Syrup- 2/3 oz, St. Germain-2/3 oz, Angostura Bitters-2 Dashes, Pepper-Pinch, Lavender-2 sprigs",
   "incorrect": "Irish Coffee, Black and Brown, Cosmopolitan"
 },
 {
   "strDrink": "Egg Cream",
   "questions": "Chocolate Syrup-2 tblsp , Milk-6 oz whole , Soda Water-6 oz : Mix syrup and milk in a fountain glass. Add soda water, serve with a straw.",
   "strInstructions": "Mix syrup and milk in a fountain glass. Add soda water, serve with a straw.",
   "strIngredients": "Chocolate Syrup-2 tblsp , Milk-6 oz whole , Soda Water-6 oz",
   "incorrect": "A.D.M. (After Dinner Mint), New York Sour, Espresso Martini"
 },
 {
   "strDrink": "Egg Nog #4",
   "questions": "Egg yolk-6, Sugar-1/4 cup , Milk-2 cups , Light Rum-1/2 cup , Bourbon-1/2 cup , Vanilla extract-1 tsp , Salt-1/4 tsp , Whipping Cream-1 cup , Egg White-6, Sugar-1/4 cup : In a small mixer bowl beat egg yolks till blended. Gradually add 1/4 cup sugar, beating at high speed till thick and lemon colored. Stir in milk, stir in rum, bourbon, vanilla, and salt. Chill thoroughly. Whip cream. Wash beaters well. In a large mixer bowl beat egg whites till soft peaks form. Gradually add remaining 1/4 cup sugar, beating to stiff peaks. Fold yolk mixture and whipped cream into egg whites. Serve immediately. Sprinkle nutmeg over each serving. Serve in a punch bowl or another big bowl. NOTE: For a nonalcoholic eggnog, prepare Eggnog as above, except omit the bourbon and rum and increase the milk to 3 cups.",
   "strInstructions": "In a small mixer bowl beat egg yolks till blended. Gradually add 1/4 cup sugar, beating at high speed till thick and lemon colored. Stir in milk, stir in rum, bourbon, vanilla, and salt. Chill thoroughly. Whip cream. Wash beaters well. In a large mixer bowl beat egg whites till soft peaks form. Gradually add remaining 1/4 cup sugar, beating to stiff peaks. Fold yolk mixture and whipped cream into egg whites. Serve immediately. Sprinkle nutmeg over each serving. Serve in a punch bowl or another big bowl. NOTE: For a nonalcoholic eggnog, prepare Eggnog as above, except omit the bourbon and rum and increase the milk to 3 cups.",
   "strIngredients": "Egg yolk-6, Sugar-1/4 cup , Milk-2 cups , Light Rum-1/2 cup , Bourbon-1/2 cup , Vanilla extract-1 tsp , Salt-1/4 tsp , Whipping Cream-1 cup , Egg White-6, Sugar-1/4 cup",
   "incorrect": "Green Goblin, Kir RoyAle, Bluebird"
 },
 {
   "strDrink": "Egg Nog - Healthy",
   "questions": "Egg-1/2 cup , Sugar-3 tblsp , Condensed milk-13 oz skimmed , Milk-3/4 cup skimmed , Vanilla extract-1 tsp , Rum-1 tsp , Nutmeg: Whip egg substitute and sugar together, combine with the two kinds of milk, vanilla, and rum. Mix well. Chill over night. Sprinkle with nutmeg. Makes 6 servings.",
   "strInstructions": "Whip egg substitute and sugar together, combine with the two kinds of milk, vanilla, and rum. Mix well. Chill over night. Sprinkle with nutmeg. Makes 6 servings.",
   "strIngredients": "Egg-1/2 cup , Sugar-3 tblsp , Condensed milk-13 oz skimmed , Milk-3/4 cup skimmed , Vanilla extract-1 tsp , Rum-1 tsp , Nutmeg",
   "incorrect": "Kiss me Quick, Cosmopolitan Martini, Absolut Summertime"
 },
 {
   "strDrink": "Egg-Nog - Classic Cooked",
   "questions": "Egg-6, Sugar-1/4 cup , Salt-1/4 tsp , Milk-1 qt , Vanilla extract-1 tsp : In large saucepan, beat together eggs, sugar and salt, if desired. Stir in 2 cups of the milk. Cook over low heat, Stiring constantly, until mixture is thick enough to coat a metal spoon and reaches 160 degrees F. Remove from heat. Stir in remaining 2 cups milk and vanilla. Cover and regfigerate until thoroughly chilled, several hours or overnight. Just before serving, pour into bowl or pitcher. Garnish or add stir-ins, if desired. Choose 1 or several of: Chocolate curls, cinnamon sticks, extracts of flavorings, flavored brandy or liqueur, fruit juice or nectar, ground nutmeg, maraschino cherries, orange slices, peppermint sticks or candy canes, plain brandy, run or whiskey, sherbet or ice-cream, whipping cream, whipped. Serve immediately.",
   "strInstructions": "In large saucepan, beat together eggs, sugar and salt, if desired. Stir in 2 cups of the milk. Cook over low heat, Stiring constantly, until mixture is thick enough to coat a metal spoon and reaches 160 degrees F. Remove from heat. Stir in remaining 2 cups milk and vanilla. Cover and regfigerate until thoroughly chilled, several hours or overnight. Just before serving, pour into bowl or pitcher. Garnish or add stir-ins, if desired. Choose 1 or several of: Chocolate curls, cinnamon sticks, extracts of flavorings, flavored brandy or liqueur, fruit juice or nectar, ground nutmeg, maraschino cherries, orange slices, peppermint sticks or candy canes, plain brandy, run or whiskey, sherbet or ice-cream, whipping cream, whipped. Serve immediately.",
   "strIngredients": "Egg-6, Sugar-1/4 cup , Salt-1/4 tsp , Milk-1 qt , Vanilla extract-1 tsp",
   "incorrect": "Vesuvio, Fruit Flip-Flop, Mudslinger"
 },
 {
   "strDrink": "English Highball",
   "questions": "Brandy-3/4 oz , Gin-3/4 oz , Sweet Vermouth-3/4 oz , Carbonated Water, Lemon Peel: Pour brandy, gin, and sweet vermouth into a highball glass over ice cubes. Fill with carbonated water. Add the twist of lemon peel, stir, and serve. (Ginger Ale may be substituted for carbonated water, if preferred.)",
   "strInstructions": "Pour brandy, gin, and sweet vermouth into a highball glass over ice cubes. Fill with carbonated water. Add the twist of lemon peel, stir, and serve. (Ginger Ale may be substituted for carbonated water, if preferred.)",
   "strIngredients": "Brandy-3/4 oz , Gin-3/4 oz , Sweet Vermouth-3/4 oz , Carbonated Water\n , Lemon Peel",
   "incorrect": "Fahrenheit 5000, Boozy Snickers Milkshake, Zipperhead"
 },
 {
   "strDrink": "English Rose Cocktail",
   "questions": "Apricot Brandy-3/4 oz , Gin-1 1/2 oz , Dry Vermouth-3/4 oz , Grenadine-1 tsp , Lemon Juice-1/4 tsp , Cherry-1 : Rub rim of cocktail glass with lemon juice and dip rim of glass in powdered sugar. Shake all ingredients (except cherry) with ice and strain into sugar-rimmed glass. Top with the cherry and serve.",
   "strInstructions": "Rub rim of cocktail glass with lemon juice and dip rim of glass in powdered sugar. Shake all ingredients (except cherry) with ice and strain into sugar-rimmed glass. Top with the cherry and serve.",
   "strIngredients": "Apricot Brandy-3/4 oz , Gin-1 1/2 oz , Dry Vermouth-3/4 oz , Grenadine-1 tsp , Lemon Juice-1/4 tsp , Cherry-1",
   "incorrect": "Brandy Alexander, Tom Collins, Arizona Stingers"
 },
 {
   "strDrink": "Espresso Martini",
   "questions": "Vodka-1 2/3 oz, Kahlua-1/3 oz, Sugar Syrup-1 dash , : Pour ingredients into shaker filled with ice, shake vigorously, and strain into chilled martini glass",
   "strInstructions": "Pour ingredients into shaker filled with ice, shake vigorously, and strain into chilled martini glass",
   "strIngredients": "Vodka-1 2/3 oz, Kahlua-1/3 oz, Sugar Syrup-1 dash ,",
   "incorrect": "Egg Nog - Healthy, Texas Rattlesnake, White Russian"
 },
 {
   "strDrink": "Fahrenheit 5000",
   "questions": "Firewater-1/2 oz , Absolut Peppar-1/2 oz , Tabasco Sauce-1 dash : Cover bottom of shot glass with Tabasco Sauce and then fill with half Firewater and half Absolut Peppar.",
   "strInstructions": "Cover bottom of shot glass with Tabasco Sauce and then fill with half Firewater and half Absolut Peppar.",
   "strIngredients": "Firewater-1/2 oz , Absolut Peppar-1/2 oz , Tabasco Sauce-1 dash",
   "incorrect": "Lassi - Mango, Flander's Flake-Out, Rum Milk Punch"
 },
 {
   "strDrink": "Flaming Dr. Pepper",
   "questions": "Amaretto-1 oz , Vodka-1 oz , 151 Proof Rum-1 oz Bacardi , Dr. Pepper-1 oz , Beer-1 oz : Add Amaretto, Bacardi, and vodka. Mix in the Dr. Pepper and beer",
   "strInstructions": "Add Amaretto, Bacardi, and vodka. Mix in the Dr. Pepper and beer",
   "strIngredients": "Amaretto-1 oz , Vodka-1 oz , 151 Proof Rum-1 oz Bacardi , Dr. Pepper-1 oz , Beer-1 oz",
   "incorrect": "Mississippi Planters Punch, Kurant Tea, Rum Runner"
 },
 {
   "strDrink": "Flaming Lamborghini",
   "questions": "Kahlua-1 oz , Sambuca-1 oz , Blue Curacao-1 oz , Bailey's Irish Cream-1 oz : Pour the Sambuca and Kahlua into the Cocktail Glass and give the drinker a straw. Pour the Baileys and Blue Curacao into two sepsrate shot glasses either side of the cocktail glass. Set light the concotion in the cocktail glass and start to drink through the straw (this drink should be drunk in one) , as the bottom of the glass is reached put out the fire by pouring the Baileys and Blue Curacao into the cocktail glass and keep drinking till it's all gone!!",
   "strInstructions": "Pour the Sambuca and Kahlua into the Cocktail Glass and give the drinker a straw. Pour the Baileys and Blue Curacao into two sepsrate shot glasses either side of the cocktail glass. Set light the concotion in the cocktail glass and start to drink through the straw (this drink should be drunk in one) , as the bottom of the glass is reached put out the fire by pouring the Baileys and Blue Curacao into the cocktail glass and keep drinking till it's all gone!!",
   "strIngredients": "Kahlua-1 oz , Sambuca-1 oz , Blue Curacao-1 oz , Bailey's Irish Cream-1 oz",
   "incorrect": "GG, Chocolate Beverage, Gideon's Green Dinosaur"
 },
 {
   "strDrink": "Flander's Flake-Out",
   "questions": "Sambuca-1/4 glass , Sarsaparilla-3/4 glass , : Bang 'em both in.",
   "strInstructions": "Bang 'em both in.",
   "strIngredients": "Sambuca-1/4 glass , Sarsaparilla-3/4 glass ,",
   "incorrect": "Tennesee Mud, A1, Algonquin"
 },
 {
   "strDrink": "Flying Dutchman",
   "questions": "Gin-2 oz , Triple Sec-1/2 oz , : In an old-fashioned glass almost filled with ice cubes, combine the gin and triple sec. Stir well.",
   "strInstructions": "In an old-fashioned glass almost filled with ice cubes, combine the gin and triple sec. Stir well.",
   "strIngredients": "Gin-2 oz , Triple Sec-1/2 oz ,",
   "incorrect": "Blue Margarita, Caribbean Boilermaker, Arizona Antifreeze"
 },
 {
   "strDrink": "Flying Scotchman",
   "questions": "Scotch-1 oz , Sweet Vermouth-1 oz , Bitters-1 dash , Sugar Syrup-1/4 tsp : Shake all ingredients with ice, strain into a cocktail glass, and serve.",
   "strInstructions": "Shake all ingredients with ice, strain into a cocktail glass, and serve.",
   "strIngredients": "Scotch-1 oz , Sweet Vermouth-1 oz , Bitters-1 dash , Sugar Syrup-1/4 tsp",
   "incorrect": "Affair, Aviation, Sherry Eggnog"
 },
 {
   "strDrink": "Foxy Lady",
   "questions": "Amaretto-1/2 oz , Creme de Cacao-1/2 oz , Light Cream-2 oz : Shake all ingredients with ice, strain into a chilled cocktail glass, and serve.",
   "strInstructions": "Shake all ingredients with ice, strain into a chilled cocktail glass, and serve.",
   "strIngredients": "Amaretto-1/2 oz , Creme de Cacao-1/2 oz , Light Cream-2 oz",
   "incorrect": "Lunch Box, Angel Face, Happy Skipper"
 },
 {
   "strDrink": "Frappa",
   "questions": "Coffee-1/2 cup black , Milk-1/2 cup , Sugar-1-2 tsp : Mix together. Blend at highest blender speed for about 1 minute. Pour into a glass and drink with a straw. Notes: This works best if everything is cold (if you make fresh coffee, mix it with the milk and let it sit in the fridge for 1/2 hour. If it is not frothy, add more milk, or even just some more milk powder. The froth gradually turns to liquid at the bottom of the glass, so you will find that you can sit and drink this for about 1/2 hour, with more iced coffee continually appearing at the bottom. Very refreshing.",
   "strInstructions": "Mix together. Blend at highest blender speed for about 1 minute. Pour into a glass and drink with a straw. Notes: This works best if everything is cold (if you make fresh coffee, mix it with the milk and let it sit in the fridge for 1/2 hour. If it is not frothy, add more milk, or even just some more milk powder. The froth gradually turns to liquid at the bottom of the glass, so you will find that you can sit and drink this for about 1/2 hour, with more iced coffee continually appearing at the bottom. Very refreshing.",
   "strIngredients": "Coffee-1/2 cup black , Milk-1/2 cup , Sugar-1-2 tsp",
   "incorrect": "Banana Cantaloupe Smoothie, Boomerang, Fuzzy Asshole"
 },
 {
   "strDrink": "Freddy Kruger",
   "questions": "Jagermeister-1/2 oz , Sambuca-1/2 oz , Vodka-1/2 oz : make it an ample size shot!!",
   "strInstructions": "make it an ample size shot!!",
   "strIngredients": "Jagermeister-1/2 oz , Sambuca-1/2 oz , Vodka-1/2 oz",
   "incorrect": "Space Odyssey, Autodafa, Rum Toddy"
 },
 {
   "strDrink": "French \"75\"",
   "questions": "Gin-1 1/2 oz , Sugar-2 tsp superfine , Lemon Juice-1 1/2 oz , Champagne-4 oz Chilled , Orange-1, Maraschino Cherry-1 : In a shaker half-filled with ice cubes, combine the gin, sugar, and lemon juice. Shake well. Pour into a collins glass. Top with the Champagne. Stir well and garnish with the orange slice and the cherry.",
   "strInstructions": "In a shaker half-filled with ice cubes, combine the gin, sugar, and lemon juice. Shake well. Pour into a collins glass. Top with the Champagne. Stir well and garnish with the orange slice and the cherry.",
   "strIngredients": "Gin-1 1/2 oz , Sugar-2 tsp superfine , Lemon Juice-1 1/2 oz , Champagne-4 oz Chilled , Orange-1, Maraschino Cherry-1",
   "incorrect": "Alaska Cocktail, Waikiki Beachcomber, Russian Spring Punch"
 },
 {
   "strDrink": "French 75",
   "questions": "Gin-1 1/2 oz , Sugar-2 tsp superfine , Lemon Juice-1 1/2 oz , Champagne-4 oz Chilled , Orange-1, Maraschino Cherry-1 : Combine gin, sugar, and lemon juice in a cocktail shaker filled with ice. Shake vigorously and strain into a chilled champagne glass. Top up with Champagne. Stir gently.",
   "strInstructions": "Combine gin, sugar, and lemon juice in a cocktail shaker filled with ice. Shake vigorously and strain into a chilled champagne glass. Top up with Champagne. Stir gently.",
   "strIngredients": "Gin-1 1/2 oz , Sugar-2 tsp superfine , Lemon Juice-1 1/2 oz , Champagne-4 oz Chilled , Orange-1, Maraschino Cherry-1",
   "incorrect": "Boxcar, Sea breeze, Boston Sidecar"
 },
 {
   "strDrink": "French Connection",
   "questions": "Cognac-1 1/2 oz , Amaretto-3/4 oz , : Pour all ingredients directly into old fashioned glass filled with ice cubes. Stir gently.",
   "strInstructions": "Pour all ingredients directly into old fashioned glass filled with ice cubes. Stir gently.",
   "strIngredients": "Cognac-1 1/2 oz , Amaretto-3/4 oz ,",
   "incorrect": "Veteran, Mulled Wine, Cherry Electric Lemonade"
 },
 {
   "strDrink": "French Martini",
   "questions": "Vodka-4.1 2/3 oz, Raspberry Liqueur-1.1 2/3 oz, Pineapple Juice-1.1 2/3 oz , : Pour all ingredients into shaker with ice cubes. Shake well and strain into a chilled cocktail glass. Squeeze oil from lemon peel onto the drink.",
   "strInstructions": "Pour all ingredients into shaker with ice cubes. Shake well and strain into a chilled cocktail glass. Squeeze oil from lemon peel onto the drink.",
   "strIngredients": "Vodka-4.1 2/3 oz, Raspberry Liqueur-1.1 2/3 oz, Pineapple Juice-1.1 2/3 oz ,",
   "incorrect": "Surf City Lifesaver, A Night In Old Mandalay, Frappa"
 },
 {
   "strDrink": "Frisco Sour",
   "questions": "Blended Whiskey-2 oz , Benedictine-1/2 oz , Lemon-Juice of 1/4 , Lime-Juice of 1/2 , Lemon-1 slIce , Lime-1 slIce : Shake all ingredients (except slices of lemon and lime) with ice and strain into a whiskey sour glass. Decorate with the slices of lemon and lime and serve.",
   "strInstructions": "Shake all ingredients (except slices of lemon and lime) with ice and strain into a whiskey sour glass. Decorate with the slices of lemon and lime and serve.",
   "strIngredients": "Blended Whiskey-2 oz , Benedictine-1/2 oz , Lemon-Juice of 1/4 , Lime-Juice of 1/2 , Lemon-1 slIce , Lime-1 slIce",
   "incorrect": "Zenmeister, Egg-Nog - Classic Cooked, Zizi Coin-coin"
 },
 {
   "strDrink": "Frozen Daiquiri",
   "questions": "Light Rum-1 1/2 oz , Triple Sec-1 tblsp , Lime Juice-1 1/2 oz , Sugar-1 tsp , Cherry-1, Ice-1 cup crushed : Combine all ingredients (except for the cherry) in an electric blender and blend at a low speed for five seconds, then blend at a high speed until firm. Pour contents into a champagne flute, top with the cherry, and serve.",
   "strInstructions": "Combine all ingredients (except for the cherry) in an electric blender and blend at a low speed for five seconds, then blend at a high speed until firm. Pour contents into a champagne flute, top with the cherry, and serve.",
   "strIngredients": "Light Rum-1 1/2 oz , Triple Sec-1 tblsp , Lime Juice-1 1/2 oz , Sugar-1 tsp , Cherry-1, Ice-1 cup crushed",
   "incorrect": "Monkey Wrench, Midnight Manx, Arthur Tompkins"
 },
 {
   "strDrink": "Frozen Mint Daiquiri",
   "questions": "Light Rum-2 oz , Lime Juice-1 tblsp , Mint-6, Sugar-1 tsp : Combine all ingredients with 1 cup of crushed ice in an electric blender. Blend at a low speed for a short length of time. Pour into an old-fashioned glass and serve.",
   "strInstructions": "Combine all ingredients with 1 cup of crushed ice in an electric blender. Blend at a low speed for a short length of time. Pour into an old-fashioned glass and serve.",
   "strIngredients": "Light Rum-2 oz , Lime Juice-1 tblsp , Mint-6, Sugar-1 tsp",
   "incorrect": "Drinking Chocolate, Grand Blue, 155 Belmont"
 },
 {
   "strDrink": "Frozen Pineapple Daiquiri",
   "questions": "Light Rum-1 1/2 oz , Pineapple-4 chunks , Lime Juice-1 tblsp , Sugar-1/2 tsp : Combine all ingredients with 1 cup of crushed ice in an electric blender. Blend at a low speed for a short length of time. Pour into a champagne flute and serve.",
   "strInstructions": "Combine all ingredients with 1 cup of crushed ice in an electric blender. Blend at a low speed for a short length of time. Pour into a champagne flute and serve.",
   "strIngredients": "Light Rum-1 1/2 oz , Pineapple-4 chunks , Lime Juice-1 tblsp , Sugar-1/2 tsp",
   "incorrect": "Godmother, Queen Elizabeth, Apple Berry Smoothie"
 },
 {
   "strDrink": "Fruit Cooler",
   "questions": "Apple Juice-1 can frozen , Strawberries-1 cup , Sugar-2 tblsp , Lemon-1, Apple-1, Soda Water-1 L , Ice: Toss strawberries with sugar, and let sit overnight in refrigerator. Cut lemon, reserve two slices. Juice the rest. Mix together the lemon juice, strawberries, apple juice, and soda water. Add slices of lemon (decor, really). In glasses, put ice cubes, and a slice of apple. Pour drink in, and serve.",
   "strInstructions": "Toss strawberries with sugar, and let sit overnight in refrigerator. Cut lemon, reserve two slices. Juice the rest. Mix together the lemon juice, strawberries, apple juice, and soda water. Add slices of lemon (decor, really). In glasses, put ice cubes, and a slice of apple. Pour drink in, and serve.",
   "strIngredients": "Apple Juice-1 can frozen , Strawberries-1 cup , Sugar-2 tblsp , Lemon-1, Apple-1, Soda Water-1 L , Ice",
   "incorrect": "Lassi - A South Indian Drink, Avalanche, Kool-Aid Shot"
 },
 {
   "strDrink": "Fruit Flip-Flop",
   "questions": "Yoghurt-1 cup , Fruit Juice-1 cup , : Place all ingredients in the blender jar - cover and whiz on medium speed until well blended. Pour in one tall, 2 medium or 3 small glasses and drink up.",
   "strInstructions": "Place all ingredients in the blender jar - cover and whiz on medium speed until well blended. Pour in one tall, 2 medium or 3 small glasses and drink up.",
   "strIngredients": "Yoghurt-1 cup , Fruit Juice-1 cup ,",
   "incorrect": "Melya, Apple Cider Punch #1, Arctic Mouthwash"
 },
 {
   "strDrink": "Fruit Shake",
   "questions": "Yoghurt-1 cup fruit , Banana-1, Orange Juice-4 oz frozen , Fruit-1/2 piece textural , Ice-6 : Blend til smooth.",
   "strInstructions": "Blend til smooth.",
   "strIngredients": "Yoghurt-1 cup fruit , Banana-1, Orange Juice-4 oz frozen , Fruit-1/2 piece textural , Ice-6",
   "incorrect": "Bruised Heart, Stinger, Blue Mountain"
 },
 {
   "strDrink": "Fuzzy Asshole",
   "questions": "Coffee, Peach Schnapps : Fill coffe mug half full of coffee. Fill the other half full of Peach Schnapps. Stir and drink while hot.",
   "strInstructions": "Fill coffe mug half full of coffee. Fill the other half full of Peach Schnapps. Stir and drink while hot.",
   "strIngredients": "Coffee, Peach Schnapps",
   "incorrect": "Baby Guinness, Strawberry Margarita, Long Vodka"
 },
 {
   "strDrink": "GG",
   "questions": "Galliano-2 1/2 shots , Ginger Ale, Ice , : Pour the Galliano liqueur over ice. Fill the remainder of the glass with ginger Ale and thats all there is to it. You now have a your very own GG.",
   "strInstructions": "Pour the Galliano liqueur over ice. Fill the remainder of the glass with ginger Ale and thats all there is to it. You now have a your very own GG.",
   "strIngredients": "Galliano-2 1/2 shots , Ginger Ale\n , Ice ,",
   "incorrect": "Dark and Stormy, Veteran, Miami VIce"
 },
 {
   "strDrink": "Gagliardo",
   "questions": "Peach Vodka-5 parts , Lemon Juice-3 parts , Galliano-1 part , Syrup of Roses-1 part : Shake well and serve in a cocktail glass. This is a home cocktail of American/Internet Bar del Pozzo, Pavia, Italy.",
   "strInstructions": "Shake well and serve in a cocktail glass. This is a home cocktail of American/Internet Bar del Pozzo, Pavia, Italy.",
   "strIngredients": "Peach Vodka-5 parts , Lemon Juice-3 parts , Galliano-1 part , Syrup of Roses-1 part",
   "incorrect": "Irish Russian, Apricot Lady, AlIce Cocktail"
 },
 {
   "strDrink": "Gentleman's Club",
   "questions": "Gin-1 1/2 oz , Brandy-1 oz , Sweet Vermouth-1 oz , Club Soda-1 oz : In an old-fashioned glass almost filled with ice cubes, combine all of the ingredients. Stir well.",
   "strInstructions": "In an old-fashioned glass almost filled with ice cubes, combine all of the ingredients. Stir well.",
   "strIngredients": "Gin-1 1/2 oz , Brandy-1 oz , Sweet Vermouth-1 oz , Club Soda-1 oz",
   "incorrect": "Chicago Fizz, Addington, Lord And Lady"
 },
 {
   "strDrink": "Gideon's Green Dinosaur",
   "questions": "Dark Rum-1/2 oz , Vodka-1/2 oz , Triple Sec-1/2 oz , Tequila-1/2 oz , Melon Liqueur-1/2 oz , Mountain Dew-Fill with : Add all ingredients in collins glass with ice and stir.",
   "strInstructions": "Add all ingredients in collins glass with ice and stir.",
   "strIngredients": "Dark Rum-1/2 oz , Vodka-1/2 oz , Triple Sec-1/2 oz , Tequila-1/2 oz , Melon Liqueur-1/2 oz , Mountain Dew-Fill with",
   "incorrect": "Aloha Fruit punch, Alaska Cocktail, John Collins"
 },
 {
   "strDrink": "Gin And Tonic",
   "questions": "Gin-2 oz , Tonic water-5 oz , Lime-1 , : Pour the gin and the tonic water into a highball glass almost filled with ice cubes. Stir well. Garnish with the lime wedge.",
   "strInstructions": "Pour the gin and the tonic water into a highball glass almost filled with ice cubes. Stir well. Garnish with the lime wedge.",
   "strIngredients": "Gin-2 oz , Tonic water-5 oz , Lime-1 ,",
   "incorrect": "Rum Cobbler, H.D., A Splash of Nash"
 },
 {
   "strDrink": "Gin Cooler",
   "questions": "Gin-2 oz , Carbonated water, Powdered Sugar, Orange Spiral, Lemon Peel: Stir powdered sugar and 2 oz. carbonated water in a collins glass. Fill glass with ice and add gin. Fill with carbonated water and stir. Add the lemon peel and the orange spiral so that the end of the orange spiral dangles over rim of glass.",
   "strInstructions": "Stir powdered sugar and 2 oz. carbonated water in a collins glass. Fill glass with ice and add gin. Fill with carbonated water and stir. Add the lemon peel and the orange spiral so that the end of the orange spiral dangles over rim of glass.",
   "strIngredients": "Gin-2 oz , Carbonated water\n , Powdered Sugar\n , Orange Spiral\n , Lemon Peel",
   "incorrect": "Bleeding Surgeon, Rum Cooler, Affair"
 },
 {
   "strDrink": "Gin Daisy",
   "questions": "Gin-2 oz , Lemon Juice-1 oz , Sugar-1/2 tsp superfine , Grenadine-1/2 tsp , Maraschino Cherry-1, Orange-1 : In a shaker half-filled with ice cubes, combine the wine, lemon juice, sugar, and grenadine. Shake well. Pour into an old-fashioned glass and garnish with the cherry and the orange slice.",
   "strInstructions": "In a shaker half-filled with ice cubes, combine the wine, lemon juice, sugar, and grenadine. Shake well. Pour into an old-fashioned glass and garnish with the cherry and the orange slice.",
   "strIngredients": "Gin-2 oz , Lemon Juice-1 oz , Sugar-1/2 tsp superfine , Grenadine-1/2 tsp , Maraschino Cherry-1, Orange-1",
   "incorrect": "Ruby Tuesday, Moscow Mule, Arizona Stingers"
 },
 {
   "strDrink": "Gin Fizz",
   "questions": "Gin-2 oz , Lemon-Juice of 1/2 , Powdered Sugar-1 tsp , Carbonated Water , : Shake all ingredients with ice cubes, except soda water. Pour into glass. Top with soda water.",
   "strInstructions": "Shake all ingredients with ice cubes, except soda water. Pour into glass. Top with soda water.",
   "strIngredients": "Gin-2 oz , Lemon-Juice of 1/2 , Powdered Sugar-1 tsp , Carbonated Water ,",
   "incorrect": "Vermouth Cassis, Absolutely Fabulous, Apple Cider Punch #1"
 },
 {
   "strDrink": "Gin Rickey",
   "questions": "Gin-2 oz , Grenadine-1 tsp , Lemon-Juice of 1/2 , Top off with Soda Water, Lime-Garnish : Half-fill a tall glass with ice. Mix the gin and Grenadine together and pour over the ice. Add the lime or lemon juice and top off with soda water. Decorate the glass with lime and/or lemon slices.",
   "strInstructions": "Half-fill a tall glass with ice. Mix the gin and Grenadine together and pour over the ice. Add the lime or lemon juice and top off with soda water. Decorate the glass with lime and/or lemon slices.",
   "strIngredients": "Gin-2 oz , Grenadine-1 tsp , Lemon-Juice of 1/2 , Top off with Soda Water, Lime-Garnish",
   "incorrect": "Tommy's Margarita, Long Island Iced Tea, Orangeade"
 },
 {
   "strDrink": "Gin Sling",
   "questions": "Gin-2 oz , Lemon-Juice of 1/2 , Powdered Sugar-1 tsp , Water-1 tsp , Orange Peel-Twist of : Dissolve powdered sugar in mixture of water and juice of lemon. Add gin. Pour into an old-fashioned glass over ice cubes and stir. Add the twist of orange peel and serve.",
   "strInstructions": "Dissolve powdered sugar in mixture of water and juice of lemon. Add gin. Pour into an old-fashioned glass over ice cubes and stir. Add the twist of orange peel and serve.",
   "strIngredients": "Gin-2 oz , Lemon-Juice of 1/2 , Powdered Sugar-1 tsp , Water-1 tsp , Orange Peel-Twist of",
   "incorrect": "Amaretto Stone Sour #3, Thai Iced Coffee, Bloody Mary"
 },
 {
   "strDrink": "Gin Smash",
   "questions": "Gin-2 oz , Carbonated water-1 oz , Sugar-1 Cube , Mint-4, Orange-1 slIce , Cherry-1 : Muddle sugar with carbonated water and mint sprigs in an old-fashioned glass. Add gin and 1 ice cube. Stir, add the orange slice and the cherry, and serve.",
   "strInstructions": "Muddle sugar with carbonated water and mint sprigs in an old-fashioned glass. Add gin and 1 ice cube. Stir, add the orange slice and the cherry, and serve.",
   "strIngredients": "Gin-2 oz , Carbonated water-1 oz , Sugar-1 Cube , Mint-4, Orange-1 slIce , Cherry-1",
   "incorrect": "Martinez Cocktail, Coke and Drops, Coffee Liqueur"
 },
 {
   "strDrink": "Gin Sour",
   "questions": "Gin-2 oz , Lemon Juice-1 oz , Sugar-1/2 tsp superfine , Orange-1, Maraschino Cherry-1 : In a shaker half-filled with ice cubes, combine the gin, lemon juice, and sugar. Shake well. Strain into a sour glass and garnish with the orange slice and the cherry.",
   "strInstructions": "In a shaker half-filled with ice cubes, combine the gin, lemon juice, and sugar. Shake well. Strain into a sour glass and garnish with the orange slice and the cherry.",
   "strIngredients": "Gin-2 oz , Lemon Juice-1 oz , Sugar-1/2 tsp superfine , Orange-1, Maraschino Cherry-1",
   "incorrect": "Brainteaser, Snowball, Espresso Martini"
 },
 {
   "strDrink": "Gin Squirt",
   "questions": "Gin-1 1/2 oz , Grenadine-1 tsp , Powdered Sugar-1 tblsp , Pineapple-3 chunks , Strawberries-2, Carbonated Water: Stir gin, grenadine, and powdered sugar with ice and strain into a highball glass over ice cubes. Fill with carbonated water and stir. Decorate with the Pineapple chunks and the strawberries and serve.",
   "strInstructions": "Stir gin, grenadine, and powdered sugar with ice and strain into a highball glass over ice cubes. Fill with carbonated water and stir. Decorate with the Pineapple chunks and the strawberries and serve.",
   "strIngredients": "Gin-1 1/2 oz , Grenadine-1 tsp , Powdered Sugar-1 tblsp , Pineapple-3 chunks , Strawberries-2, Carbonated Water",
   "incorrect": "Kir RoyAle, Tennesee Mud, Havana Cocktail"
 },
 {
   "strDrink": "Gin Swizzle",
   "questions": "Lime Juice-1 1/2 oz , Sugar-1 tsp superfine , Gin-2 oz , Bitters-1 dash , Club Soda-3 oz : In a shaker half-filled with ice cubes, combine the lime juice, sugar, gin, and bitters. Shake well. Almost fill a colling glass with ice cubes. Stir until the glass is frosted. Strain the mixture in the shaker into the glass and add the club soda.",
   "strInstructions": "In a shaker half-filled with ice cubes, combine the lime juice, sugar, gin, and bitters. Shake well. Almost fill a colling glass with ice cubes. Stir until the glass is frosted. Strain the mixture in the shaker into the glass and add the club soda.",
   "strIngredients": "Lime Juice-1 1/2 oz , Sugar-1 tsp superfine , Gin-2 oz , Bitters-1 dash , Club Soda-3 oz",
   "incorrect": "Lemouroudji, Tuxedo Cocktail, Alfie Cocktail"
 },
 {
   "strDrink": "Gin Toddy",
   "questions": "Gin-2 oz , Water-2 tsp , Powdered Sugar-1/2 tsp , Twist of Lemon Peel , : Mix powdered sugar and water in an old-fashioned glass. Add gin and one ice cube. Stir, add the twist of lemon peel, and serve.",
   "strInstructions": "Mix powdered sugar and water in an old-fashioned glass. Add gin and one ice cube. Stir, add the twist of lemon peel, and serve.",
   "strIngredients": "Gin-2 oz , Water-2 tsp , Powdered Sugar-1/2 tsp , Twist of Lemon Peel ,",
   "incorrect": "New York Lemonade, Van Vleet, Apple Berry Smoothie"
 },
 {
   "strDrink": "Girl From Ipanema",
   "questions": "Cachaca-25 ml, Lemon Juice-15 ml, Agave Syrup-10 ml, Champagne-top up with , : Add the cachaca, lemon juice and syrup to your boston glass. Add ice and shake until ice cold. Pour into a chilled flute and top-up with Champagne",
   "strInstructions": "Add the cachaca, lemon juice and syrup to your boston glass. Add ice and shake until ice cold. Pour into a chilled flute and top-up with Champagne",
   "strIngredients": "Cachaca-25 ml, Lemon Juice-15 ml, Agave Syrup-10 ml, Champagne-top up with ,",
   "incorrect": "Cafe Savoy, Iced Coffee, Snakebite and Black"
 },
 {
   "strDrink": "Gluehwein",
   "questions": "Red wine-1 L , Water-125 ml , Sugar-60 gr , Cinnamon-1, Cloves-3, Lemon Peel-1 tblsp : Boil sugar and spices in water, leave in the water for 30 minutes. Strain the spiced water and mix with the wine. Heat slowly until short of boiling temperature. (To remove alcohol, let it boil for a while.) You may add lemon or orange juice to taste. Serve in irish coffee cup.",
   "strInstructions": "Boil sugar and spices in water, leave in the water for 30 minutes. Strain the spiced water and mix with the wine. Heat slowly until short of boiling temperature. (To remove alcohol, let it boil for a while.) You may add lemon or orange juice to taste. Serve in irish coffee cup.",
   "strIngredients": "Red wine-1 L , Water-125 ml , Sugar-60 gr , Cinnamon-1, Cloves-3, Lemon Peel-1 tblsp",
   "incorrect": "ACID, Chocolate Black Russian, Belgian Blue"
 },
 {
   "strDrink": "Godchild",
   "questions": "Vodka-1 oz , Amaretto-1 oz , Heavy Cream-1 oz : Shake all ingredients well with cracked ice, strain into a champagne flute, and serve.",
   "strInstructions": "Shake all ingredients well with cracked ice, strain into a champagne flute, and serve.",
   "strIngredients": "Vodka-1 oz , Amaretto-1 oz , Heavy Cream-1 oz",
   "incorrect": "Dubonnet Cocktail, Zippy's Revenge, 155 Belmont"
 },
 {
   "strDrink": "Godfather",
   "questions": "Scotch-1 1/2 oz , Amaretto-3/4 oz , : Pour all ingredients directly into old fashioned glass filled with ice cubes. Stir gently.",
   "strInstructions": "Pour all ingredients directly into old fashioned glass filled with ice cubes. Stir gently.",
   "strIngredients": "Scotch-1 1/2 oz , Amaretto-3/4 oz ,",
   "incorrect": "Gagliardo, Brandy Cobbler, Orange Oasis"
 },
 {
   "strDrink": "Godmother",
   "questions": "Vodka-1 1/2 oz , Amaretto-3/4 oz , : Pour vodka and amaretto into an old-fashioned glass over ice and serve.",
   "strInstructions": "Pour vodka and amaretto into an old-fashioned glass over ice and serve.",
   "strIngredients": "Vodka-1 1/2 oz , Amaretto-3/4 oz ,",
   "incorrect": "Mimosa, Spiking coffee, Bob Marley"
 },
 {
   "strDrink": "Golden dream",
   "questions": "Galliano-2 parts, Triple Sec-2 parts, Orange Juice-2 parts, Cream-1 part , : Shake with cracked ice. Strain into glass and serve.",
   "strInstructions": "Shake with cracked ice. Strain into glass and serve.",
   "strIngredients": "Galliano-2 parts, Triple Sec-2 parts, Orange Juice-2 parts, Cream-1 part ,",
   "incorrect": "Royal Flush, Chocolate Monkey, Ziemes Martini Apfelsaft"
 },
 {
   "strDrink": "Grand Blue",
   "questions": "Malibu Rum-1 1/2/3 oz , Peach Schnapps-1 1/2/3 oz , Blue Curacao-1 1/2/3 oz , Sweet and Sour-1 oz : Serve in an old fashioned glass.",
   "strInstructions": "Serve in an old fashioned glass.",
   "strIngredients": "Malibu Rum-1 1/2/3 oz , Peach Schnapps-1 1/2/3 oz , Blue Curacao-1 1/2/3 oz , Sweet and Sour-1 oz",
   "incorrect": "After Dinner Cocktail, B-53, Green Goblin"
 },
 {
   "strDrink": "Grape Lemon Pineapple Smoothie",
   "questions": "Grapes-1 cup , Lemon, Pineapple , : Throw everything into a blender and liquify.",
   "strInstructions": "Throw everything into a blender and liquify.",
   "strIngredients": "Grapes-1 cup , Lemon, Pineapple ,",
   "incorrect": "Jitterbug, Dry Rob Roy, Oreo Mudslide"
 },
 {
   "strDrink": "Grass Skirt",
   "questions": "Gin-1 1/2 oz , Triple Sec-1 oz , Pineapple Juice-1 oz , Grenadine-1/2 tsp , Pineapple-1 : In a shaker half-filled with ice cubes, combine the gin, triple sec, Pineapple juice, and grenadine. Shake well. Pour into an old-fashioned glass and garnish with the Pineapple slice.",
   "strInstructions": "In a shaker half-filled with ice cubes, combine the gin, triple sec, Pineapple juice, and grenadine. Shake well. Pour into an old-fashioned glass and garnish with the Pineapple slice.",
   "strIngredients": "Gin-1 1/2 oz , Triple Sec-1 oz , Pineapple Juice-1 oz , Grenadine-1/2 tsp , Pineapple-1",
   "incorrect": "Arctic Fish, Mudslinger, Absolut Evergreen"
 },
 {
   "strDrink": "Grasshopper",
   "questions": "Green Creme de Menthe-3/4 oz , Creme de Cacao-3/4 oz white , Light Cream-3/4 oz : Pour ingredients into a cocktail shaker with ice. Shake briskly and then strain into a chilled cocktail glass.",
   "strInstructions": "Pour ingredients into a cocktail shaker with ice. Shake briskly and then strain into a chilled cocktail glass.",
   "strIngredients": "Green Creme de Menthe-3/4 oz , Creme de Cacao-3/4 oz white , Light Cream-3/4 oz",
   "incorrect": "Surf City Lifesaver, Brave Bull Shooter, Gluehwein"
 },
 {
   "strDrink": "Green Goblin",
   "questions": "Cider-1/2 pint hard , Lager-1/2 pint , Blue Curacao-1 shot : Cider First, Lager then Curacao",
   "strInstructions": "Cider First, Lager then Curacao",
   "strIngredients": "Cider-1/2 pint hard , Lager-1/2 pint , Blue Curacao-1 shot",
   "incorrect": "69 Special, Mocha-Berry, Gin Toddy"
 },
 {
   "strDrink": "Grim Reaper",
   "questions": "Kahlua-1 oz , 151 Proof Rum-1 oz Bacardi , Grenadine-1 dash : Mix Kahlua and 151 in glass. Quickly add ice and pour grenadine over ice to give ice red tint.",
   "strInstructions": "Mix Kahlua and 151 in glass. Quickly add ice and pour grenadine over ice to give ice red tint.",
   "strIngredients": "Kahlua-1 oz , 151 Proof Rum-1 oz Bacardi , Grenadine-1 dash",
   "incorrect": "Wine Punch, Amaretto Mist, Vodka Martini"
 },
 {
   "strDrink": "Grizzly Bear",
   "questions": "Amaretto-1 part , Jagermeister-1 part , Kahlua-1 part , Milk-2 1/2 parts : Served over ice. Sounds nasty, but tastes great.",
   "strInstructions": "Served over ice. Sounds nasty, but tastes great.",
   "strIngredients": "Amaretto-1 part , Jagermeister-1 part , Kahlua-1 part , Milk-2 1/2 parts",
   "incorrect": "randy Alexander, Hawaiian Cocktail, 151 Florida Bushwacker"
 },
 {
   "strDrink": "H.D.",
   "questions": "Whisky-1 1/3 oz , Bailey's Irish Cream-8 cl , Coffee: Mix the whisky and Baileys Cream in a beer-glass (at least 50 cl). Fill the rest of the glass with coffee.",
   "strInstructions": "Mix the whisky and Baileys Cream in a beer-glass (at least 50 cl). Fill the rest of the glass with coffee.",
   "strIngredients": "Whisky-1 1/3 oz , Bailey's Irish Cream-8 cl , Coffee\n  ,",
   "incorrect": "Kiss me Quick, Port Wine Flip, Limeade"
 },
 {
   "strDrink": "Happy Skipper",
   "questions": "SpIced Rum-1 1/2/3 oz , Ginger Ale, Lime, Ice: Pour Captain Morgan's Spiced Rum over ice, fill glass to top with Ginger Ale. Garnish with lime. Tastes like a cream soda. Named for the Gilligan's Island reference (\"The Captain\" *in* \"Ginger\" is a Happy Skipper!)",
   "strInstructions": "Pour Captain Morgan's Spiced Rum over ice, fill glass to top with Ginger Ale. Garnish with lime. Tastes like a cream soda. Named for the Gilligan's Island reference (\"The Captain\" *in* \"Ginger\" is a Happy Skipper!)",
   "strIngredients": "SpIced Rum-1 1/2/3 oz , Ginger Ale\n , Lime\n , Ice\n  ,",
   "incorrect": "747, Absolut limousine, Quaker's Cocktail"
 },
 {
   "strDrink": "Harvey Wallbanger",
   "questions": "Vodka-1 oz , Galliano-1/2 oz , Orange Juice-4 oz : Stir the vodka and orange juice with ice in the glass, then float the Galliano on top. Garnish and serve.",
   "strInstructions": "Stir the vodka and orange juice with ice in the glass, then float the Galliano on top. Garnish and serve.",
   "strIngredients": "Vodka-1 oz , Galliano-1/2 oz , Orange Juice-4 oz",
   "incorrect": "Angel Face, B-52, Cranberry Cordial"
 },
 {
   "strDrink": "Havana Cocktail",
   "questions": "Light Rum-1 oz , Pineapple Juice-1 oz , Lemon Juice-1 tsp : In a shaker half-filled with ice cubes, combine all of the ingredients. Shake well. Strain into a cocktail glass.",
   "strInstructions": "In a shaker half-filled with ice cubes, combine all of the ingredients. Shake well. Strain into a cocktail glass.",
   "strIngredients": "Light Rum-1 oz , Pineapple Juice-1 oz , Lemon Juice-1 tsp",
   "incorrect": "Adam Sunrise, Martini, Zipperhead"
 },
 {
   "strDrink": "Hawaiian Cocktail",
   "questions": "Gin-2 oz , Triple Sec-1/2 oz , Pineapple Juice-1 tblsp : Shake all ingredients with ice, strain into a cocktail glass, and serve.",
   "strInstructions": "Shake all ingredients with ice, strain into a cocktail glass, and serve.",
   "strIngredients": "Gin-2 oz , Triple Sec-1/2 oz , Pineapple Juice-1 tblsp",
   "incorrect": "Quentin, Downshift, Cherry Electric Lemonade"
 },
 {
   "strDrink": "Hemingway Special",
   "questions": "Rum-12 parts, Grapefruit Juice-8 parts, Maraschino Liqueur-3 parts, Lime Juice-3 parts , : Pour all ingredients into a shaker with ice. Shake.",
   "strInstructions": "Pour all ingredients into a shaker with ice. Shake.",
   "strIngredients": "Rum-12 parts, Grapefruit Juice-8 parts, Maraschino Liqueur-3 parts, Lime Juice-3 parts ,",
   "incorrect": "Adonis Cocktail, Classic Old-Fashioned, Allies Cocktail"
 },
 {
   "strDrink": "Herbal flame",
   "questions": "Hot Damn-5 shots , Tea-very sweet , : Pour Hot Damn 100 in bottom of a jar or regular glass. Fill the rest of the glass with sweet tea. Stir with spoon, straw, or better yet a cinnamon stick and leave it in.",
   "strInstructions": "Pour Hot Damn 100 in bottom of a jar or regular glass. Fill the rest of the glass with sweet tea. Stir with spoon, straw, or better yet a cinnamon stick and leave it in.",
   "strIngredients": "Hot Damn-5 shots , Tea-very sweet ,",
   "incorrect": "Damned if you do, Lassi - A South Indian Drink, Caipirinha"
 },
 {
   "strDrink": "Highland Fling Cocktail",
   "questions": "Scotch-1 1/2 oz , Sweet Vermouth-3/4 oz , Orange Bitters-2 dashes , Olive-1 , : Stir all ingredients (except olive) with ice and strain into a cocktail glass. Add the olive and serve.",
   "strInstructions": "Stir all ingredients (except olive) with ice and strain into a cocktail glass. Add the olive and serve.",
   "strIngredients": "Scotch-1 1/2 oz , Sweet Vermouth-3/4 oz , Orange Bitters-2 dashes , Olive-1 ,",
   "incorrect": "A Gilligan's Island, Coffee-Vodka, Bellini Martini"
 },
 {
   "strDrink": "Holloween Punch",
   "questions": "Grape Juice Carbonated Orange Soft DrinkSherbet : Take a bunch of grape juice and a bunch of fizzy stuff (club soda, ginger Ale, lemonlime, whatever). Mix them in a punch bowl. Take orange sherbet and lime sherbet. Scoop out scoops and float them in the punch, let them melt a little so that a nasty film spreads all over the top of the punch but there are still \"bubbles\" in it in the form of sherbet scoops. Looks horrible, tastes just fine.",
   "strInstructions": "Take a bunch of grape juice and a bunch of fizzy stuff (club soda, ginger Ale, lemonlime, whatever). Mix them in a punch bowl. Take orange sherbet and lime sherbet. Scoop out scoops and float them in the punch, let them melt a little so that a nasty film spreads all over the top of the punch but there are still \"bubbles\" in it in the form of sherbet scoops. Looks horrible, tastes just fine.",
   "strIngredients": "Grape Juice\n , Carbonated Orange Soft Drink\n , Sherbet ,",
   "incorrect": "Gin Sour, Apple Karate, Sloe Gin Cocktail"
 },
 {
   "strDrink": "Homemade Kahlua",
   "questions": "Sugar-2 1/2 cups , Corn Syrup-1 cup , Coffee-1 1/2 oz instant , Vanilla Extract-2 oz , Water-3 cups boiling , Vodka-1 fifth : Dissolve sugar in 2 cups of boiling water and add corn syrup. Dissolve the instant coffee in the remaining water. Pour syrup and coffee in a gallon jug. Let it cool. Add vodka and vanilla when cold. For the best result, let the mixture \"mature\" for 4-5 weeks.",
   "strInstructions": "Dissolve sugar in 2 cups of boiling water and add corn syrup. Dissolve the instant coffee in the remaining water. Pour syrup and coffee in a gallon jug. Let it cool. Add vodka and vanilla when cold. For the best result, let the mixture \"mature\" for 4-5 weeks.",
   "strIngredients": "Sugar-2 1/2 cups , Corn Syrup-1 cup , Coffee-1 1/2 oz instant , Vanilla Extract-2 oz , Water-3 cups boiling , Vodka-1 fifth",
   "incorrect": "Sex on the Beach, Lemon Shot, Jam Donut"
 },
 {
   "strDrink": "Horse's Neck",
   "questions": "Lemon peel-1 long strip , Brandy-2 oz , Ginger Ale-5 oz , Bitters-2 dashes : Pour brandy and ginger Ale directly into highball glass with ice cubes. Stir gently. Garnish with lemon zest. If desired, add dashes of Angostura Bitter.",
   "strInstructions": "Pour brandy and ginger Ale directly into highball glass with ice cubes. Stir gently. Garnish with lemon zest. If desired, add dashes of Angostura Bitter.",
   "strIngredients": "Lemon peel-1 long strip , Brandy-2 oz , Ginger Ale-5 oz , Bitters-2 dashes",
   "incorrect": "Irish Coffee, Cosmopolitan Martini, Affinity"
 },
 {
   "strDrink": "Hot Chocolate to Die for",
   "questions": "Chocolate-12 oz fine , Butter-1 tsp , Vanilla Extract-1/2 tsp , Half-and-Half-1 cup , Marshmallows-mini : Melt the chocolate, butter and vanilla in a double boiler. When just smooth stir in the cream.",
   "strInstructions": "Melt the chocolate, butter and vanilla in a double boiler. When just smooth stir in the cream.",
   "strIngredients": "Chocolate-12 oz fine , Butter-1 tsp , Vanilla Extract-1/2 tsp , Half-and-Half-1 cup , Marshmallows-mini",
   "incorrect": "Irish Coffee, Cosmopolitan Martini, Affinity"
 },
 {
   "strDrink": "Hot Creamy Bush",
   "questions": "Irish Whiskey-1 shot , Bailey's Irish Cream-3/4 shot , Coffee-6 oz hot : Combine all ingredients in glass",
   "strInstructions": "Combine all ingredients in glass",
   "strIngredients": "Irish Whiskey-1 shot , Bailey's Irish Cream-3/4 shot , Coffee-6 oz hot",
   "incorrect": "Kioki Coffee, Vodka And Tonic, Gin And Tonic"
 },
 {
   "strDrink": "Ice Pick #1",
   "questions": "Vodka-1 1/2 oz , Iced Tea-6 oz , Lemon Juice- to taste: Put Vodka in glass fill with iced tea. Stir in lemon to taste.",
   "strInstructions": "Put Vodka in glass fill with iced tea. Stir in lemon to taste.",
   "strIngredients": "Vodka-1 1/2 oz , Iced Tea-6 oz , Lemon Juice- to taste\n  ,",
   "incorrect": "Negroni, Adios Amigos Cocktail, Dirty Martini"
 },
 {
   "strDrink": "Iced Coffee",
   "questions": "Coffee-1/4 cup instant , Sugar-1/4 cup , Water-1/4 cup hot , Milk-4 cups cold : Mix together until coffee and sugar is dissolved. Add milk. Shake well. Using a blender or milk shake maker produces a very foamy drink. Serve in coffee mug.",
   "strInstructions": "Mix together until coffee and sugar is dissolved. Add milk. Shake well. Using a blender or milk shake maker produces a very foamy drink. Serve in coffee mug.",
   "strIngredients": "Coffee-1/4 cup instant , Sugar-1/4 cup , Water-1/4 cup hot , Milk-4 cups cold",
   "incorrect": "Lassi Khara, Barracuda, Whiskey Sour"
 },
 {
   "strDrink": "Iced Coffee Fillip",
   "questions": "Kahlua-2 tsp , Coffee-Strong cold , : Mix together in a coffee mug and chill before serving.",
   "strInstructions": "Mix together in a coffee mug and chill before serving.",
   "strIngredients": "Kahlua-2 tsp , Coffee-Strong cold ,",
   "incorrect": "Shot-gun, Mulled Wine, Drinking Chocolate"
 },
 {
   "strDrink": "Imperial Cocktail",
   "questions": "Lime Juice-1 1/3 oz , Gin-2/3 oz , Aperol-1 1/3 oz : Shake with ice and strain into cocktail glass.",
   "strInstructions": "Shake with ice and strain into cocktail glass.",
   "strIngredients": "Lime Juice-1 1/3 oz , Gin-2/3 oz , Aperol-1 1/3 oz",
   "incorrect": "Whisky Mac, Brandon and Will's Coke Float, Highland Fling Cocktail"
 },
 {
   "strDrink": "Imperial Fizz",
   "questions": "Light Rum-1/2 oz , Blended Whiskey-1 1/2 oz , Lemon-Juice of 1/2 , Powdered Sugar-1 tsp , Carbonated Water: Shake all ingredients (except carbonated water) with ice and strain into a highball glass over two ice cubes. Fill with carbonated water, stir, and serve.",
   "strInstructions": "Shake all ingredients (except carbonated water) with ice and strain into a highball glass over two ice cubes. Fill with carbonated water, stir, and serve.",
   "strIngredients": "Light Rum-1/2 oz , Blended Whiskey-1 1/2 oz , Lemon-Juice of 1/2 , Powdered Sugar-1 tsp , Carbonated Water-",
   "incorrect": "Boston Sour, Egg Nog #4, Irish Curdling Cow"
 },
 {
   "strDrink": "Ipamena",
   "questions": "Lime, Brown sugar-2 tsp, Passion Fruit Juice-1 1/3 oz, Ginger Ale-top up with, Ice-fill : Cut half a lime into pieces, place in a shaker, add the sugar and crush. Measure the passion fruit juice, add it to the shaker and fill up with ice cubes. Close the shaker and shake vigorously. Pour the liquid into a glass, top up with ginger Ale, stir with a teaspoon and then garnish the rim of the glass with a slice of lime",
   "strInstructions": "Cut half a lime into pieces, place in a shaker, add the sugar and crush. Measure the passion fruit juice, add it to the shaker and fill up with ice cubes. Close the shaker and shake vigorously. Pour the liquid into a glass, top up with ginger Ale, stir with a teaspoon and then garnish the rim of the glass with a slice of lime",
   "strIngredients": "Lime, Brown sugar-2 tsp, Passion Fruit Juice-1 1/3 oz, Ginger Ale-top up with, Ice-fill",
   "incorrect": "Ace, London Town, National Aquarium"
 },
 {
   "strDrink": "Irish Coffee",
   "questions": "Irish Whiskey-1 1/2 oz , Coffee-8 oz , Sugar-1 tsp , Whipped Cream-1 tblsp : Heat the coffee, whiskey and sugar; do not boil. Pour into glass and top with cream; serve hot.",
   "strInstructions": "Heat the coffee, whiskey and sugar; do not boil. Pour into glass and top with cream; serve hot.",
   "strIngredients": "Irish Whiskey-1 1/2 oz , Coffee-8 oz , Sugar-1 tsp , Whipped Cream-1 tblsp",
   "incorrect": "3-Mile Long Island Iced Tea, AT&T, Citrus Coke"
 },
 {
   "strDrink": "Irish Cream",
   "questions": "Scotch-1 cup , Half-and-half-1 1/4 cup , Condensed milk-1 can sweetened , Coconut Syrup-3 drops , Chocolate Syrup-1 tblsp : Mix scotch and milk. Add half-and-half. Add rest.",
   "strInstructions": "Mix scotch and milk. Add half-and-half. Add rest.",
   "strIngredients": "Scotch-1 cup , Half-and-half-1 1/4 cup , Condensed milk-1 can sweetened , Coconut Syrup-3 drops , Chocolate Syrup-1 tblsp",
   "incorrect": "Imperial Cocktail, A midsummernight dream, Apricot punch"
 },
 {
   "strDrink": "Irish Curdling Cow",
   "questions": "Bailey's Irish Cream-3/4 oz , Bourbon-3/4 oz , Vodka-3/4 oz , Orange Juice-2-3 oz : Pour Irish Cream, Vodka, and Bourbon in a glass. Add some ice and mix in the orange juice.",
   "strInstructions": "Pour Irish Cream, Vodka, and Bourbon in a glass. Add some ice and mix in the orange juice.",
   "strIngredients": "Bailey's Irish Cream-3/4 oz , Bourbon-3/4 oz , Vodka-3/4 oz , Orange Juice-2-3 oz",
   "incorrect": "Danbooka, Frozen Mint Daiquiri, Victory Collins"
 },
 {
   "strDrink": "Irish Russian",
   "questions": "Vodka-1 shot , Kahlua-1 shot , Coca-Cola-1 dash , Fill with Guinness Stout : Add the ingredients in the order listed in the recipe. Care must be taken when adding the Guinness to prevent an excess of foam. Do Not add ice.",
   "strInstructions": "Add the ingredients in the order listed in the recipe. Care must be taken when adding the Guinness to prevent an excess of foam. Do Not add ice.",
   "strIngredients": "Vodka-1 shot , Kahlua-1 shot , Coca-Cola-1 dash , Fill with Guinness Stout",
   "incorrect": "Blue Mountain, Casino, Golden dream"
 },
 {
   "strDrink": "Irish Spring",
   "questions": "Irish Whiskey-1 oz , Peach Brandy-1/2 oz , Orange Juice-1 oz , Sweet and Sour-1 oz , Orange-1 slIce , Cherry-1 : Pour all ingredients (except orange slice and cherry) into a collins glass over ice cubes. Garnish with the slice of orange, add the cherry on top, and serve.",
   "strInstructions": "Pour all ingredients (except orange slice and cherry) into a collins glass over ice cubes. Garnish with the slice of orange, add the cherry on top, and serve.",
   "strIngredients": "Irish Whiskey-1 oz , Peach Brandy-1/2 oz , Orange Juice-1 oz , Sweet and Sour-1 oz , Orange-1 slIce , Cherry-1",
   "incorrect": "Egg Nog - Healthy, Caribbean Boilermaker, Godmother"
 },
 {
   "strDrink": "Jack Rose Cocktail",
   "questions": "Apple Brandy-1 1/2 oz , Grenadine-1 tsp , Lime Juice of 1/2 : Shake all ingredients with ice, strain into a cocktail glass, and serve.",
   "strInstructions": "Shake all ingredients with ice, strain into a cocktail glass, and serve.",
   "strIngredients": "Apple Brandy-1 1/2 oz , Grenadine-1 tsp , Lime Juice of 1/2",
   "incorrect": "French Connection, Cuba Libre, Blue Lagoon"
 },
 {
   "strDrink": "Jack's Vanilla Coke",
   "questions": "Ice-43560, Tennessee Whiskey-2 oz , Vanilla extract-1 tsp , Coca-Cola-10-12 oz : After pouring in your ingredients, and adding 3-5 ice cubes, according to taste. Stir the drink with a Stirer to get the Vanilla off the bottom.",
   "strInstructions": "After pouring in your ingredients, and adding 3-5 ice cubes, according to taste. Stir the drink with a Stirer to get the Vanilla off the bottom.",
   "strIngredients": "Ice-43560, Tennessee Whiskey-2 oz , Vanilla extract-1 tsp , Coca-Cola-10-12 oz",
   "incorrect": "Port Wine Cocktail, Sangria - The World's Best, City Slicker"
 },
 {
   "strDrink": "Jackhammer",
   "questions": "Jack Daniels-1 oz , Amaretto-1 oz , : Serve over ice- Warning,Deadly!",
   "strInstructions": "Serve over ice- Warning,Deadly!",
   "strIngredients": "Jack Daniels-1 oz , Amaretto-1 oz ,",
   "incorrect": "Kool-Aid Slammer, Apello, Malibu Twister"
 },
 {
   "strDrink": "Jam Donut",
   "questions": "Baileys Irish Cream-2/3 oz, Chambord Raspberry Liqueur-1/3 oz, Sugar Syrup-1 tsp, Sugar-2 pinches , : Coat the rim of a shot glass with sugar using sugar syrup to stick. Add the Chambord raspberry liqueur to the shot glass, and carefully layer the Baileys Irish Cream on top. Serve.",
   "strInstructions": "Coat the rim of a shot glass with sugar using sugar syrup to stick. Add the Chambord raspberry liqueur to the shot glass, and carefully layer the Baileys Irish Cream on top. Serve.",
   "strIngredients": "Baileys Irish Cream-2/3 oz, Chambord Raspberry Liqueur-1/3 oz, Sugar Syrup-1 tsp, Sugar-2 pinches ,",
   "incorrect": "Spritz, Stone Sour, Tia-Maria"
 },
 {
   "strDrink": "Jamaica Kiss",
   "questions": "Coffee Liqueur-1 shot , Light Rum-1 shot Jamaican , Ice Cubes, Milk: Fill a tumbler with ice cubes. Add a shot of Tia Maria and a shot of Jamaican light rum. Fill the tumbler with milk. Blend until smooth and serve immediately.",
   "strInstructions": "Fill a tumbler with ice cubes. Add a shot of Tia Maria and a shot of Jamaican light rum. Fill the tumbler with milk. Blend until smooth and serve immediately.",
   "strIngredients": "Coffee Liqueur-1 shot , Light Rum-1 shot Jamaican , Ice Cubes\n , Milk\n  ,",
   "incorrect": "Iced Coffee Fillip, Gin Daisy, Harvey Wallbanger"
 },
 {
   "strDrink": "Jamaican Coffee",
   "questions": "Rum-1/6 glass , Coffee-1/6 glass strong black , Water-1/2 glass cold , Whipped Cream: Stir the rum, coffee and water together. Top with the whipped cream. Sprinkle with a pinch of well ground coffee and drink with a straw.",
   "strInstructions": "Stir the rum, coffee and water together. Top with the whipped cream. Sprinkle with a pinch of well ground coffee and drink with a straw.",
   "strIngredients": "Rum-1/6 glass , Coffee-1/6 glass strong black , Water-1/2 glass cold , Whipped Cream\n  ,",
   "incorrect": "Rusty Nail, Bourbon Sling, Vesper"
 },
 {
   "strDrink": "Japanese Fizz",
   "questions": "Blended Whiskey-1 1/2 oz , Lemon-Juice of 1/2 , Powdered Sugar-1 tsp , Port-1 tblsp , Egg White-1, Carbonated Water: Shake all ingredients (except carbonated water) with ice and strain into a highball glass over two ice cubes. Fill with carbonated water, stir, and serve.",
   "strInstructions": "Shake all ingredients (except carbonated water) with ice and strain into a highball glass over two ice cubes. Fill with carbonated water, stir, and serve.",
   "strIngredients": "Blended Whiskey-1 1/2 oz , Lemon-Juice of 1/2 , Powdered Sugar-1 tsp , Port-1 tblsp , Egg White-1, Carbonated Water",
   "incorrect": "Adam, Zenmeister, Victor"
 },
 {
   "strDrink": "Jello shots",
   "questions": "Vodka-2 cups , Jello-3 packages , Water-3 cups : Boil 3 cups of water then add jello. Mix jello and water until jello is completely disolved. Add the two cups of vodka and mix together. Pour mixture into plastic shot glasses and chill until firm. Then, eat away...",
   "strInstructions": "Boil 3 cups of water then add jello. Mix jello and water until jello is completely disolved. Add the two cups of vodka and mix together. Pour mixture into plastic shot glasses and chill until firm. Then, eat away...",
   "strIngredients": "Vodka-2 cups , Jello-3 packages , Water-3 cups",
   "incorrect": "Absolut Summertime, 9 1/2 Weeks, Jewel Of The Nile"
 },
 {
   "strDrink": "Jelly Bean",
   "questions": "Blackberry Brandy-1 oz , Anis-1 oz , : mix equal parts in pony glass-tastes just like a jelly bean!",
   "strInstructions": "mix equal parts in pony glass-tastes just like a jelly bean!",
   "strIngredients": "Blackberry Brandy-1 oz , Anis-1 oz ,",
   "incorrect": "Atomic Lokade, Amaretto Sunset, Rum Sour"
 },
 {
   "strDrink": "Jewel Of The Nile",
   "questions": "Gin-1 1/2 oz , Green Chartreuse-1/2 oz , Yellow Chartreuse-1/2 oz : In a mixing glass half-filled with ice cubes, combine all of the ingredients. Stir well. Strain into a cocktail glass.",
   "strInstructions": "In a mixing glass half-filled with ice cubes, combine all of the ingredients. Stir well. Strain into a cocktail glass.",
   "strIngredients": "Gin-1 1/2 oz , Green Chartreuse-1/2 oz , Yellow Chartreuse-1/2 oz",
   "incorrect": "Dirty Nipple, Almond Chocolate Coffee, Midnight Manx"
 },
 {
   "strDrink": "Jitterbug",
   "questions": "Gin-2 jiggers , Vodka-1 jigger , Grenadine-3 dashes , Lime Juice-1 shot , Sugar-Around rim put 1 pinch , Sugar Syrup-3 dashes , Soda Water-Fill to top with : Wet glass, dip rim in sugar. Then add Ice. Then add everything else. It's that simple!",
   "strInstructions": "Wet glass, dip rim in sugar. Then add Ice. Then add everything else. It's that simple!",
   "strIngredients": "Gin-2 jiggers , Vodka-1 jigger , Grenadine-3 dashes , Lime Juice-1 shot , Sugar-Around rim put 1 pinch , Sugar Syrup-3 dashes , Soda Water-Fill to top with",
   "incorrect": "Aztec Punch, Ipamena, Afterglow"
 },
 {
   "strDrink": "John Collins",
   "questions": "Bourbon-2 oz , Lemon Juice-1 oz , Sugar-1 tsp superfine , Club Soda-3 oz , Maraschino Cherry-1, Orange-1 : Pour all ingredients directly into highball glass filled with ice. Stir gently. Garnish. Add a dash of Angostura bitters.",
   "strInstructions": "Pour all ingredients directly into highball glass filled with ice. Stir gently. Garnish. Add a dash of Angostura bitters.",
   "strIngredients": "Bourbon-2 oz , Lemon Juice-1 oz , Sugar-1 tsp superfine , Club Soda-3 oz , Maraschino Cherry-1, Orange-1",
   "incorrect": "Allegheny, Jackhammer, Atlantic Sun"
 },
 {
   "strDrink": "Just a Moonmint",
   "questions": "Milk-2 cups , Chocolate Syrup, Mint Syrup: Place all ingredients in the blender jar - cover and whiz on medium speed until well blended. Pour in one tall, 2 medium or 3 small glasses and drink up.",
   "strInstructions": "Place all ingredients in the blender jar - cover and whiz on medium speed until well blended. Pour in one tall, 2 medium or 3 small glasses and drink up.",
   "strIngredients": "Milk-2 cups , Chocolate Syrup\n , Mint Syrup\n  ,",
   "incorrect": "Melya, Flying Dutchman, Cream Soda"
 },
 {
   "strDrink": "Kamikaze",
   "questions": "Vodka-1 oz , Triple Sec-1 oz , Lime Juice-1 oz : Shake all ingredients together with ice. Strain into glass, garnish and serve.",
   "strInstructions": "Shake all ingredients together with ice. Strain into glass, garnish and serve.",
   "strIngredients": "Vodka-1 oz , Triple Sec-1 oz , Lime Juice-1 oz",
   "incorrect": "Banana Strawberry Shake Daiquiri-type, New York Sour, Castillian Hot Chocolate"
 },
 {
   "strDrink": "Karsk",
   "questions": "Coffee-1 part , Grain alcohol-2 parts , : Put a copper coin in a coffe-cup and fill up with coffee until you no longer see the coin, then add alcohol until you see the coin. Norwegian speciality.",
   "strInstructions": "Put a copper coin in a coffe-cup and fill up with coffee until you no longer see the coin, then add alcohol until you see the coin. Norwegian speciality.",
   "strIngredients": "Coffee-1 part , Grain alcohol-2 parts ,",
   "incorrect": "Midnight Cowboy, Gin Smash, Thai Coffee"
 },
 {
   "strDrink": "Kentucky B And B",
   "questions": "Bourbon-2 oz , Benedictine-1/2 oz , : Pour the bourbon and Benedictine into a brandy snifter.",
   "strInstructions": "Pour the bourbon and Benedictine into a brandy snifter.",
   "strIngredients": "Bourbon-2 oz , Benedictine-1/2 oz ,",
   "incorrect": "Grand Blue, Spiking coffee, Strawberry Margarita"
 },
 {
   "strDrink": "Kentucky Colonel",
   "questions": "Bourbon-3 oz , Benedictine-1/2 oz , Twist of Lemon Peel , : In a shaker half-filled with ice cubes combine the courbon and Benedictine. Shake and strain into a cocktail glass. Garnish with the lemon twist.",
   "strInstructions": "In a shaker half-filled with ice cubes combine the courbon and Benedictine. Shake and strain into a cocktail glass. Garnish with the lemon twist.",
   "strIngredients": "Bourbon-3 oz , Benedictine-1/2 oz , Twist of Lemon Peel ,",
   "incorrect": "Pysch Vitamin Light, 501 Blue, 9 1/2 Weeks"
 },
 {
   "strDrink": "Kill the cold Smoothie",
   "questions": "Ginger-1 inch , Lemon-43469, Water-1 cup hot : Juice ginger and lemon and add it to hot water. You may add cardomom.",
   "strInstructions": "Juice ginger and lemon and add it to hot water. You may add cardomom.",
   "strIngredients": "Ginger-1 inch , Lemon, Water-1 cup hot",
   "incorrect": "Apple Berry Smoothie, Rum Milk Punch, Radioactive Long Island Iced Tea"
 },
 {
   "strDrink": "Kioki Coffee",
   "questions": "Kahlua-1 oz , Brandy-1/2 oz , Coffee: Stir. Add whipped cream to the top.",
   "strInstructions": "Stir. Add whipped cream to the top.",
   "strIngredients": "Kahlua-1 oz , Brandy-1/2 oz , Coffee\n  ,",
   "incorrect": "Scottish Highland Liqueur, Jack's Vanilla Coke, Banana Daiquiri"
 },
 {
   "strDrink": "Kir",
   "questions": "Creme de Cassis-1 part , Champagne-5 parts , : Add the creme de cassis to the bottom of the glass, then top up with wine.",
   "strInstructions": "Add the creme de cassis to the bottom of the glass, then top up with wine.",
   "strIngredients": "Creme de Cassis-1 part , Champagne-5 parts ,",
   "incorrect": "Orange Scented Hot Chocolate, Buccaneer, Gentleman's Club"
 },
 {
   "strDrink": "Kir RoyAle",
   "questions": "Creme de Cassis-1 part , Champagne-5 parts , : Pour Creme de cassis in glass, gently pour champagne on top",
   "strInstructions": "Pour Creme de cassis in glass, gently pour champagne on top",
   "strIngredients": "Creme de Cassis-1 part , Champagne-5 parts ,",
   "incorrect": "Zoksel, Miami VIce, A.D.M. (After Dinner Mint)"
 },
 {
   "strDrink": "Kiss me Quick",
   "questions": "Cranberry Vodka-1 1/3 oz , Apfelkorn-2/3 oz , Schweppes Russchian-2 1/3 oz , Apple Juice-2 2/3 oz , Ice Cubes: mix in the glass",
   "strInstructions": "mix in the glass",
   "strIngredients": "Cranberry Vodka-1 1/3 oz , Apfelkorn-2/3 oz , Schweppes Russchian-2 1/3 oz , Apple Juice-2 2/3 oz , Ice Cubes",
   "incorrect": "Negroni, Vodka Fizz, 3-Mile Long Island Iced Tea"
 },
 {
   "strDrink": "Kiwi Lemon",
   "questions": "Kiwi Liqueur-1 part , Bitter lemon-2 parts , Ice Cubes: Mix in highball glass. Stir. Garnish with slice of kiwi.",
   "strInstructions": "Mix in highball glass. Stir. Garnish with slice of kiwi.",
   "strIngredients": "Kiwi Liqueur-1 part , Bitter lemon-2 parts , Ice Cubes\n  ,",
   "incorrect": "Sol Y Sombra, Gin Fizz, Waikiki Beachcomber"
 },
 {
   "strDrink": "Kiwi Papaya Smoothie",
   "questions": "Kiwi-3, Papaya : Throw everything into a blender and liquify.",
   "strInstructions": "Throw everything into a blender and liquify.",
   "strIngredients": "Kiwi-3, Papaya",
   "incorrect": "Orgasm, Wine Punch, Bubble Gum"
 },
 {
   "strDrink": "Kool First Aid",
   "questions": "151 Proof Rum-2 oz light , Kool-Aid-1/2 tsp Tropical , : Add Kool Aid to a double shot glass, and top with rum. Slam and shoot.",
   "strInstructions": "Add Kool Aid to a double shot glass, and top with rum. Slam and shoot.",
   "strIngredients": "151 Proof Rum-2 oz light , Kool-Aid-1/2 tsp Tropical ,",
   "incorrect": "English Highball, Amaretto Shake, Turf Cocktail"
 },
 {
   "strDrink": "Kool-Aid Shot",
   "questions": "Vodka-1 shot , Amaretto-1 shot , Sloe Gin-1 shot , Triple Sec-1 shot , Cranberry Juice: Pour into a large glass with ice and stir. Add a little cranberry juice to taste.",
   "strInstructions": "Pour into a large glass with ice and stir. Add a little cranberry juice to taste.",
   "strIngredients": "Vodka-1 shot , Amaretto-1 shot , Sloe Gin-1 shot , Triple Sec-1 shot , Cranberry Juice-",
   "incorrect": "Affair, Flaming Lamborghini, Snake Bite (UK)"
 },
 {
   "strDrink": "Kool-Aid Slammer",
   "questions": "Kool-Aid-1/2 oz Grape , Vodka-1/2 oz , : Fill half the shot glass with the kool-aid first. Then put a paper towel over the top of the glass and slowly pour in the vodka. If you do it right, you should be able to see that the two liquids are separated, with the vodka on top. Now slam it! The last thing you'll taste is the kool-aid.",
   "strInstructions": "Fill half the shot glass with the kool-aid first. Then put a paper towel over the top of the glass and slowly pour in the vodka. If you do it right, you should be able to see that the two liquids are separated, with the vodka on top. Now slam it! The last thing you'll taste is the kool-aid.",
   "strIngredients": "Kool-Aid-1/2 oz Grape , Vodka-1/2 oz ,",
   "incorrect": "Chocolate Drink, Artillery Punch, Between The Sheets"
 },
 {
   "strDrink": "Kurant Tea",
   "questions": "Absolut Kurant-1 1/3 oz , Tea-Turkish apple , Sugar- (if needed): Pour Absolut Kurant into a comfortably big tea-cup. Add the not too hot(!) apple tea and, if you like, some sugar. Enjoy!",
   "strInstructions": "Pour Absolut Kurant into a comfortably big tea-cup. Add the not too hot(!) apple tea and, if you like, some sugar. Enjoy!",
   "strIngredients": "Absolut Kurant-1 1/3 oz , Tea-Turkish apple , Sugar- (if needed)\n  ,",
   "incorrect": "Sea breeze, Kiwi Papaya Smoothie, Sangria - The World's Best"
 },
 {
   "strDrink": "Lady Love Fizz",
   "questions": "Gin-2 oz , Light Cream-2 tsp , Powdered Sugar-1 tsp , Lemon-Juice of 1/2 , Egg White-1, Carbonated Water: Shake all ingredients (except carbonated water) with ice and strain into a cocktail glass over two ice cubes. Fill with carbonated water, stir, and serve.",
   "strInstructions": "Shake all ingredients (except carbonated water) with ice and strain into a cocktail glass over two ice cubes. Fill with carbonated water, stir, and serve.",
   "strIngredients": "Gin-2 oz , Light Cream-2 tsp , Powdered Sugar-1 tsp , Lemon-Juice of 1/2 , Egg White-1, Carbonated Water",
   "incorrect": "Tequila Surprise, Melya, Allies Cocktail"
 },
 {
   "strDrink": "Lassi - A South Indian Drink",
   "questions": "Yoghurt-1/2 cup plain , Water-1 1/4 cup cold , Cumin seed-1/2 tsp ground roasted , Salt-1/4 tsp , Mint-1/4 tsp dried : Blend in a blender for 3 seconds. Lassi is one of the easiest things to make, and there are many ways of making it. Basically, it is buttermilk (yoghurt whisked with water), and you can choose almost any consistency that you like, from the thinnest to the thickest. Serve cold.",
   "strInstructions": "Blend in a blender for 3 seconds. Lassi is one of the easiest things to make, and there are many ways of making it. Basically, it is buttermilk (yoghurt whisked with water), and you can choose almost any consistency that you like, from the thinnest to the thickest. Serve cold.",
   "strIngredients": "Yoghurt-1/2 cup plain , Water-1 1/4 cup cold , Cumin seed-1/2 tsp ground roasted , Salt-1/4 tsp , Mint-1/4 tsp dried",
   "incorrect": "Apple Cider Punch #1, Dark and Stormy, Stinger"
 },
 {
   "strDrink": "Lassi - Mango",
   "questions": "Mango-2, Yoghurt-2 cups , Sugar-1/2 cup , Water-1 cup Iced : Put it all in a blender and pour over crushed ice. You can also use other fruits like strawberries and bananas.",
   "strInstructions": "Put it all in a blender and pour over crushed ice. You can also use other fruits like strawberries and bananas.",
   "strIngredients": "Mango-2, Yoghurt-2 cups , Sugar-1/2 cup , Water-1 cup Iced",
   "incorrect": "Butter Baby, Royal Fizz, Gluehwein"
 },
 {
   "strDrink": "Lassi - Sweet",
   "questions": "Yoghurt-1 cup , Water-2 cups cold , Sugar-4 tblsp , Salt-pinch , Lemon Juice-2 tblsp : Put all ingredients into a blender and blend until nice and frothy. Serve chilled.",
   "strInstructions": "Put all ingredients into a blender and blend until nice and frothy. Serve chilled.",
   "strIngredients": "Yoghurt-1 cup , Water-2 cups cold , Sugar-4 tblsp , Salt-pinch , Lemon Juice-2 tblsp",
   "incorrect": "Almond Chocolate Coffee, Allegheny, San Francisco"
 },
 {
   "strDrink": "Lassi Khara",
   "questions": "Yoghurt-1 cup , Water-2 cups cold , Salt-1 tsp , Asafoetida-1 pinch : Blend (frappe) in blender until frothy. Add torn curry leaves and serve cold.",
   "strInstructions": "Blend (frappe) in blender until frothy. Add torn curry leaves and serve cold.",
   "strIngredients": "Yoghurt-1 cup , Water-2 cups cold , Salt-1 tsp , Asafoetida-1 pinch",
   "incorrect": "Tomato Tang, Adam Bomb, Arise My Love"
 },
 {
   "strDrink": "Lassi Raita",
   "questions": "Yoghurt-2 cups , Ice, Sugar, Lime, Salt: Blend the yoghurt and ice cubes together, until the yoghurt becomes more liquid. Add sugar to taste. The lemon/lime is optional but it gives it a slightly tart taste. Dash of salt. Raita is also good for the summer. Instead of having a traditional salad you can make raita instead.",
   "strInstructions": "Blend the yoghurt and ice cubes together, until the yoghurt becomes more liquid. Add sugar to taste. The lemon/lime is optional but it gives it a slightly tart taste. Dash of salt. Raita is also good for the summer. Instead of having a traditional salad you can make raita instead.",
   "strIngredients": "Yoghurt-2 cups , Ice, Sugar\n , Lime\n , Salt",
   "incorrect": "Lunch Box, Van Vleet, Blue Mountain"
 },
 {
   "strDrink": "Lemon Drop",
   "questions": "Absolut Vodka-1 1/2 shot , Cointreau-1 1/2 shot , Lemon Juice of 1 wedge : Shake and strain into a chilled cocktail glass rimmed with sugar.",
   "strInstructions": "Shake and strain into a chilled cocktail glass rimmed with sugar.",
   "strIngredients": "Absolut Vodka-1 1/2 shot , Cointreau-1 1/2 shot , Lemon Juice of 1 wedge",
   "incorrect": "Egg Nog #4, Gideon's Green Dinosaur, Daiquiri"
 },
 {
   "strDrink": "Lemon Shot",
   "questions": "Galliano-1/2 oz , Absolut Citron-1/2 oz , Lemon- wedge, Sugar-Bacardi , 151 Proof Rum- : Mix Galliano and Absolut Citron in a shot glass, lay lemon wedge sprinkled with sugar over glass and pour a rum over wedge and glass. light rum with a lighter and let burn for a second. Do shot quickly and suck on lemon. If it is done correctly, this will taste like a shot of sweet lemonade.",
   "strInstructions": "Mix Galliano and Absolut Citron in a shot glass, lay lemon wedge sprinkled with sugar over glass and pour a rum over wedge and glass. light rum with a lighter and let burn for a second. Do shot quickly and suck on lemon. If it is done correctly, this will taste like a shot of sweet lemonade.",
   "strIngredients": "Galliano-1/2 oz , Absolut Citron-1/2 oz , Lemon- wedge\n , Sugar-Bacardi , 151 Proof Rum-",
   "incorrect": "Bourbon Sour, Classic Old-Fashioned, New York Sour"
 },
 {
   "strDrink": "Lemouroudji",
   "questions": "Ginger-2 pieces , Water-1 gal , Lemon-1 lb , Sugar-1 cup , Cayenne Pepper-ground : Juice the lemons. Peel and grate the ginger. Place the grated ginger and a liberal dash of the cayenne pepper into a piece of cheesecloth, and tie it into a knot. Let soak in the water. After 15 minutes or so, add the sugar, and the lemon juice. Chill, and serve.",
   "strInstructions": "Juice the lemons. Peel and grate the ginger. Place the grated ginger and a liberal dash of the cayenne pepper into a piece of cheesecloth, and tie it into a knot. Let soak in the water. After 15 minutes or so, add the sugar, and the lemon juice. Chill, and serve.",
   "strIngredients": "Ginger-2 pieces , Water-1 gal , Lemon-1 lb , Sugar-1 cup , Cayenne Pepper-ground",
   "incorrect": "Blind Russian, Russian Spring Punch, Irish Spring"
 },
 {
   "strDrink": "Limeade",
   "questions": "Lime-Juice of 1 , Sugar-1 tblsp , Soda Water- (Seltzer Water), Lime Peel: In a large glass, put the lime juice and sugar, and stir well. Add cold seltzer water to fill. Put the lime peels in the glass. Drink. Repeat until limes or soda run out.",
   "strInstructions": "In a large glass, put the lime juice and sugar, and stir well. Add cold seltzer water to fill. Put the lime peels in the glass. Drink. Repeat until limes or soda run out.",
   "strIngredients": "Lime-Juice of 1 , Sugar-1 tblsp , Soda Water- (Seltzer Water)\n , Lime Peel ,",
   "incorrect": "Moranguito, Apricot Lady, Quick-sand"
 },
 {
   "strDrink": "Limona Corona",
   "questions": "Corona-1 bottle , Bacardi Limon-1 oz , : Open the Corona. Fill the empty space in the neck in the bottle with the rum. The bottle should be filled to the top. Plug the bottle with your thumb or the palm of your hand. Turn the bottle upside-down so the rum and beer mix. Turn the bottle rightside-up, unplug, and drink.",
   "strInstructions": "Open the Corona. Fill the empty space in the neck in the bottle with the rum. The bottle should be filled to the top. Plug the bottle with your thumb or the palm of your hand. Turn the bottle upside-down so the rum and beer mix. Turn the bottle rightside-up, unplug, and drink.",
   "strIngredients": "Corona-1 bottle , Bacardi Limon-1 oz ,",
   "incorrect": "Ace, Midnight Manx, Gin Sour"
 },
 {
   "strDrink": "Loch Lomond",
   "questions": "Scotch-2 oz , Drambuie-1/2 oz , Dry Vermouth-1/2 oz , Twist of Lemon Peel , : In a mixing glass half-filled with ice cubes, combine the Scotch, Drambuie, and vermouth. Stir well. Strain into a cocktail glass. Garnish with the lemon twist.",
   "strInstructions": "In a mixing glass half-filled with ice cubes, combine the Scotch, Drambuie, and vermouth. Stir well. Strain into a cocktail glass. Garnish with the lemon twist.",
   "strIngredients": "Scotch-2 oz , Drambuie-1/2 oz , Dry Vermouth-1/2 oz , Twist of Lemon Peel ,",
   "incorrect": "Irish Cream, City Slicker, ACID"
 },
 {
   "strDrink": "London Town",
   "questions": "Gin-1 1/2 oz , Maraschino Liqueur-1/2 oz , Orange Bitters-2 dashes : In a mixing glass half-filled with ice cubes, combine all of the ingredients. Stir well. Strain into a cocktail glass.",
   "strInstructions": "In a mixing glass half-filled with ice cubes, combine all of the ingredients. Stir well. Strain into a cocktail glass.",
   "strIngredients": "Gin-1 1/2 oz , Maraschino Liqueur-1/2 oz , Orange Bitters-2 dashes",
   "incorrect": "Jack Rose Cocktail, A Night In Old Mandalay, Avalon"
 },
 {
   "strDrink": "Lone Tree Cocktail",
   "questions": "Sweet Vermouth-3/4 oz , Gin-1 1/2 oz , : Stir ingredients with ice, strain into a cocktail glass, and serve.",
   "strInstructions": "Stir ingredients with ice, strain into a cocktail glass, and serve.",
   "strIngredients": "Sweet Vermouth-3/4 oz , Gin-1 1/2 oz ,",
   "incorrect": "Gin And Tonic, Cherry Rum, Damned if you do"
 },
 {
   "strDrink": "Lone Tree Cooler",
   "questions": "Carbonated water, Gin, Dry Vermouth, Powdered Sugar, Orange Spiral, Lemon Peel: Stir powdered sugar and 2 oz. carbonated water in a collins glass. Fill glass with ice, add gin and vermouth, and stir. Fill with carbonated water and stir again. Add the twist of lemon peel and the orange spiral so that the end dangles over rim of glass.",
   "strInstructions": "Stir powdered sugar and 2 oz. carbonated water in a collins glass. Fill glass with ice, add gin and vermouth, and stir. Fill with carbonated water and stir again. Add the twist of lemon peel and the orange spiral so that the end dangles over rim of glass.",
   "strIngredients": "Carbonated water\n , Gin\n , Dry Vermouth-\n , Powdered Sugar-\n , Orange Spiral-\n , Lemon Peel",
   "incorrect": "Fruit Cooler, Americano, A. J."
 },
 {
   "strDrink": "Long Island Iced Tea",
   "questions": "Vodka-1/2 oz , Tequila-1/2 oz , Light Rum-1/2 oz , Gin-1/2 oz , Coca-Cola-1 dash , Twist of Lemon Peel : Mix all contents in a highball glass and sitr gently. Add dash of Coca-Cola for the coloring and garnish with lemon or lime twist.",
   "strInstructions": "Mix all contents in a highball glass and sitr gently. Add dash of Coca-Cola for the coloring and garnish with lemon or lime twist.",
   "strIngredients": "Vodka-1/2 oz , Tequila-1/2 oz , Light Rum-1/2 oz , Gin-1/2 oz , Coca-Cola-1 dash , Twist of Lemon Peel",
   "incorrect": "Snowball, White Lady, Midnight Cowboy"
 },
 {
   "strDrink": "Long Island Tea",
   "questions": "Vodka-1/2 oz , Light Rum-1/2 oz , Gin-1/2 oz , Tequila-1/2 oz , Lemon-Juice of 1/2 , Coca-Cola-1 splash : Combine all ingredients (except cola) and pour over ice in a highball glass. Add the splash of cola for color. Decorate with a slice of lemon and serve.",
   "strInstructions": "Combine all ingredients (except cola) and pour over ice in a highball glass. Add the splash of cola for color. Decorate with a slice of lemon and serve.",
   "strIngredients": "Vodka-1/2 oz , Light Rum-1/2 oz , Gin-1/2 oz , Tequila-1/2 oz , Lemon-Juice of 1/2 , Coca-Cola-1 splash",
   "incorrect": "Boomerang, Absolut limousine, Artillery"
 },
 {
   "strDrink": "Long Vodka",
   "questions": "Vodka-1 2/3 oz , Lime, Angostura Bitters-4 dashes , Tonic Water-1 dl Schweppes , Ice-4 : Shake a tall glass with ice cubes and Angostura, coating the inside of the glass. Por the vodka onto this, add 1 slice of lime and squeeze juice out of remainder, mix with tonic, stir and voila you have a Long Vodka",
   "strInstructions": "Shake a tall glass with ice cubes and Angostura, coating the inside of the glass. Por the vodka onto this, add 1 slice of lime and squeeze juice out of remainder, mix with tonic, stir and voila you have a Long Vodka",
   "strIngredients": "Vodka-1 2/3 oz , Lime, Angostura Bitters-4 dashes , Tonic Water-1 dl Schweppes , Ice-4",
   "incorrect": "Absolut Sex, Sweet Tooth, Auburn Headbanger"
 },
 {
   "strDrink": "Lord And Lady",
   "questions": "Dark Rum-1 1/2 oz , Tia Maria-1/2 oz , : Pour the rum and Tia Maria into an old-fashioned glass almost filled with ice cubes. Stir well.",
   "strInstructions": "Pour the rum and Tia Maria into an old-fashioned glass almost filled with ice cubes. Stir well.",
   "strIngredients": "Dark Rum-1 1/2 oz , Tia Maria-1/2 oz ,",
   "incorrect": "Jam Donut, Grim Reaper, Arctic Fish"
 },
 {
   "strDrink": "Lunch Box",
   "questions": "Beer-3/4 bottle , Amaretto-1 shot , Orange Juice-1 oz : Fill a pint glass almost full with beer. Then fill the rest with orange juice (careful not to fill it to the top). Then take the shot of Amaretto and drop it in.",
   "strInstructions": "Fill a pint glass almost full with beer. Then fill the rest with orange juice (careful not to fill it to the top). Then take the shot of Amaretto and drop it in.",
   "strIngredients": "Beer-3/4 bottle , Amaretto-1 shot , Orange Juice-1 oz",
   "incorrect": "Mulled Wine, Mimosa, Long Island Tea"
 },
 {
   "strDrink": "Mai Tai",
   "questions": "Light Rum-1 oz , Orgeat Syrup-1/2 oz , Triple Sec-1/2 oz , Sweet and Sour-1 1/2 oz , Cherry-1 : Shake all ingredients with ice. Strain into glass. Garnish and serve with straw.",
   "strInstructions": "Shake all ingredients with ice. Strain into glass. Garnish and serve with straw.",
   "strIngredients": "Light Rum-1 oz , Orgeat Syrup-1/2 oz , Triple Sec-1/2 oz , Sweet and Sour-1 1/2 oz , Cherry-1",
   "incorrect": "Brave Bull Shooter, Afternoon, Caribbean Boilermaker"
 },
 {
   "strDrink": "Malibu Twister",
   "questions": "Malibu Rum-2 parts , Tropicana-2 parts , Cranberry Juice-1 part : Add rum & trister then, add cranberry jucie,stir",
   "strInstructions": "Add rum & trister then, add cranberry jucie,stir",
   "strIngredients": "Malibu Rum-2 parts , Tropicana-2 parts , Cranberry Juice-1 part",
   "incorrect": "Caribbean Boilermaker, Mulled Wine, Mimosa"
 },
 {
   "strDrink": "Mango Orange Smoothie",
   "questions": "Mango-1, Orange-2 : Throw everything into a blender and liquify.",
   "strInstructions": "Throw everything into a blender and liquify.",
   "strIngredients": "Mango-1, Orange-2",
   "incorrect": "Chicago Fizz, Brave Bull Shooter, Afternoon"
 },
 {
   "strDrink": "Manhattan",
   "questions": "Sweet Vermouth-3/4 oz , Bourbon-2 1/2 oz Blended , Angostura Bitters-dash , Ice-2 or 3 , Maraschino Cherry-1, Twist of Orange Peel : Stired over ice, strained into a chilled glass, garnished, and served up.",
   "strInstructions": "Stired over ice, strained into a chilled glass, garnished, and served up.",
   "strIngredients": "Sweet Vermouth-3/4 oz , Bourbon-2 1/2 oz Blended , Angostura Bitters-dash , Ice-2 or 3 , Maraschino Cherry-1, Twist of Orange Peel",
   "incorrect": "1-900-FUK-MEUP, Bobby Burns Cocktail, Kill the cold Smoothie"
 },
 {
   "strDrink": "Margarita",
   "questions": "Tequila-1 1/2 oz , Triple Sec-1/2 oz , Lime Juice-1 oz , Salt , : Rub the rim of the glass with the lime slice to make the salt stick to it. Take care to moisten only the outer rim and sprinkle the salt on it. The salt should present to the lips of the imbiber and never mix into the cocktail. Shake the other ingredients with ice, then carefully pour into the glass.",
   "strInstructions": "Rub the rim of the glass with the lime slice to make the salt stick to it. Take care to moisten only the outer rim and sprinkle the salt on it. The salt should present to the lips of the imbiber and never mix into the cocktail. Shake the other ingredients with ice, then carefully pour into the glass.",
   "strIngredients": "Tequila-1 1/2 oz , Triple Sec-1/2 oz , Lime Juice-1 oz , Salt ,",
   "incorrect": "Port Wine Cocktail, Thai Iced Tea, Banana Strawberry Shake Daiquiri-type"
 },
 {
   "strDrink": "Martinez Cocktail",
   "questions": "Gin-1 oz , Dry Vermouth-1 oz , Triple Sec-1/4 tsp , Orange Bitters-1 dash , Cherry-1 : Stir all ingredients (except cherry) with ice and strain into a cocktail glass. Top with the cherry and serve.",
   "strInstructions": "Stir all ingredients (except cherry) with ice and strain into a cocktail glass. Top with the cherry and serve.",
   "strIngredients": "Gin-1 oz , Dry Vermouth-1 oz , Triple Sec-1/4 tsp , Orange Bitters-1 dash , Cherry-1",
   "incorrect": "Cuba Libra, Iced Coffee, Martinez Cocktail"
 },
 {
   "strDrink": "Martini",
   "questions": "Gin-1 2/3 oz , Dry Vermouth-1/3 oz , Olive-1 , : Straight: Pour all ingredients into mixing glass with ice cubes. Stir well. Strain in chilled martini cocktail glass. Squeeze oil from lemon peel onto the drink, or garnish with olive.",
   "strInstructions": "Straight: Pour all ingredients into mixing glass with ice cubes. Stir well. Strain in chilled martini cocktail glass. Squeeze oil from lemon peel onto the drink, or garnish with olive.",
   "strIngredients": "Gin-1 2/3 oz , Dry Vermouth-1/3 oz , Olive-1 ,",
   "incorrect": "Amaretto Sweet & Sour, Hemingway Special, Sidecar"
 },
 {
   "strDrink": "Mary Pickford",
   "questions": "Light Rum-1 1/2 oz , Pineapple Juice-1 oz , Maraschino Liqueur-1/2 tsp , Grenadine-1/2 tsp , Maraschino Cherry-1 : Shake and strain into a chilled large cocktail glass",
   "strInstructions": "Shake and strain into a chilled large cocktail glass",
   "strIngredients": "Light Rum-1 1/2 oz , Pineapple Juice-1 oz , Maraschino Liqueur-1/2 tsp , Grenadine-1/2 tsp , Maraschino Cherry-1",
   "incorrect": "Banana Milk Shake, Orange Oasis, Bramble"
 },
 {
   "strDrink": "Masala Chai",
   "questions": "Water-2 cups , Tea-3-4 tsp , Ginger-1 chunk dried , Cardamom-3-4 crushed , Cloves-3, Cinnamon-1 piece , Black Pepper-1-2 whole , Sugar to taste, Milk , : Bring 2 cups of water to boil. Add all the ingredients and boil again for about 15 seconds. Let stand for a minute. Warm milk in a pot. Filter tea into cups. Add milk and sugar. That's IT.",
   "strInstructions": "Bring 2 cups of water to boil. Add all the ingredients and boil again for about 15 seconds. Let stand for a minute. Warm milk in a pot. Filter tea into cups. Add milk and sugar. That's IT.",
   "strIngredients": "Water-2 cups , Tea-3-4 tsp , Ginger-1 chunk dried , Cardamom-3-4 crushed , Cloves-3, Cinnamon-1 piece , Black Pepper-1-2 whole , Sugar to taste\n , Milk ,",
   "incorrect": "Alexander, Belgian Blue, Rum Cobbler"
 },
 {
   "strDrink": "Melya",
   "questions": "Espresso, Honey-Unsweetened , Cocoa Powder : Brew espresso. In a coffee mug, place 1 teaspoon of unsweetened powdered cocoa, then cover a teaspoon with honey and drizzle it into the cup. Stir while the coffee brews, this is the fun part. The cocoa seems to coat the honey without mixing, so you get a dusty, sticky mass that looks as though it will never mix. Then all at once, presto! It looks like dark chocolate sauce. Pour hot espresso over the honey, Stiring to dissolve. Serve with cream.",
   "strInstructions": "Brew espresso. In a coffee mug, place 1 teaspoon of unsweetened powdered cocoa, then cover a teaspoon with honey and drizzle it into the cup. Stir while the coffee brews, this is the fun part. The cocoa seems to coat the honey without mixing, so you get a dusty, sticky mass that looks as though it will never mix. Then all at once, presto! It looks like dark chocolate sauce. Pour hot espresso over the honey, Stiring to dissolve. Serve with cream.",
   "strIngredients": "Espresso\n , Honey-Unsweetened , Cocoa Powder",
   "incorrect": "Mary Pickford, Sazerac, AT&T"
 },
 {
   "strDrink": "Miami Vice",
   "questions": "151 Proof Rum-5 oz Bacardi , Pina Colada Mix-frozen , Daiquiri Mix-frozen : First: Mix pina colada with 2.5 oz. of rum with ice(set aside). Second: Mix daiquiri with 2.5 oz. of rum with ice. Third: While frozen, add pina colda mix then daiquiri mix in glass (Making sure they do not get mixed together).",
   "strInstructions": "First: Mix pina colada with 2.5 oz. of rum with ice(set aside). Second: Mix daiquiri with 2.5 oz. of rum with ice. Third: While frozen, add pina colda mix then daiquiri mix in glass (Making sure they do not get mixed together).",
   "strIngredients": "151 Proof Rum-5 oz Bacardi , Pina Colada Mix-frozen , Daiquiri Mix-frozen",
   "incorrect": "French Martini, Lassi - A South Indian Drink, Afternoon"
 },
 {
   "strDrink": "Microwave Hot Cocoa",
   "questions": "Sugar-5 tblsp , Cocoa powder-3 tblsp , Salt-1 dash , Water-3 tblsp hot , Milk-2 cups , Vanilla extract-1/4 tsp : Combine sugar, cocoa, salt and hot water in 1-quart micro-proof measuring cup (or coffee mug). Microwave at HIGH (100%) for 1 to 1 1/2 minutes or until boiling. Add milk, sitr and microwave an additonal 1 1/2 to 2 minutes or until hot. Stir in vanilla, blend well.",
   "strInstructions": "Combine sugar, cocoa, salt and hot water in 1-quart micro-proof measuring cup (or coffee mug). Microwave at HIGH (100%) for 1 to 1 1/2 minutes or until boiling. Add milk, sitr and microwave an additonal 1 1/2 to 2 minutes or until hot. Stir in vanilla, blend well.",
   "strIngredients": "Sugar-5 tblsp , Cocoa powder-3 tblsp , Salt-1 dash , Water-3 tblsp hot , Milk-2 cups , Vanilla extract-1/4 tsp",
   "incorrect": "Pisco Sour, Sherry Eggnog, Irish Coffee"
 },
 {
   "strDrink": "Midnight Cowboy",
   "questions": "Bourbon-2 oz , Dark Rum-1 oz , Heavy Cream-1/2 oz : In a shaker half-filled with ice cubes, combine all of the ingredients. Shake well. Strain into a cocktail glass.",
   "strInstructions": "In a shaker half-filled with ice cubes, combine all of the ingredients. Shake well. Strain into a cocktail glass.",
   "strIngredients": "Bourbon-2 oz , Dark Rum-1 oz , Heavy Cream-1/2 oz",
   "incorrect": "Stone Sour, Sunny Holiday Punch, Sweet Bananas"
 },
 {
   "strDrink": "Midnight Manx",
   "questions": "Kahlua-1 oz , Bailey's Irish Cream-1 oz , Goldschlager-dash , Heavy Cream-2 oz , Coffee-2 oz Hazlenut : Fill a mixer with ice and add Baileys, Kahlua, Goldshlager, and cream. Shake for 5 seconds and Strain into a double rocks glass filled with ice. Add chilled coffee Stir and enjoy!",
   "strInstructions": "Fill a mixer with ice and add Baileys, Kahlua, Goldshlager, and cream. Shake for 5 seconds and Strain into a double rocks glass filled with ice. Add chilled coffee Stir and enjoy!",
   "strIngredients": "Kahlua-1 oz , Bailey's Irish Cream-1 oz , Goldschlager-dash , Heavy Cream-2 oz , Coffee-2 oz Hazlenut",
   "incorrect": "John Collins, Sloe Gin Cocktail, Apple Berry Smoothie"
 },
 {
   "strDrink": "Midnight Mint",
   "questions": "Bailey's Irish Cream-1 oz , White Creme de Menthe-3/4 oz , Cream-3/4 oz double : If available, rim cocktail (Martini) glass with sugar syrup then dip into chocolate flakes or powder. Add ingredients into shaker with ice. Shake well then strain into cocktail glass.",
   "strInstructions": "If available, rim cocktail (Martini) glass with sugar syrup then dip into chocolate flakes or powder. Add ingredients into shaker with ice. Shake well then strain into cocktail glass.",
   "strIngredients": "Bailey's Irish Cream-1 oz , White Creme de Menthe-3/4 oz , Cream-3/4 oz double",
   "incorrect": "Victor, Apricot punch, Absolut Summertime"
 },
 {
   "strDrink": "Mimosa",
   "questions": "Champagne-Chilled , Orange Juice-2 oz : Ensure both ingredients are well chilled, then mix into the glass. Serve cold.",
   "strInstructions": "Ensure both ingredients are well chilled, then mix into the glass. Serve cold.",
   "strIngredients": "Champagne-Chilled , Orange Juice-2 oz",
   "incorrect": "Baby Guinness, Kool First Aid, Tequila Fizz"
 },
 {
   "strDrink": "Mississippi Planters Punch",
   "questions": "Brandy-1 oz , Light Rum-1/2 oz , Bourbon-1/2 oz , Lemon-Juice of 1/2 , Powdered Sugar-1 tblsp , Carbonated Water: Shake all ingredients (except carbonated water) with ice and strain into a collins glass over ice cubes. Fill with carbonated water, stir, and serve.",
   "strInstructions": "Shake all ingredients (except carbonated water) with ice and strain into a collins glass over ice cubes. Fill with carbonated water, stir, and serve.",
   "strIngredients": "Brandy-1 oz , Light Rum-1/2 oz , Bourbon-1/2 oz , Lemon-Juice of 1/2 , Powdered Sugar-1 tblsp , Carbonated Water",
   "incorrect": "Berry Deadly, Jamaican Coffee, Affair"
 },
 {
   "strDrink": "Mocha-Berry",
   "questions": "Coffee-6 oz , Chambord Raspberry Liqueur-2 oz , Cocoa powder-2 tblsp , Whipped Cream: pour 6 oz. of coffee in a mug or Irish coffee cup. add coca mix and chambord, mix well and top off with whipped cream.",
   "strInstructions": "pour 6 oz. of coffee in a mug or Irish coffee cup. add coca mix and chambord, mix well and top off with whipped cream.",
   "strIngredients": "Coffee-6 oz , Chambord Raspberry Liqueur-2 oz , Cocoa powder-2 tblsp , Whipped Cream\n  ,",
   "incorrect": "Whisky Mac, Gagliardo, Whitecap Margarita"
 },
 {
   "strDrink": "Mojito",
   "questions": "Light Rum-2-3 oz , Lime-Juice of 1 , Sugar-2 tsp , Mint, Soda Water : Muddle mint leaves with sugar and lime juice. Add a splash of soda water and fill the glass with cracked ice. Pour the rum and top with soda water. Garnish and serve with straw.",
   "strInstructions": "Muddle mint leaves with sugar and lime juice. Add a splash of soda water and fill the glass with cracked ice. Pour the rum and top with soda water. Garnish and serve with straw.",
   "strIngredients": "Light Rum-2-3 oz , Lime-Juice of 1 , Sugar-2 tsp , Mint, Soda Water",
   "incorrect": "Midnight Manx, Orange Crush, Kentucky B And B"
 },
 {
   "strDrink": "Mojito #3",
   "questions": "Mint-1/2 handful , Lemon Juice-1 oz , Dark Rum-1/8 L Jamaican , Club Soda-1/8 L , Angostura Bitters-8 drops : Put mint with lemon juice in a glas, mash the mint with a spoon, ice, rum & fill up with club soda. Top it with Angostura.",
   "strInstructions": "Put mint with lemon juice in a glas, mash the mint with a spoon, ice, rum & fill up with club soda. Top it with Angostura.",
   "strIngredients": "Mint-1/2 handful , Lemon Juice-1 oz , Dark Rum-1/8 L Jamaican , Club Soda-1/8 L , Angostura Bitters-8 drops",
   "incorrect": "Quick-sand, Rum Old-fashioned, Bourbon Sling"
 },
 {
   "strDrink": "Monkey Gland",
   "questions": "Gin-2 oz , Benedictine-1 tsp , Orange Juice-1/2 oz , Grenadine-1 tsp : Shake well over ice cubes in a shaker, strain into a chilled cocktail glass.",
   "strInstructions": "Shake well over ice cubes in a shaker, strain into a chilled cocktail glass.",
   "strIngredients": "Gin-2 oz , Benedictine-1 tsp , Orange Juice-1/2 oz , Grenadine-1 tsp",
   "incorrect": "Sea breeze, Scotch Sour, Mocha-Berry"
 },
 {
   "strDrink": "Monkey Wrench",
   "questions": "Light Rum-1 1/2 oz , Grapefruit Juice-3 oz , Bitters-1 dash : Pour all of the ingredients into an old-fashioned glass almost filled with ice cubes. Stir well.",
   "strInstructions": "Pour all of the ingredients into an old-fashioned glass almost filled with ice cubes. Stir well.",
   "strIngredients": "Light Rum-1 1/2 oz , Grapefruit Juice-3 oz , Bitters-1 dash",
   "incorrect": "Barracuda, Banana Strawberry Shake Daiquiri-type, Lunch Box"
 },
 {
   "strDrink": "Moranguito",
   "questions": "Absinthe, Tequila, Grenadine-43470 , : first you put rhe absinthe, then put tequila, then put the Granadine syrup.",
   "strInstructions": "first you put rhe absinthe, then put tequila, then put the Granadine syrup.",
   "strIngredients": "Absinthe, Tequila, Grenadine-43470 ,",
   "incorrect": "Amaretto Liqueur, Amaretto Mist, Ruby Tuesday"
 },
 {
   "strDrink": "Moscow Mule",
   "questions": "Vodka-2 oz , Lime Juice-2 oz , Ginger Ale-8 oz : Combine vodka and ginger beer in a highball glass filled with ice. Add lime juice. Stir gently. Garnish.",
   "strInstructions": "Combine vodka and ginger beer in a highball glass filled with ice. Add lime juice. Stir gently. Garnish.",
   "strIngredients": "Vodka-2 oz , Lime Juice-2 oz , Ginger Ale-8 oz",
   "incorrect": "New York Sour, Gideon's Green Dinosaur, Valencia  Cocktail"
 },
 {
   "strDrink": "Mother's Milk",
   "questions": "Goldschlager-1 oz , Butterscotch Schnapps-1 oz , Milk-1 oz : Shake over ice, strain. Serves two.",
   "strInstructions": "Shake over ice, strain. Serves two.",
   "strIngredients": "Goldschlager-1 oz , Butterscotch Schnapps-1 oz , Milk-1 oz",
   "incorrect": "Negroni, Tequila Sour, Radler"
 },
 {
   "strDrink": "Mudslinger",
   "questions": "Southern Comfort-750 ml , Orange Juice-1 L , Pepsi Cola-750 ml : Add all contents to a large jug or punch bowl. Stir well!",
   "strInstructions": "Add all contents to a large jug or punch bowl. Stir well!",
   "strIngredients": "Southern Comfort-750 ml , Orange Juice-1 L , Pepsi Cola-750 ml",
   "incorrect": "Grizzly Bear, Cuba Libre, Gin Daisy"
 },
 {
   "strDrink": "Mulled Wine",
   "questions": "Water-3 cups , Sugar-1 cup , Cloves-12, Cinnamon-2, Lemon Peel-1, Red wine-750 ml , Brandy-1/4 cup : Simmer 3 cups water with, sugar, cloves, cinnamon sticks, and lemon peel in a stainless steel pot for 10 minutes. Add wine heat to a \"coffee temperature\" (DO NOT BOIL) then add the brandy.",
   "strInstructions": "Simmer 3 cups water with, sugar, cloves, cinnamon sticks, and lemon peel in a stainless steel pot for 10 minutes. Add wine heat to a \"coffee temperature\" (DO NOT BOIL) then add the brandy.",
   "strIngredients": "Water-3 cups , Sugar-1 cup , Cloves-12, Cinnamon-2, Lemon Peel-1, Red wine-750 ml , Brandy-1/4 cup",
   "incorrect": "Blue Mountain, San Francisco, Texas Sling"
 },
 {
   "strDrink": "National Aquarium",
   "questions": "Rum-1/2 oz , Vodka-1/2 oz , Gin-1/2 oz , Blue Curacao-1/2 oz , Sour Mix-2 oz , Lemon-Lime Soda-1 splash : Pour all ingredients into a shaker of ice. Shake well. Serve on the rocks.",
   "strInstructions": "Pour all ingredients into a shaker of ice. Shake well. Serve on the rocks.",
   "strIngredients": "Rum-1/2 oz , Vodka-1/2 oz , Gin-1/2 oz , Blue Curacao-1/2 oz , Sour Mix-2 oz , Lemon-Lime Soda-1 splash",
   "incorrect": "Victory Collins, Abbey Martini, California Root Beer"
 },
 {
   "strDrink": "Negroni",
   "questions": "Gin-1 oz , Campari-1 oz , Sweet Vermouth-1 oz : Stir into glass over ice, garnish and serve.",
   "strInstructions": "Stir into glass over ice, garnish and serve.",
   "strIngredients": "Gin-1 oz , Campari-1 oz , Sweet Vermouth-1 oz",
   "incorrect": "Manhattan, Karsk, Caribbean Orange Liqueur"
 },
 {
   "strDrink": "New York Lemonade",
   "questions": "Absolut Citron-2 oz , Grand Marnier-1 oz , Lemon Juice-2 oz sweetened , Club Soda-1 oz : Serve in a chilled cocktail glass. Lemon and sugar the rim. Stir and Strain.",
   "strInstructions": "Serve in a chilled cocktail glass. Lemon and sugar the rim. Stir and Strain.",
   "strIngredients": "Absolut Citron-2 oz , Grand Marnier-1 oz , Lemon Juice-2 oz sweetened , Club Soda-1 oz",
   "incorrect": "Lemon Drop, Jello shots, Adam Bomb"
 },
 {
   "strDrink": "New York Sour",
   "questions": "Blended Whiskey-2 oz , Lemon-Juice of 1/2 , Sugar-1 tsp , Red wine- (Claret), Lemon, Cherry: Shake blended whiskey, juice of lemon, and powdered sugar with ice and strain into a whiskey sour glass. Float claret on top. Decorate with the half-slice of lemon and the cherry and serve.",
   "strInstructions": "Shake blended whiskey, juice of lemon, and powdered sugar with ice and strain into a whiskey sour glass. Float claret on top. Decorate with the half-slice of lemon and the cherry and serve.",
   "strIngredients": "Blended Whiskey-2 oz , Lemon-Juice of 1/2 , Sugar-1 tsp , Red wine- (Claret)\n , Lemon\n , Cherry",
   "incorrect": "Wine Cooler, Spanish Chocolate, Banana Cantaloupe Smoothie"
 },
 {
   "strDrink": "Nuked Hot Chocolate",
   "questions": "Cocoa powder-2 tsp , Sugar-1 tsp , Vanilla extract-1/2 tsp , Milk-12 oz : Mix with a bit of milk (1 oz or so) in coffee mug. Nuke mug for about 30-50 seconds. Stir until the heated cocoa dissolves. Fill mug with milk. Nuke for 1-2 minutes, depending on wattage and preferences as to burnt mouth parts.",
   "strInstructions": "Mix with a bit of milk (1 oz or so) in coffee mug. Nuke mug for about 30-50 seconds. Stir until the heated cocoa dissolves. Fill mug with milk. Nuke for 1-2 minutes, depending on wattage and preferences as to burnt mouth parts.",
   "strIngredients": "Cocoa powder-2 tsp , Sugar-1 tsp , Vanilla extract-1/2 tsp , Milk-12 oz",
   "incorrect": "Gin Rickey, 252, A midsummernight dream"
 },
 {
   "strDrink": "Nutty Irishman",
   "questions": "Bailey's Irish Cream-1 part , Frangelico-1 part , Milk-1 part : Serve over ice",
   "strInstructions": "Serve over ice",
   "strIngredients": "Bailey's Irish Cream-1 part , Frangelico-1 part , Milk-1 part",
   "incorrect": "Orange Scented Hot Chocolate, Alaska Cocktail, Coke and Drops"
 },
 {
   "strDrink": "Old Fashioned",
   "questions": "Bourbon- 2/3 oz, Angostura Bitters-2 dashes, Sugar-1 Cube, Water-dash: Place sugar cube in old fashioned glass and saturate with bitters, add a dash of plain water. Muddle until dissolved. Fill the glass with ice cubes and add whiskey. Garnish with orange twist, and a cocktail cherry.",
   "strInstructions": "Place sugar cube in old fashioned glass and saturate with bitters, add a dash of plain water. Muddle until dissolved.\n \n Fill the glass with ice cubes and add whiskey.\n \n \n \n Garnish with orange twist, and a cocktail cherry.",
   "strIngredients": "Bourbon-4.1 2/3 oz, Angostura Bitters-2 dashes, Sugar-1 Cube, Water-dash ,",
   "incorrect": "Chocolate Milk, Brandy Flip, Kiwi Lemon"
 },
 {
   "strDrink": "Orange Crush",
   "questions": "Vodka-1 oz , Triple Sec-1 oz , Orange Juice-1 oz : Add all ingredients to tumbler-Pour as shot",
   "strInstructions": "Add all ingredients to tumbler-Pour as shot",
   "strIngredients": "Vodka-1 oz , Triple Sec-1 oz , Orange Juice-1 oz",
   "incorrect": "Zinger, Sweet Sangria, Pina Colada"
 },
 {
   "strDrink": "Orange Oasis",
   "questions": "Cherry Brandy-1/2 oz , Gin-1 1/2 oz , Orange Juice-4 oz , Ginger Ale: Shake brandy, gin, and orange juice with ice and strain into a highball glass over ice cubes. Fill with ginger Ale, stir, and serve.",
   "strInstructions": "Shake brandy, gin, and orange juice with ice and strain into a highball glass over ice cubes. Fill with ginger Ale, stir, and serve.",
   "strIngredients": "Cherry Brandy-1/2 oz , Gin-1 1/2 oz , Orange Juice-4 oz , Ginger Ale\n  ,",
   "incorrect": "Fruit Cooler, Lassi - Mango, Japanese Fizz"
 },
 {
   "strDrink": "Orange Push-up",
   "questions": "SpIced Rum-1.5 oz , Grenadine-0.5 oz , Orange Juice-4 oz , Sour Mix-1 splash : Combine liquors in a blender. Add a half scoop of ice and blend. Garnish with an orange and cherry flag. So good it will melt in your mouth!!!",
   "strInstructions": "Combine liquors in a blender. Add a half scoop of ice and blend. Garnish with an orange and cherry flag. So good it will melt in your mouth!!!",
   "strIngredients": "SpIced Rum-1.5 oz , Grenadine-0.5 oz , Orange Juice-4 oz , Sour Mix-1 splash",
   "incorrect": "Sweet Tooth, Apple Cider Punch #1, Gluehwein"
 },
 {
   "strDrink": "Orange Scented Hot Chocolate",
   "questions": "Milk-2 cups , Chocolate-4 oz chopped Bittersweet or semi-sweet , Orange Peel-3 2-inch strips , Espresso-1/2 tsp instant , Nutmeg-1/8 tsp ground : Combine all ingredients in heavy medium saucepan. Stir over low heat until chocolate melts. Increase heat and bring just to a boil, Stiring often. Remove from heat and whisk untily frothy. Return to heat and bring to boil again. Remove from heat, whisk until frothy. Repeat heating and whisking once again. Discard orange peel. (Can be prepared 2 hours ahead. Let stand at room temperature. Before serving, bring just to boil, remove from heat and whisk until frothy.) Pour hot chocolate into coffee mugs. Makes 2 servings.",
   "strInstructions": "Combine all ingredients in heavy medium saucepan. Stir over low heat until chocolate melts. Increase heat and bring just to a boil, Stiring often. Remove from heat and whisk untily frothy. Return to heat and bring to boil again. Remove from heat, whisk until frothy. Repeat heating and whisking once again. Discard orange peel. (Can be prepared 2 hours ahead. Let stand at room temperature. Before serving, bring just to boil, remove from heat and whisk until frothy.) Pour hot chocolate into coffee mugs. Makes 2 servings.",
   "strIngredients": "Milk-2 cups , Chocolate-4 oz chopped Bittersweet or semi-sweet , Orange Peel-3 2-inch strips , Espresso-1/2 tsp instant , Nutmeg-1/8 tsp ground",
   "incorrect": "Foxy Lady, Shanghai Cocktail, Bellini"
 },
 {
   "strDrink": "Orange Whip",
   "questions": "Orange Juice-4 oz , Rum-1 oz , Vodka-1 oz , Cream-1 package , Ice-Over : Pour ingredients over ice and stir.",
   "strInstructions": "Pour ingredients over ice and stir.",
   "strIngredients": "Orange Juice-4 oz , Rum-1 oz , Vodka-1 oz , Cream-1 package , Ice-Over",
   "incorrect": "Addison, Nuked Hot Chocolate, Monkey Wrench"
 },
 {
   "strDrink": "Orangeade",
   "questions": "Lemon Juice-1 2/3 oz , Orange Juice-11 2/3 oz , Sugar Syrup-2-1 oz , Soda Water: Place some ice cubes in a large tumbler or highball glass, add lemon juice, orange juice, sugar syrup, and stir well. Top up with cold soda water, serve with a drinking straw.",
   "strInstructions": "Place some ice cubes in a large tumbler or highball glass, add lemon juice, orange juice, sugar syrup, and stir well. Top up with cold soda water, serve with a drinking straw.",
   "strIngredients": "Lemon Juice-1 2/3 oz , Orange Juice-11 2/3 oz , Sugar Syrup-2-1 oz , Soda Water\n  ,",
   "incorrect": "Dirty Martini, Thriller, Artillery Punch"
 },
 {
   "strDrink": "Oreo Mudslide",
   "questions": "Vodka-1 oz , Kahlua-1 oz , Bailey's Irish Cream-1 oz , Vanilla Ice-Cream-2 scoops , Oreo cookie-1 : Blend Vodka, Kahlua, Bailey's, ice-cream and the Oreo well in a blender. Pour into a large frosted glass. Garnish with whipped cream and a cherry.",
   "strInstructions": "Blend Vodka, Kahlua, Bailey's, ice-cream and the Oreo well in a blender. Pour into a large frosted glass. Garnish with whipped cream and a cherry.",
   "strIngredients": "Vodka-1 oz , Kahlua-1 oz , Bailey's Irish Cream-1 oz , Vanilla Ice-Cream-2 scoops , Oreo cookie-1",
   "incorrect": "Army special, Blackthorn, Aviation"
 },
 {
   "strDrink": "Orgasm",
   "questions": "Creme de Cacao-1/2 oz white , Amaretto-1/2 oz , Triple Sec-1/2 oz , Vodka-1/2 oz , Light Cream-1 oz : Shake all ingredients with ice, strain into a chilled cocktail glass, and serve.",
   "strInstructions": "Shake all ingredients with ice, strain into a chilled cocktail glass, and serve.",
   "strIngredients": "Creme de Cacao-1/2 oz white , Amaretto-1/2 oz , Triple Sec-1/2 oz , Vodka-1/2 oz , Light Cream-1 oz",
   "incorrect": "Castillian Hot Chocolate, Scottish Highland Liqueur, Holloween Punch"
 },
 {
   "strDrink": "Owen's Grandmother's Revenge",
   "questions": "Whiskey-12 oz , Beer-12 oz , Lemonade-12 oz frozen , Ice-1 cup crushed : Add ingredients and mix in blender.",
   "strInstructions": "Add ingredients and mix in blender.",
   "strIngredients": "Whiskey-12 oz , Beer-12 oz , Lemonade-12 oz frozen , Ice-1 cup crushed",
   "incorrect": "Pink Penocha, A1, Fruit Shake"
 },
 {
   "strDrink": "Paradise",
   "questions": "Gin-7 parts, Apricot Brandy-4 parts, Orange Juice-3 parts : Shake together over ice. Strain into cocktail glass and serve chilled.",
   "strInstructions": "Shake together over ice. Strain into cocktail glass and serve chilled.",
   "strIngredients": "Gin-7 parts, Apricot Brandy-4 parts, Orange Juice-3 parts",
   "incorrect": "Blue Lagoon, Limona Corona, California Lemonade"
 },
 {
   "strDrink": "Pina Colada",
   "questions": "Light Rum-3 oz , Coconut milk-3 tblsp , Pineapple-3 tblsp : Mix with crushed ice in blender until smooth. Pour into chilled glass, garnish and serve.",
   "strInstructions": "Mix with crushed ice in blender until smooth. Pour into chilled glass, garnish and serve.",
   "strIngredients": "Light Rum-3 oz , Coconut milk-3 tblsp , Pineapple-3 tblsp",
   "incorrect": "Flying Scotchman, Radioactive Long Island Iced Tea, Queen Bee"
 },
 {
   "strDrink": "Pineapple GingerAle Smoothie",
   "questions": "Ginger-1/4 inch , Pineapple-43467 : Throw everything into a blender and liquify.",
   "strInstructions": "Throw everything into a blender and liquify.",
   "strIngredients": "Ginger-1/4 inch , Pineapple-43467",
   "incorrect": "Autodafa, Rail Splitter, Mojito #3"
 },
 {
   "strDrink": "Pink Gin",
   "questions": "Bitters-3 dashes , Gin-2 oz , : Pour the bitters into a wine glass. Swirl the glass to coat the inside with the bitters, shake out the excess. Pour the gin into the glass. Do not add ice.",
   "strInstructions": "Pour the bitters into a wine glass. Swirl the glass to coat the inside with the bitters, shake out the excess. Pour the gin into the glass. Do not add ice.",
   "strIngredients": "Bitters-3 dashes , Gin-2 oz ,",
   "incorrect": "Tommy's Margarita, ACID, Arthur Tompkins"
 },
 {
   "strDrink": "Pink Lady",
   "questions": "Gin-1 1/2 oz , Grenadine-1 tsp , Light Cream-1 tsp , Egg White-1 , : Shake all ingredients with ice, strain into a cocktail glass, and serve.",
   "strInstructions": "Shake all ingredients with ice, strain into a cocktail glass, and serve.",
   "strIngredients": "Gin-1 1/2 oz , Grenadine-1 tsp , Light Cream-1 tsp , Egg White-1 ,",
   "incorrect": "Loch Lomond, Brandy Alexander, Kentucky Colonel"
 },
 {
   "strDrink": "Pink Panty Pulldowns",
   "questions": "Sprite-1 L , Pink lemonade-2 cups , Vodka-2 cups : Shake well",
   "strInstructions": "Shake well",
   "strIngredients": "Sprite-1 L , Pink lemonade-2 cups , Vodka-2 cups",
   "incorrect": "Clove Cocktail, Vermouth Cassis, Caipirissima"
 },
 {
   "strDrink": "Pink Penocha",
   "questions": "Everclear-750 ml , Vodka-1750 ml , Peach Schnapps-1750 ml , Orange Juice-1 gal , Cranberry Juice-1 gal : mix all ingredients into bowl keep iced stir frequently",
   "strInstructions": "mix all ingredients into bowl keep iced stir frequently",
   "strIngredients": "Everclear-750 ml , Vodka-1750 ml , Peach Schnapps-1750 ml , Orange Juice-1 gal , Cranberry Juice-1 gal",
   "incorrect": "Banana Milk Shake, Grand Blue, Rum Runner"
 },
 {
   "strDrink": "Pisco Sour",
   "questions": "Pisco-2 oz , Lemon Juice-1 oz , Sugar-1-2 tblsp , Ice , : Vigorously shake and strain contents in a cocktail shaker with ice cubes, then pour into glass and garnish with bitters.[1]",
   "strInstructions": "Vigorously shake and strain contents in a cocktail shaker with ice cubes, then pour into glass and garnish with bitters.[1]",
   "strIngredients": "Pisco-2 oz , Lemon Juice-1 oz , Sugar-1-2 tblsp , Ice ,",
   "incorrect": "Cafe Savoy, Jitterbug, Sidecar Cocktail"
 },
 {
   "strDrink": "Planter's Punch",
   "questions": "Dark Rum-1 part , Orgeat Syrup-1/2 part , Orange Juice-2 parts , Pineapple Juice-1 part : Pour all ingredients, except the bitters, into shaker filled with ice. Shake well. Pour into large glass, filled with ice. Add Angostura bitters, \"on top\". Garnish with cocktail cherry and Pineapple.",
   "strInstructions": "Pour all ingredients, except the bitters, into shaker filled with ice. Shake well. Pour into large glass, filled with ice. Add Angostura bitters, \"on top\". Garnish with cocktail cherry and Pineapple.",
   "strIngredients": "Dark Rum-1 part , Orgeat Syrup-1/2 part , Orange Juice-2 parts , Pineapple Juice-1 part",
   "incorrect": "Tennesee Mud, Bible Belt, Swedish Coffee"
 },
 {
   "strDrink": "Popped Cherry",
   "questions": "Vodka-2 oz , Cherry Liqueur-2 oz , Cranberry Juice-4 oz , Orange Juice-4 oz : Served over ice in a tall glass with a popped cherry (can add more popped cherries if in the mood)!",
   "strInstructions": "Served over ice in a tall glass with a popped cherry (can add more popped cherries if in the mood)!",
   "strIngredients": "Vodka-2 oz , Cherry Liqueur-2 oz , Cranberry Juice-4 oz , Orange Juice-4 oz",
   "incorrect": "Egg Nog - Healthy, Royal Gin Fizz, Smut"
 },
 {
   "strDrink": "Poppy Cocktail",
   "questions": "Gin-1 1/2 oz , Creme de Cacao-3/4 oz white , : Shake ingredients with ice, strain into a cocktail glass, and serve.",
   "strInstructions": "Shake ingredients with ice, strain into a cocktail glass, and serve.",
   "strIngredients": "Gin-1 1/2 oz , Creme de Cacao-3/4 oz white ,",
   "incorrect": "City Slicker, Brain Fart, Godfather"
 },
 {
   "strDrink": "Port And Starboard",
   "questions": "Grenadine-1 tblsp , Green Creme de Menthe-1/2 oz , : Pour carefully into a pousse-cafe glass, so that creme de menthe floats on grenadine. Serve without mixing.",
   "strInstructions": "Pour carefully into a pousse-cafe glass, so that creme de menthe floats on grenadine. Serve without mixing.",
   "strIngredients": "Grenadine-1 tblsp , Green Creme de Menthe-1/2 oz ,",
   "incorrect": "Gin Toddy, Sangria #1, French 75"
 },
 {
   "strDrink": "Port Wine Cocktail",
   "questions": "Port-2 1/2 oz , Brandy-1/2 tsp , : Stir ingredients with ice, strain into a cocktail glass, and serve.",
   "strInstructions": "Stir ingredients with ice, strain into a cocktail glass, and serve.",
   "strIngredients": "Port-2 1/2 oz , Brandy-1/2 tsp ,",
   "incorrect": "Dry Rob Roy, Zimadori Zinger, Paradise"
 },
 {
   "strDrink": "Port Wine Flip",
   "questions": "Port-1 1/2 oz , Light Cream-2 tsp , Powdered Sugar-1 tsp , Egg-1 whole , Nutmeg: Shake all ingredients (except nutmeg) with ice and strain into a whiskey sour glass. Sprinkle nutmeg on top and serve.",
   "strInstructions": "Shake all ingredients (except nutmeg) with ice and strain into a whiskey sour glass. Sprinkle nutmeg on top and serve.",
   "strIngredients": "Port-1 1/2 oz , Light Cream-2 tsp , Powdered Sugar-1 tsp , Egg-1 whole , Nutmeg-",
   "incorrect": "GG, Angel Face, Zipperhead"
 },
 {
   "strDrink": "Porto flip",
   "questions": "Brandy-3 parts, Port-9 parts, Egg Yolk-2 parts , : Shake ingredients together in a mixer with ice. Strain into glass, garnish and serve.",
   "strInstructions": "Shake ingredients together in a mixer with ice. Strain into glass, garnish and serve.",
   "strIngredients": "Brandy-3 parts, Port-9 parts, Egg Yolk-2 parts ,",
   "incorrect": "Freddy Kruger, Gin Cooler, Absolut Stress #2"
 },
 {
   "strDrink": "Pysch Vitamin Light",
   "questions": "Orange Juice-1 part , Apple Juice-1 part , Pineapple Juice-1 part , Ice: Shake with ice.",
   "strInstructions": "Shake with ice.",
   "strIngredients": "Orange Juice-1 part , Apple Juice-1 part , Pineapple Juice-1 part , Ice\n  ,",
   "incorrect": "A True Amaretto Sour, After Dinner Cocktail, White Russian"
 },
 {
   "strDrink": "Quaker's Cocktail",
   "questions": "Light Rum-3/4 oz , Brandy-3/4 oz , Lemon-Juice of 1/4 , Raspberry Syrup-2 tsp : Shake all ingredients with ice, strain into a cocktail glass, and serve.",
   "strInstructions": "Shake all ingredients with ice, strain into a cocktail glass, and serve.",
   "strIngredients": "Light Rum-3/4 oz , Brandy-3/4 oz , Lemon-Juice of 1/4 , Raspberry Syrup-2 tsp",
   "incorrect": "Strawberry Margarita, Artillery, 1-900-FUK-MEUP"
 },
 {
   "strDrink": "Quarter Deck Cocktail",
   "questions": "Light Rum-1.5, Sherry-1/3 oz Cream , Lime-Juice of 1/2 : Stir all ingredients with ice, strain into a cocktail glass, and serve.",
   "strInstructions": "Stir all ingredients with ice, strain into a cocktail glass, and serve.",
   "strIngredients": "Light Rum-1.5, Sherry-1/3 oz Cream , Lime-Juice of 1/2",
   "incorrect": "Fuzzy Asshole, Angelica Liqueur, 3-Mile Long Island Iced Tea"
 },
 {
   "strDrink": "Queen Bee",
   "questions": "Coffee Brandy-1 oz , Lime Vodka-1 1/2 oz , Sherry-1/2 oz Cream : Shake all ingredients with ice, strain into a cocktail glass, and serve.",
   "strInstructions": "Shake all ingredients with ice, strain into a cocktail glass, and serve.",
   "strIngredients": "Coffee Brandy-1 oz , Lime Vodka-1 1/2 oz , Sherry-1/2 oz Cream",
   "incorrect": "Amaretto Sunset, Irish Curdling Cow, Monkey Gland"
 },
 {
   "strDrink": "Queen Charlotte",
   "questions": "Red wine-2 oz , Grenadine-1 oz , Lemon-Lime Soda: Pour red wine and grenadine into a collins glass over ice cubes. Fill with lemon-lime soda, stir, and serve.",
   "strInstructions": "Pour red wine and grenadine into a collins glass over ice cubes. Fill with lemon-lime soda, stir, and serve.",
   "strIngredients": "Red wine-2 oz , Grenadine-1 oz , Lemon-Lime Soda-\n  ,",
   "incorrect": "Bruised Heart, Amaretto Stone Sour, Midnight Cowboy"
 },
 {
   "strDrink": "Queen Elizabeth",
   "questions": "Dry Vermouth-1/2 oz , Gin-1 1/2 oz , Benedictine-1 1/2 tsp : Stir all ingredients with ice, strain into a cocktail glass, and serve.",
   "strInstructions": "Stir all ingredients with ice, strain into a cocktail glass, and serve.",
   "strIngredients": "Dry Vermouth-1/2 oz , Gin-1 1/2 oz , Benedictine-1 1/2 tsp",
   "incorrect": "Adios Amigos Cocktail, Derby, Absolut limousine"
 },
 {
   "strDrink": "Quentin",
   "questions": "Dark Rum-1 1/2 oz , Kahlua-1/2 oz , Light Cream-1 oz , Nutmeg-1/8 tsp grated : In a shaker half-filled with ice cubes, combine the rum, Kahlua, and cream. Shake well. Strain into a cocktail glass and garnish with the nutmeg.",
   "strInstructions": "In a shaker half-filled with ice cubes, combine the rum, Kahlua, and cream. Shake well. Strain into a cocktail glass and garnish with the nutmeg.",
   "strIngredients": "Dark Rum-1 1/2 oz , Kahlua-1/2 oz , Light Cream-1 oz , Nutmeg-1/8 tsp grated",
   "incorrect": "Girl From Ipanema, Gentleman's Club, Addington"
 },
 {
   "strDrink": "Quick F**K",
   "questions": "Kahlua-1 part , Midori Melon Liqueur-1 part , Bailey's Irish Cream-1 part : In a shot glass add 1/3 Kahlua first. Then 1/3 Miduri, topping it off with a 1/3 bailey's irish cream",
   "strInstructions": "In a shot glass add 1/3 Kahlua first. Then 1/3 Miduri, topping it off with a 1/3 bailey's irish cream",
   "strIngredients": "Kahlua-1 part , Midori Melon Liqueur-1 part , Bailey's Irish Cream-1 part",
   "incorrect": "Orangeade, Brandy Cobbler, Damned if you do"
 },
 {
   "strDrink": "Quick-sand",
   "questions": "Black Sambuca-25 ml , Orange Juice-Add 250 ml , : Simply add the orange juice, quite a quick pour in order to mix the sambucca with the orange juice. The juice MUST have fruit pulp!",
   "strInstructions": "Simply add the orange juice, quite a quick pour in order to mix the sambucca with the orange juice. The juice MUST have fruit pulp!",
   "strIngredients": "Black Sambuca-25 ml , Orange Juice-Add 250 ml ,",
   "incorrect": "Arizona Stingers, Snowball, Wine Punch"
 },
 {
   "strDrink": "Radioactive Long Island Iced Tea",
   "questions": "Rum-1 oz , Vodka-1 oz , Tequila-1 oz , Gin-1 oz , Triple Sec-1 oz , Chambord Raspberry Liqueur-1 oz , Midori Melon Liqueur-1 oz , Malibu Rum-1 oz : Pour all ingredients over ice in a very tall glass. Sip cautiously.",
   "strInstructions": "Pour all ingredients over ice in a very tall glass. Sip cautiously.",
   "strIngredients": "Rum-1 oz , Vodka-1 oz , Tequila-1 oz , Gin-1 oz , Triple Sec-1 oz , Chambord Raspberry Liqueur-1 oz , Midori Melon Liqueur-1 oz , Malibu Rum-1 oz",
   "incorrect": "Grass Skirt, Apple Slammer, Egg-Nog - Classic Cooked"
 },
 {
   "strDrink": "Radler",
   "questions": "Beer-12 oz , 7-Up-12 oz , : Pour beer into large mug, slowly add the 7-up (or Sprite).",
   "strInstructions": "Pour beer into large mug, slowly add the 7-up (or Sprite).",
   "strIngredients": "Beer-12 oz , 7-Up-12 oz ,",
   "incorrect": "English Highball, Strawberry Shivers, Midnight Mint"
 },
 {
   "strDrink": "Rail Splitter",
   "questions": "Sugar Syrup-2 tsp , Lemon Juice, Ginger Ale , : Mix sugar syrup with lemon juice in a tall glass. Fill up with ginger Ale.",
   "strInstructions": "Mix sugar syrup with lemon juice in a tall glass. Fill up with ginger Ale.",
   "strIngredients": "Sugar Syrup-2 tsp , Lemon Juice\n , Ginger Ale ,",
   "incorrect": "Atlantic Sun, ABC, Homemade Kahlua"
 },
 {
   "strDrink": "Raspberry Cooler",
   "questions": "Raspberry Vodka-2 oz , Lemon-lime soda-4 oz , Ice: Pour the raspberry vodka and soda into a highball glass almost filled with ice cubes. Stir well.",
   "strInstructions": "Pour the raspberry vodka and soda into a highball glass almost filled with ice cubes. Stir well.",
   "strIngredients": "Raspberry Vodka-2 oz , Lemon-lime soda-4 oz , Ice\n  ,",
   "incorrect": "Zenmeister, Rum Sour, Vodka Martini"
 },
 {
   "strDrink": "Red Snapper",
   "questions": "Crown Royal-1 shot , Amaretto-1 shot , Cranberry Juice-1 shot : One shot each, shake n shoot",
   "strInstructions": "One shot each, shake n shoot",
   "strIngredients": "Crown Royal-1 shot , Amaretto-1 shot , Cranberry Juice-1 shot",
   "incorrect": "Thai Iced Tea, Butter Baby, Orgasm"
 },
 {
   "strDrink": "Rose",
   "questions": "Dry Vermouth-1/2 oz , Gin-1 oz , Apricot brandy-1/2 oz , Lemon Juice-1/2 tsp , Grenadine-1 tsp , Powdered Sugar- : Shake together in a cocktail shaker, then strain into chilled glass. Garnish and serve.",
   "strInstructions": "Shake together in a cocktail shaker, then strain into chilled glass. Garnish and serve.",
   "strIngredients": "Dry Vermouth-1/2 oz , Gin-1 oz , Apricot brandy-1/2 oz , Lemon Juice-1/2 tsp , Grenadine-1 tsp , Powdered Sugar-",
   "incorrect": "Kool-Aid Slammer, Vodka Russian, Grim Reaper"
 },
 {
   "strDrink": "Royal Bitch",
   "questions": "Frangelico-1 part , Crown Royal-1 part , : Into a shot glass layer the Crown Royal on top of the Frangelico.",
   "strInstructions": "Into a shot glass layer the Crown Royal on top of the Frangelico.",
   "strIngredients": "Frangelico-1 part , Crown Royal-1 part ,",
   "incorrect": "Boomerang, Popped Cherry, Tuxedo Cocktail"
 },
 {
   "strDrink": "Royal Fizz",
   "questions": "Gin-1 oz , Sweet and Sour-2 oz , Egg-1 whole , Coca-Cola: Shake all ingredients (except cola) with ice and strain into a chilled collins glass. Fill with cola and serve.",
   "strInstructions": "Shake all ingredients (except cola) with ice and strain into a chilled collins glass. Fill with cola and serve.",
   "strIngredients": "Gin-1 oz , Sweet and Sour-2 oz , Egg-1 whole , Coca-Cola\n  ,",
   "incorrect": "Black and Brown, Americano, Godmother"
 },
 {
   "strDrink": "Royal Flush",
   "questions": "Crown Royal-1 1/2 oz , Peach Schnapps-1 oz , Chambord Raspberry Liqueur-1/2 oz , Cranberry Juice-1 oz : Pour all the ingredients into tumbler over ice. Strain into glass.",
   "strInstructions": "Pour all the ingredients into tumbler over ice. Strain into glass.",
   "strIngredients": "Crown Royal-1 1/2 oz , Peach Schnapps-1 oz , Chambord Raspberry Liqueur-1/2 oz , Cranberry Juice-1 oz",
   "incorrect": "Strawberry Lemonade, Russian Spring Punch, Kiwi Papaya Smoothie"
 },
 {
   "strDrink": "Royal Gin Fizz",
   "questions": "Gin-2 oz , Lemon-Juice of 1/2 , Powdered Sugar-1 tsp , Egg-1 whole , Carbonated Water: Shake all ingredients (except carbonated water) with ice and strain into a highball glass over two ice cubes. Fill with carbonated water, stir, and serve.",
   "strInstructions": "Shake all ingredients (except carbonated water) with ice and strain into a highball glass over two ice cubes. Fill with carbonated water, stir, and serve.",
   "strIngredients": "Gin-2 oz , Lemon-Juice of 1/2 , Powdered Sugar-1 tsp , Egg-1 whole , Carbonated Water-",
   "incorrect": "Acapulco, Casino RoyAle, Ace"
 },
 {
   "strDrink": "Ruby Tuesday",
   "questions": "Gin-2 oz , Cranberry Juice-5 oz , Grenadine-2 splashes : Pour gin and cranberry into a highball filled with ice cubes. Add grenadine and stir.",
   "strInstructions": "Pour gin and cranberry into a highball filled with ice cubes. Add grenadine and stir.",
   "strIngredients": "Gin-2 oz , Cranberry Juice-5 oz , Grenadine-2 splashes",
   "incorrect": "Turf Cocktail, White Lady, Bermuda Highball"
 },
 {
   "strDrink": "Rum Cobbler",
   "questions": "Sugar-1 tsp superfine , Club soda-3 oz , Lemon-1, Dark Rum-2 oz , Maraschino Cherry-1, Orange-1 : In an old-fashioned glass, dissolve the sugar in the club soda. Add crushed ice until the glass is almost full. Add the rum. Stir well. Garnish with the cherry and the orange and lemon slices.",
   "strInstructions": "In an old-fashioned glass, dissolve the sugar in the club soda. Add crushed ice until the glass is almost full. Add the rum. Stir well. Garnish with the cherry and the orange and lemon slices.",
   "strIngredients": "Sugar-1 tsp superfine , Club soda-3 oz , Lemon-1, Dark Rum-2 oz , Maraschino Cherry-1, Orange-1",
   "incorrect": "Gin Swizzle, Bellini Martini, National Aquarium"
 },
 {
   "strDrink": "Rum Cooler",
   "questions": "Rum-2 oz light or dark , Lemon-lime soda-4 oz , Lemon-1 , : Pour the rum and soda into a collins glass almost filled with ice cubes. Stir well and garnish with the lemon wedge.",
   "strInstructions": "Pour the rum and soda into a collins glass almost filled with ice cubes. Stir well and garnish with the lemon wedge.",
   "strIngredients": "Rum-2 oz light or dark , Lemon-lime soda-4 oz , Lemon-1 ,",
   "incorrect": "Melya, Planter's Punch, Vesuvio"
 },
 {
   "strDrink": "Rum Milk Punch",
   "questions": "Light Rum-2 oz , Milk-1 cup , Powdered Sugar-1 tsp , Nutmeg: Shake all ingredients (except nutmeg) with ice and strain into a collins glass. Sprinkle nutmeg on top and serve.",
   "strInstructions": "Shake all ingredients (except nutmeg) with ice and strain into a collins glass. Sprinkle nutmeg on top and serve.",
   "strIngredients": "Light Rum-2 oz , Milk-1 cup , Powdered Sugar-1 tsp , Nutmeg\n  ,",
   "incorrect": "Bruce's Puce, Almond Chocolate Coffee, B-52"
 },
 {
   "strDrink": "Rum Old-fashioned",
   "questions": "Light Rum-1 1/2 oz , 151 Proof Rum-1 tsp , Powdered Sugar-1/2 tsp , Bitters-1 dash , Water-1 tsp , Twist of Lime Peel : Stir powdered sugar, water, and bitters in an old-fashioned glass. When sugar has dissolved add ice cubes and light rum. Add the twist of lime peel, float 151 proof rum on top, and serve.",
   "strInstructions": "Stir powdered sugar, water, and bitters in an old-fashioned glass. When sugar has dissolved add ice cubes and light rum. Add the twist of lime peel, float 151 proof rum on top, and serve.",
   "strIngredients": "Light Rum-1 1/2 oz , 151 Proof Rum-1 tsp , Powdered Sugar-1/2 tsp , Bitters-1 dash , Water-1 tsp , Twist of Lime Peel",
   "incorrect": "Drinking Chocolate, Pysch Vitamin Light, After sex"
 },
 {
   "strDrink": "Rum Punch",
   "questions": "Rum-mikey bottle , Ginger Ale-large bottle , Fruit punch-355 ml frozen , Orange Juice-355 ml frozen , Ice-crushed : Mix all ingredients in a punch bowl and serve.",
   "strInstructions": "Mix all ingredients in a punch bowl and serve.",
   "strIngredients": "Rum-mikey bottle , Ginger Ale-large bottle , Fruit punch-355 ml frozen , Orange Juice-355 ml frozen , Ice-crushed",
   "incorrect": "Zima Blaster, Pink Gin, Big Red"
 },
 {
   "strDrink": "Rum Runner",
   "questions": "Malibu Rum-1 1/2 oz , Blackberry Brandy-1 oz , Orange Juice-3-4 oz , Pineapple Juice-3-4 oz , Cranberry Juice-3-4 oz : Mix all ingredients in glass & add ice.",
   "strInstructions": "Mix all ingredients in glass & add ice.",
   "strIngredients": "Malibu Rum-1 1/2 oz , Blackberry Brandy-1 oz , Orange Juice-3-4 oz , Pineapple Juice-3-4 oz , Cranberry Juice-3-4 oz",
   "incorrect": "Nutty Irishman, Rum Cooler, Sex on the Beach"
 },
 {
   "strDrink": "Rum Screwdriver",
   "questions": "Light Rum-1 1/2 oz , Orange Juice-5 oz , : Pour rum into a highball glass over ice cubes. Add orange juice, stir, and serve.",
   "strInstructions": "Pour rum into a highball glass over ice cubes. Add orange juice, stir, and serve.",
   "strIngredients": "Light Rum-1 1/2 oz , Orange Juice-5 oz ,",
   "incorrect": "Diesel, Port Wine Flip, Spiced Peach Punch"
 },
 {
   "strDrink": "Rum Sour",
   "questions": "Light Rum-2 oz , Lemon Juice-1 oz , Sugar-1/2 tsp superfine , Orange-1, Maraschino Cherry-1 : In a shaker half-filled with ice cubes, combine the rum, lemon juice, and sugar. Shake well. Strain into a sour glass and garnish with the orange slice and the cherry.",
   "strInstructions": "In a shaker half-filled with ice cubes, combine the rum, lemon juice, and sugar. Shake well. Strain into a sour glass and garnish with the orange slice and the cherry.",
   "strIngredients": "Light Rum-2 oz , Lemon Juice-1 oz , Sugar-1/2 tsp superfine , Orange-1, Maraschino Cherry-1",
   "incorrect": "Port And Starboard, Flying Dutchman, Allegheny"
 },
 {
   "strDrink": "Rum Toddy",
   "questions": "Rum-2 oz light or dark , Powdered sugar-2 tsp , Twist of Lemon Peel, Water-2 tsp : Dissolve powdered sugar in water in an old-fashioned glass. Add rum and one ice cube and stir. Add the twist of lemon peel and serve.",
   "strInstructions": "Dissolve powdered sugar in water in an old-fashioned glass. Add rum and one ice cube and stir. Add the twist of lemon peel and serve.",
   "strIngredients": "Rum-2 oz light or dark , Powdered sugar-2 tsp , Twist of Lemon Peel, Water-2 tsp",
   "incorrect": "Frisco Sour, Amaretto Sunrise, Van Vleet"
 },
 {
   "strDrink": "Russian Spring Punch",
   "questions": "Vodka-2.1 2/3 oz, Creme de Cassis-1.1 2/3 oz, Sugar Syrup-1/3 oz, Lemon Juice-2.1 2/3 oz , : Pour the ingredients into an highball glass, top with Sparkling wine.",
   "strInstructions": "Pour the ingredients into an highball glass, top with Sparkling wine.",
   "strIngredients": "Vodka-2.1 2/3 oz, Creme de Cassis-1.1 2/3 oz, Sugar Syrup-1/3 oz, Lemon Juice-2.1 2/3 oz ,",
   "incorrect": "Caipirinha, Snake Bite (UK), Irish Spring"
 },
 {
   "strDrink": "Rusty Nail",
   "questions": "Scotch-1 1/2 oz , Drambuie-1/2 oz , Twist of Lemon Peel , : Pour the Scotch and Drambuie into an old-fashioned glass almost filled with ice cubes. Stir well. Garnish with the lemon twist.",
   "strInstructions": "Pour the Scotch and Drambuie into an old-fashioned glass almost filled with ice cubes. Stir well. Garnish with the lemon twist.",
   "strIngredients": "Scotch-1 1/2 oz , Drambuie-1/2 oz , Twist of Lemon Peel ,",
   "incorrect": "Scotch Cobbler, A.D.M. (After Dinner Mint), Espresso Martini"
 },
 {
   "strDrink": "Salty Dog",
   "questions": "Grapefruit Juice-5 oz , Gin-1 1/2 oz , Salt-1/4 tsp : Pour all ingredients over ice cubes in a highball glass. Stir well and serve. (Vodka may be substituted for gin, if preferred.)",
   "strInstructions": "Pour all ingredients over ice cubes in a highball glass. Stir well and serve. (Vodka may be substituted for gin, if preferred.)",
   "strIngredients": "Grapefruit Juice-5 oz , Gin-1 1/2 oz , Salt-1/4 tsp",
   "incorrect": "Bacardi Cocktail, Gin Squirt, Lemouroudji"
 },
 {
   "strDrink": "San Francisco",
   "questions": "Vodka-2/3 oz , Creme de Banane-2/3 oz , Grenadine, Orange Juice : Take a tall glass and put in a few ice cubes, fill the vodka over it and fill with juice then the \"creme\", to end fill in the grenadine but very carefully at the side of the glass so it will lay down in the bottom. garnish with orange and strawberry.",
   "strInstructions": "Take a tall glass and put in a few ice cubes, fill the vodka over it and fill with juice then the \"creme\", to end fill in the grenadine but very carefully at the side of the glass so it will lay down in the bottom. garnish with orange and strawberry.",
   "strIngredients": "Vodka-2/3 oz , Creme de Banane-2/3 oz , Grenadine-\n , Orange Juice",
   "incorrect": "Abilene, Clover Club, Mississippi Planters Punch"
 },
 {
   "strDrink": "Sangria #1",
   "questions": "Red wine-1 bottle , Sugar-1/2 cup , Orange Juice-1 cup , Lemon Juice-1 cup , Cloves, Cinnamon : Mix all together in a pitcher and refrigerate. Add cloves and cinnamon sticks to taste. Serve in wine glasses.",
   "strInstructions": "Mix all together in a pitcher and refrigerate. Add cloves and cinnamon sticks to taste. Serve in wine glasses.",
   "strIngredients": "Red wine-1 bottle , Sugar-1/2 cup , Orange Juice-1 cup , Lemon Juice-1 cup , Cloves\n , Cinnamon",
   "incorrect": "Arctic Mouthwash, Orange Push-up, Flaming Lamborghini"
 },
 {
   "strDrink": "Sangria - The World's Best",
   "questions": "Red wine-1 1/2 L , Sugar-1 cup , Lemon-1 large , Orange-1 large , Apple-1 large , Brandy-3-4 oz plain , Soda Water: Mix wine, sugar and fruit, and let sit in the fridge for 18-24 hours. The mixture will have a somewhat syrupy consistency. Before serving stir in brandy and cut the mixture with soda water until it have a thinner, more wine like consistency. Serve from a pitcher in wine glasses.",
   "strInstructions": "Mix wine, sugar and fruit, and let sit in the fridge for 18-24 hours. The mixture will have a somewhat syrupy consistency. Before serving stir in brandy and cut the mixture with soda water until it have a thinner, more wine like consistency. Serve from a pitcher in wine glasses.",
   "strIngredients": "Red wine-1 1/2 L , Sugar-1 cup , Lemon-1 large , Orange-1 large , Apple-1 large , Brandy-3-4 oz plain , Soda Water",
   "incorrect": "Zippy's Revenge, Old Fashioned, Moscow Mule"
 },
 {
   "strDrink": "Sazerac",
   "questions": "Ricard-1 tsp , Sugar-1/2 tsp superfine , Peychaud Bitters-2 dashes , Water-1 tsp , Bourbon-2 oz , Twist of Lemon Peel : Rinse a chilled old-fashioned glass with the absinthe, add crushed ice, and set it aside. Stir the remaining ingredients over ice and set it aside. Discard the ice and any excess absinthe from the prepared glass, and strain the drink into the glass. Add the lemon peel for garnish.",
   "strInstructions": "Rinse a chilled old-fashioned glass with the absinthe, add crushed ice, and set it aside. Stir the remaining ingredients over ice and set it aside. Discard the ice and any excess absinthe from the prepared glass, and strain the drink into the glass. Add the lemon peel for garnish.",
   "strIngredients": "Ricard-1 tsp , Sugar-1/2 tsp superfine , Peychaud Bitters-2 dashes , Water-1 tsp , Bourbon-2 oz , Twist of Lemon Peel",
   "incorrect": "Amaretto Shake, Mai Tai, Bourbon Sour"
 },
 {
   "strDrink": "Scooter",
   "questions": "Brandy-1 oz , Amaretto-1 oz , Light Cream-1 oz : Shake all ingredients well with cracked ice, strain into a cocktail glass, and serve.",
   "strInstructions": "Shake all ingredients well with cracked ice, strain into a cocktail glass, and serve.",
   "strIngredients": "Brandy-1 oz , Amaretto-1 oz , Light Cream-1 oz",
   "incorrect": "Kill the cold Smoothie, Zorro, Strawberry Daiquiri"
 },
 {
   "strDrink": "Scotch Cobbler",
   "questions": "Scotch-2 oz , Brandy-4 dashes , Curacao-4 dashes , Orange-1 slIce , Mint-1 : Pour scotch, brandy, and curacao over ice in an old-fashioned glass. Add the orange slice, top with the mint sprig, and serve.",
   "strInstructions": "Pour scotch, brandy, and curacao over ice in an old-fashioned glass. Add the orange slice, top with the mint sprig, and serve.",
   "strIngredients": "Scotch-2 oz , Brandy-4 dashes , Curacao-4 dashes , Orange-1 slIce , Mint-1",
   "incorrect": "Applejack, After Supper Cocktail, Vampiro"
 },
 {
   "strDrink": "Scotch Sour",
   "questions": "Scotch-1 1/2 oz , Lime-Juice of 1/2 , Powdered Sugar-1/2 tsp , Lemon-1/2 slIce , Cherry-1 : Shake scotch, juice of lime, and powdered sugar with ice and strain into a whiskey sour glass. Decorate with 1/2 slice lemon, top with the cherry, and serve.",
   "strInstructions": "Shake scotch, juice of lime, and powdered sugar with ice and strain into a whiskey sour glass. Decorate with 1/2 slice lemon, top with the cherry, and serve.",
   "strIngredients": "Scotch-1 1/2 oz , Lime-Juice of 1/2 , Powdered Sugar-1/2 tsp , Lemon-1/2 slIce , Cherry-1",
   "incorrect": "Sherry Flip, Zambeer, Vodka And Tonic"
 },
 {
   "strDrink": "Scottish Highland Liqueur",
   "questions": "Johnnie Walker-1 fifth , Honey-1 1/2 cup mild , Angelica Root-2 tsp dried and chopped , Fennel Seeds-1/4 tsp crushed , Lemon Peel-2 2 inch strips : Combine all ingreds in aging container. Cover tightly and shake gently several times during the first 24 hrs. After 24 hrs, remove the lemon zest. Cover again and let stand in a cool, dark place for 2 weeks, shaking gently every other day. Strain through a wire sieve to remove the angelica root and fennel. Return to aging container, cover and let stand undisturbed in a cool dark place for 6 months. Siphon or pour clear liqueur into a sterile bottle. The cloudy dregs may be saved for cooking.",
   "strInstructions": "Combine all ingreds in aging container. Cover tightly and shake gently several times during the first 24 hrs. After 24 hrs, remove the lemon zest. Cover again and let stand in a cool, dark place for 2 weeks, shaking gently every other day. Strain through a wire sieve to remove the angelica root and fennel. Return to aging container, cover and let stand undisturbed in a cool dark place for 6 months. Siphon or pour clear liqueur into a sterile bottle. The cloudy dregs may be saved for cooking.",
   "strIngredients": "Johnnie Walker-1 fifth , Honey-1 1/2 cup mild , Angelica Root-2 tsp dried and chopped , Fennel Seeds-1/4 tsp crushed , Lemon Peel-2 2 inch strips",
   "incorrect": "Lone Tree Cooler, Quaker's Cocktail, Avalon"
 },
 {
   "strDrink": "Screaming Orgasm",
   "questions": "Vodka-1 oz , Bailey's Irish Cream-1 1/2 oz , Kahlua-1/2 oz : Pour first vodka, then Bailey's, then Kahlua into a cocktail glass over crushed ice. Stir. Caution: use only high quality vodka. Cheap vodka can cause the Bailey's to curdle. Test your brand of vodka by mixing 1 Tsp each of vodka and Bailey's first.",
   "strInstructions": "Pour first vodka, then Bailey's, then Kahlua into a cocktail glass over crushed ice. Stir. Caution: use only high quality vodka. Cheap vodka can cause the Bailey's to curdle. Test your brand of vodka by mixing 1 Tsp each of vodka and Bailey's first.",
   "strIngredients": "Vodka-1 oz , Bailey's Irish Cream-1 1/2 oz , Kahlua-1/2 oz",
   "incorrect": "Algonquin, Waikiki Beachcomber, Black Russian"
 },
 {
   "strDrink": "Screwdriver",
   "questions": "Vodka-2 oz , Orange Juice : Mix in a highball glass with ice. Garnish and serve.",
   "strInstructions": "Mix in a highball glass with ice. Garnish and serve.",
   "strIngredients": "Vodka-2 oz , Orange Juice",
   "incorrect": "Bloody Maria, Alfie Cocktail, Turkeyball"
 },
 {
   "strDrink": "Sea breeze",
   "questions": "Vodka-1 1/2 oz , Cranberry Juice-4 oz , Grapefruit Juice-1 oz : Build all ingredients in a highball glass filled with ice. Garnish with lime wedge.",
   "strInstructions": "Build all ingredients in a highball glass filled with ice. Garnish with lime wedge.",
   "strIngredients": "Vodka-1 1/2 oz , Cranberry Juice-4 oz , Grapefruit Juice-1 oz",
   "incorrect": "Red Snapper, Gin And Tonic, Apple Karate"
 },
 {
   "strDrink": "Sex on the Beach",
   "questions": "Vodka-1 oz , Peach Schnapps-3/4 oz , Cranberry Juice-, Grapefruit Juice , : Build all ingredients in a highball glass filled with ice. Garnish with orange slice.",
   "strInstructions": "Build all ingredients in a highball glass filled with ice. Garnish with orange slice.",
   "strIngredients": "Vodka-1 oz , Peach Schnapps-3/4 oz , Cranberry Juice-, Grapefruit Juice ,",
   "incorrect": "747, Allies Cocktail, Banana Daiquiri"
 },
 {
   "strDrink": "Shanghai Cocktail",
   "questions": "Light Rum-1 oz Jamaican , Anisette-1 tsp , Grenadine-1/2 tsp , Lemon-Juice of 1/4 : Shake all ingredients with ice, strain into a cocktail glass, and serve.",
   "strInstructions": "Shake all ingredients with ice, strain into a cocktail glass, and serve.",
   "strIngredients": "Light Rum-1 oz Jamaican , Anisette-1 tsp , Grenadine-1/2 tsp , Lemon-Juice of 1/4",
   "incorrect": "Sidecar, Tia-Maria, Poppy Cocktai"
 },
 {
   "strDrink": "Shark Attack",
   "questions": "Lemonade-1 can , Water-3 cans , Vodka-1 1/2 cup : Mix lemonade and water according to instructions on back of can. If the instructions say to add 4 1/3 cans of water do so. Mix into pitcher. Add 1 1/2 cup of Vodka (Absolut). Mix well. Pour into glass of crushed ice. Excellent!",
   "strInstructions": "Mix lemonade and water according to instructions on back of can. If the instructions say to add 4 1/3 cans of water do so. Mix into pitcher. Add 1 1/2 cup of Vodka (Absolut). Mix well. Pour into glass of crushed ice. Excellent!",
   "strIngredients": "Lemonade-1 can , Water-3 cans , Vodka-1 1/2 cup",
   "incorrect": "Mother's Milk, Frozen Mint Daiquiri, Caribbean Boilermaker"
 },
 {
   "strDrink": "Sherry Eggnog",
   "questions": "Sherry-2 oz Cream , Powdered sugar-1 tsp , Egg-1 whole , Milk-, Nutmeg- : Shake sherry, powdered sugar, and egg with ice and strain into a collins glass. Fill with milk and stir. Sprinkle nutmeg on top and serve.",
   "strInstructions": "Shake sherry, powdered sugar, and egg with ice and strain into a collins glass. Fill with milk and stir. Sprinkle nutmeg on top and serve.",
   "strIngredients": "Sherry-2 oz Cream , Powdered sugar-1 tsp , Egg-1 whole , Milk-\n , Nutmeg-",
   "incorrect": "New York Lemonade, Blue Margarita, Gin Fizz"
 },
 {
   "strDrink": "Sherry Flip",
   "questions": "Sherry-1 1/2 oz Cream , Light Cream-2 tsp , Powdered Sugar-1 tsp , Egg-1 whole , Nutmeg-: Shake all ingredients (except nutmeg) with ice and strain into a whiskey sour glass. Sprinkle nutmeg on top and serve.",
   "strInstructions": "Shake all ingredients (except nutmeg) with ice and strain into a whiskey sour glass. Sprinkle nutmeg on top and serve.",
   "strIngredients": "Sherry-1 1/2 oz Cream , Light Cream-2 tsp , Powdered Sugar-1 tsp , Egg-1 whole , Nutmeg-",
   "incorrect": "Irish Cream, After Five, Microwave Hot Cocoa"
 },
 {
   "strDrink": "Shot-gun",
   "questions": "Jim Beam-1 part , Jack Daniels-1 part , Wild Turkey-1 oz : Pour one part Jack Daneils and one part Jim Beam into shot glass then float Wild Turkey on top.",
   "strInstructions": "Pour one part Jack Daneils and one part Jim Beam into shot glass then float Wild Turkey on top.",
   "strIngredients": "Jim Beam-1 part , Jack Daniels-1 part , Wild Turkey-1 oz",
   "incorrect": "Coffee Liqueur, Balmoral, Daiquiri"
 },
 {
   "strDrink": "Sidecar",
   "questions": "Cognac-2 oz , Cointreau-1/2 oz , Lemon Juice-1 oz : Pour all ingredients into cocktail shaker filled with ice. Shake well and strain into cocktail glass.",
   "strInstructions": "Pour all ingredients into cocktail shaker filled with ice. Shake well and strain into cocktail glass.",
   "strIngredients": "Cognac-2 oz , Cointreau-1/2 oz , Lemon Juice-1 oz",
   "incorrect": "Amaretto Rose, Brave Bull Shooter, Veteran"
 },
 {
   "strDrink": "Sidecar Cocktail",
   "questions": "Brandy-1 oz , Triple Sec-1/2 oz , Lemon-Juice of 1/4 : Shake all ingredients with ice, strain into a cocktail glass, and serve.",
   "strInstructions": "Shake all ingredients with ice, strain into a cocktail glass, and serve.",
   "strIngredients": "Brandy-1 oz , Triple Sec-1/2 oz , Lemon-Juice of 1/4",
   "incorrect": "The Evil Blue Thing, Arctic Fish, Adam & Eve"
 },
 {
   "strDrink": "Singapore Sling",
   "questions": "Cherry Brandy-1/2 oz , Grenadine-1/2 oz , Gin-1 oz , Sweet and Sour-2 oz , Carbonated Water, Cherry : Pour all ingredients into cocktail shaker filled with ice cubes. Shake well. Strain into highball glass. Garnish with Pineapple and cocktail cherry.",
   "strInstructions": "Pour all ingredients into cocktail shaker filled with ice cubes. Shake well. Strain into highball glass. Garnish with Pineapple and cocktail cherry.",
   "strIngredients": "Cherry Brandy-1/2 oz , Grenadine-1/2 oz , Gin-1 oz , Sweet and Sour-2 oz , Carbonated Water, Cherry",
   "incorrect": "Egg Nog #4, Orange Oasis, Black & Tan"
 },
 {
   "strDrink": "Sloe Gin Cocktail",
   "questions": "Sloe Gin-2 oz , Dry Vermouth-1/4 tsp , Orange Bitters-1 dash : Stir all ingredients with ice, strain into a cocktail glass, and serve.",
   "strInstructions": "Stir all ingredients with ice, strain into a cocktail glass, and serve.",
   "strIngredients": "Sloe Gin-2 oz , Dry Vermouth-1/4 tsp , Orange Bitters-1 dash",
   "incorrect": "Moranguito, Yellow Bird, Zorro"
 },
 {
   "strDrink": "Smut",
   "questions": "Red wine-1/3 part , Peach Schnapps-1 shot , Pepsi Cola-1/3 part , Orange Juice-1/3 part : Throw it all together and serve real cold.",
   "strInstructions": "Throw it all together and serve real cold.",
   "strIngredients": "Red wine-1/3 part , Peach Schnapps-1 shot , Pepsi Cola-1/3 part , Orange Juice-1/3 part",
   "incorrect": "Jelly Bean, Almond Joy, Chocolate Monkey"
 },
 {
   "strDrink": "Snake Bite (UK)",
   "questions": "Lager-1/2 pint , Cider-1/2 pint sweet or dry : Pour ingredients into a pint glass. Drink. Fall over.",
   "strInstructions": "Pour ingredients into a pint glass. Drink. Fall over.",
   "strIngredients": "Lager-1/2 pint , Cider-1/2 pint sweet or dry",
   "incorrect": "Lassi - Sweet, Frozen Pineapple Daiquiri, 110 in the shade"
 },
 {
   "strDrink": "Snakebite and Black",
   "questions": "Lager-1/2 pint , Cider-1/2 pint , Blackcurrant squash-A little bit of : Put blackcurrant squash in first up to about 1cm in glass. Then add the larger and cider one after another.",
   "strInstructions": "Put blackcurrant squash in first up to about 1cm in glass. Then add the larger and cider one after another.",
   "strIngredients": "Lager-1/2 pint , Cider-1/2 pint , Blackcurrant squash-A little bit of",
   "incorrect": "A Gilligan's Island, Lord And Lady, Apple Pie with A Crust"
 },
 {
   "strDrink": "Snowball",
   "questions": "Advocaat-1 1/2 oz , Lemonade-8-10 oz cold , Lemon-1 slIce , Ice Cubes: Place one ice cube in the glass and add 1 1/2 oz of Advocaat. Fill up the glass with lemonade and decorate with a slice of lemon. Serve at once.",
   "strInstructions": "Place one ice cube in the glass and add 1 1/2 oz of Advocaat. Fill up the glass with lemonade and decorate with a slice of lemon. Serve at once.",
   "strIngredients": "Advocaat-1 1/2 oz , Lemonade-8-10 oz cold , Lemon-1 slIce , Ice Cubes\n  ,",
   "incorrect": "Adonis Cocktail, 151 Florida Bushwacker, Raspberry Cooler"
 },
 {
   "strDrink": "Sol Y Sombra",
   "questions": "Brandy-1 1/2 oz , Anisette-1 1/2 oz : Shake ingredients with ice, strain into a brandy snifter, and serve. (The English translation of the name of this drink is \"Sun and Shade\", and after sampling this drink, you'll understand why. Thanks, Kirby.)",
   "strInstructions": "Shake ingredients with ice, strain into a brandy snifter, and serve. (The English translation of the name of this drink is \"Sun and Shade\", and after sampling this drink, you'll understand why. Thanks, Kirby.)",
   "strIngredients": "Brandy-1 1/2 oz , Anisette-1 1/2 oz ,",
   "incorrect": "A Furlong Too Late, Alabama Slammer, Blind Russian"
 },
 {
   "strDrink": "Space Odyssey",
   "questions": "151 Proof Rum-1 shot Bacardi , Malibu Rum-1 shot , Pineapple Juice-1 shot , Orange Juice, Grenadine, Cherries : Fill glass with ice and add shots of Bacardi and Malibu. Add splash of Pineapple juice and top with orange juice. Add grenadine for color and garnish with cherries.",
   "strInstructions": "Fill glass with ice and add shots of Bacardi and Malibu. Add splash of Pineapple juice and top with orange juice. Add grenadine for color and garnish with cherries.",
   "strIngredients": "151 Proof Rum-1 shot Bacardi , Malibu Rum-1 shot , Pineapple Juice-1 shot , Orange Juice-\n , Grenadine-\n , Cherries",
   "incorrect": "Godchild, Harvey Wallbanger, Sol Y Sombra"
 },
 {
   "strDrink": "Spanish Chocolate",
   "questions": "Milk-2 cups , Chocolate-2 oz sweet , Cinnamon-1/2 tsp , Egg Yolk-2 beaten : Stir the milk with the chocolate and the cinnamon over low heat until the chocolate dissolves. Add the eggs and beat the mixture until it becomes thick, taking care not to boil. Serve in coffee mug.",
   "strInstructions": "Stir the milk with the chocolate and the cinnamon over low heat until the chocolate dissolves. Add the eggs and beat the mixture until it becomes thick, taking care not to boil. Serve in coffee mug.",
   "strIngredients": "Milk-2 cups , Chocolate-2 oz sweet , Cinnamon-1/2 tsp , Egg Yolk-2 beaten",
   "incorrect": "Spiking coffee, Orange Whip, Absinthe #2"
 },
 {
   "strDrink": "SpIced Peach Punch",
   "questions": "Peach nectar-46 oz , Orange Juice-20 oz , Brown Sugar-1/2 cup , Cinnamon-3 3-inch , Cloves-1/2 tsp , Lime Juice-2 tblsp : Combine peach nectar, orange juice and brown sugar in a large saucepan. Tie cinnamon and cloves in a small cheesecloth bag. Drop into saucepan. Heat slowly, Stiring constantly, until sugar dissolves. Simmer 10 minutes. Stir in lime juice. Serve in hot mugs.",
   "strInstructions": "Combine peach nectar, orange juice and brown sugar in a large saucepan. Tie cinnamon and cloves in a small cheesecloth bag. Drop into saucepan. Heat slowly, Stiring constantly, until sugar dissolves. Simmer 10 minutes. Stir in lime juice. Serve in hot mugs.",
   "strIngredients": "Peach nectar-46 oz , Orange Juice-20 oz , Brown Sugar-1/2 cup , Cinnamon-3 3-inch , Cloves-1/2 tsp , Lime Juice-2 tblsp",
   "incorrect": "Imperial Fizz, Bleeding Surgeon, London Town"
 },
 {
   "strDrink": "Spiking coffee",
   "questions": "Coffee, Cinnamon : Incidentally, a pinch of cinnamon is indeed a nice addition to coffee but true heaven is a cardamom seed. Of course, you serve it in a coffee mug.",
   "strInstructions": "Incidentally, a pinch of cinnamon is indeed a nice addition to coffee but true heaven is a cardamom seed. Of course, you serve it in a coffee mug.",
   "strIngredients": "Coffee\n , Cinnamon",
   "incorrect": "Aloha Fruit punch, 501 Blue, Lassi Raita"
 },
 {
   "strDrink": "Spritz",
   "questions": "ProSecco-2 oz, Campari-1 1/3 oz, Soda Water-splash , : Build into glass over ice, garnish and serve.",
   "strInstructions": "Build into glass over ice, garnish and serve.",
   "strIngredients": "ProSecco-2 oz, Campari-1 1/3 oz, Soda Water-splash ,",
   "incorrect": "Frozen Daiquiri, B-53, Between The Sheets"
 },
 {
   "strDrink": "Stinger",
   "questions": "Brandy-1 1/2 oz , White Creme de Menthe-1/2 oz , : Pour in a mixing glass with ice, stir and strain into a cocktail glass. May also be served on rocks in a rocks glass.",
   "strInstructions": "Pour in a mixing glass with ice, stir and strain into a cocktail glass. May also be served on rocks in a rocks glass.",
   "strIngredients": "Brandy-1 1/2 oz , White Creme de Menthe-1/2 oz ,",
   "incorrect": "Martinez Cocktail, Kir RoyAle, Rusty Nail"
 },
 {
   "strDrink": "Stone Sour",
   "questions": "Apricot Brandy-1 oz , Orange Juice-1 oz , Sweet and Sour-1 oz : Shake all ingredients with ice, strain into a chilled whiskey sour glass, and serve.",
   "strInstructions": "Shake all ingredients with ice, strain into a chilled whiskey sour glass, and serve.",
   "strIngredients": "Apricot Brandy-1 oz , Orange Juice-1 oz , Sweet and Sour-1 oz",
   "incorrect": "Arizona Twister, Lone Tree Cocktail, Quarter Deck Cocktail"
 },
 {
   "strDrink": "Strawberry Daiquiri",
   "questions": "Strawberry Schnapps-1/2 oz , Light Rum-1 oz , Lime Juice-1 oz , Powdered Sugar-1 tsp , Strawberries-1 oz : Pour all ingredients into shaker with ice cubes. Shake well. Strain in chilled cocktail glass.",
   "strInstructions": "Pour all ingredients into shaker with ice cubes. Shake well. Strain in chilled cocktail glass.",
   "strIngredients": "Strawberry Schnapps-1/2 oz , Light Rum-1 oz , Lime Juice-1 oz , Powdered Sugar-1 tsp , Strawberries-1 oz",
   "incorrect": "Apello, Long Island Iced Tea, Porto flip"
 },
 {
   "strDrink": "Strawberry Lemonade",
   "questions": "Lemon-Juice of 1 , Sugar-1 tblsp , Strawberries-8-10 ripe , Water-1 cup : Throw everything into a blender and mix until fairly smooth. Serve over ice.",
   "strInstructions": "Throw everything into a blender and mix until fairly smooth. Serve over ice.",
   "strIngredients": "Lemon-Juice of 1 , Sugar-1 tblsp , Strawberries-8-10 ripe , Water-1 cup",
   "incorrect": "Irish Russian, Long Vodka, Port Wine Cocktail"
 },
 {
   "strDrink": "Strawberry Margarita",
   "questions": "Strawberry Schnapps-1/2 oz , Tequila-1 oz , Triple Sec-1/2 oz , Lemon Juice-1 oz , Strawberries-1 oz , Salt: Rub rim of cocktail glass with lemon juice and dip rim in salt. Shake schnapps, tequila, triple sec, lemon juice, and strawberries with ice, strain into the salt-rimmed glass, and serve.",
   "strInstructions": "Rub rim of cocktail glass with lemon juice and dip rim in salt. Shake schnapps, tequila, triple sec, lemon juice, and strawberries with ice, strain into the salt-rimmed glass, and serve.",
   "strIngredients": "Strawberry Schnapps-1/2 oz , Tequila-1 oz , Triple Sec-1/2 oz , Lemon Juice-1 oz , Strawberries-1 oz , Salt",
   "incorrect": "A. J., Vodka Fizz, Rum Punch"
 },
 {
   "strDrink": "Strawberry Shivers",
   "questions": "Strawberries-1 1/2 cup , Honey-4 tsp , Water-1/2 cup : Place all ingredients in the blender jar - cover and whiz on medium speed until well blended. Pour in one tall, 2 medium or 3 small glasses and drink up.",
   "strInstructions": "Place all ingredients in the blender jar - cover and whiz on medium speed until well blended. Pour in one tall, 2 medium or 3 small glasses and drink up.",
   "strIngredients": "Strawberries-1 1/2 cup , Honey-4 tsp , Water-1/2 cup",
   "incorrect": "Royal Fizz, Cuba Libra, 155 Belmont"
 },
 {
   "strDrink": "Sunny Holiday Punch",
   "questions": "Pineapple Juice-46 oz chilled , Club soda-28 oz , Orange Juice-6 oz frozen , Lemon-1, Berries-2 cups , Champagne-1 bottle : Combine all ingredients in a punch bowl.",
   "strInstructions": "Combine all ingredients in a punch bowl.",
   "strIngredients": "Pineapple Juice-46 oz chilled , Club soda-28 oz , Orange Juice-6 oz frozen , Lemon-1, Berries-2 cups , Champagne-1 bottle",
   "incorrect": "Quick F**K, Havana Cocktail, Champagne Cocktail"
 },
 {
   "strDrink": "Surf City Lifesaver",
   "questions": "Ouzo-1 part , Bailey's Irish Cream-1 part , Gin-2 parts , Grand Marnier-1/2 part : Lots of ice and soda top up in tall glass with cherry and a grin.",
   "strInstructions": "Lots of ice and soda top up in tall glass with cherry and a grin.",
   "strIngredients": "Ouzo-1 part , Bailey's Irish Cream-1 part , Gin-2 parts , Grand Marnier-1/2 part",
   "incorrect": "Zizi Coin-coin, Pineapple GingerAle Smoothie, Texas Rattlesnake"
 },
 {
   "strDrink": "Swedish Coffee",
   "questions": "Coffee-1 cup, Aquavit-1 1/3 oz , Sugar-By taste : Pour the coffee in an ordinary coffee cup. Add the aquavit. Add sugar by taste. Stir and have a nice evening (morning)",
   "strInstructions": "Pour the coffee in an ordinary coffee cup. Add the aquavit. Add sugar by taste. Stir and have a nice evening (morning)",
   "strIngredients": "Coffee-1 cup, Aquavit-1 1/3 oz , Sugar-By taste",
   "incorrect": "Mudslinger, Dragonfly, Screwdriver"
 },
 {
   "strDrink": "Sweet Bananas",
   "questions": "Milk-2 cups , Banana-1, Honey-1 tblsp : Place all ingredients in the blender jar - cover and whiz on medium speed until well blended. Pour in one tall, 2 medium or 3 small glasses and drink up.",
   "strInstructions": "Place all ingredients in the blender jar - cover and whiz on medium speed until well blended. Pour in one tall, 2 medium or 3 small glasses and drink up.",
   "strIngredients": "Milk-2 cups , Banana-1, Honey-1 tblsp",
   "incorrect": "Salty Dog, Whiskey Sour, Absolutly Screwed Up"
 },
 {
   "strDrink": "Sweet Sangria",
   "questions": "Red wine-2 bottles , Sugar-1 cup , Water-2 cups hot , Apple-1 cup , Orange- wedges, Lime- wedges, Lemon, Fresca: Dissolve the sugar in hot water and cool. Peel the citrus fruits and break into wedges. Mix the wine, sugar syrup, fruit, and Fresca in a pitcher and put in the fridge for a few hours. Serve in tall glasses with a straw.",
   "strInstructions": "Dissolve the sugar in hot water and cool. Peel the citrus fruits and break into wedges. Mix the wine, sugar syrup, fruit, and Fresca in a pitcher and put in the fridge for a few hours. Serve in tall glasses with a straw.",
   "strIngredients": "Red wine-2 bottles , Sugar-1 cup , Water-2 cups hot , Apple-1 cup , Orange- wedges\n , Lime- wedges\n , Lemon-\n , Fresca\n , \n ,",
   "incorrect": "English Rose Cocktail, Dark Caipirinha, Amaretto Stinger"
 },
 {
   "strDrink": "Sweet Tooth",
   "questions": "Godiva Liqueur-2 shots , Milk: Put 2 shots Godiva Liquour into a glass, add as much or as little milk as you would like.",
   "strInstructions": "Put 2 shots Godiva Liquour into a glass, add as much or as little milk as you would like.",
   "strIngredients": "Godiva Liqueur-2 shots , Milk",
   "incorrect": "Lady Love Fizz, French Connection, Pink Panty Pulldowns"
 },
 {
   "strDrink": "Talos Coffee",
   "questions": "Grand Marnier-3 parts , Coffee-1 part , : Add your GM and then add your coffee.",
   "strInstructions": "Add your GM and then add your coffee.",
   "strIngredients": "Grand Marnier-3 parts , Coffee-1 part ,",
   "incorrect": "Black Forest Shake, Surf City Lifesaver, Chocolate Drink"
 },
 {
   "strDrink": "Tennesee Mud",
   "questions": "Coffee-8 oz , Jack Daniels-4 oz , Amaretto-4 oz , Whipped Cream: Mix Coffee, Jack Daniels and Amaretto. Add Cream on top.",
   "strInstructions": "Mix Coffee, Jack Daniels and Amaretto. Add Cream on top.",
   "strIngredients": "Coffee-8 oz , Jack Daniels-4 oz , Amaretto-4 oz , Whipped Cream\n  ,",
   "incorrect": "Flaming Dr. Pepper, Cherry Electric Lemonade, Brainteaser"
 },
 {
   "strDrink": "Tequila Fizz",
   "questions": "Tequila-2 oz , Lemon Juice-1 tblsp , Grenadine-3/4 oz , Egg White-1, Ginger Ale: Shake all ingredients (except ginger Ale) with ice and strain into a collins glass over ice cubes. Fill with ginger Ale, stir, and serve.",
   "strInstructions": "Shake all ingredients (except ginger Ale) with ice and strain into a collins glass over ice cubes. Fill with ginger Ale, stir, and serve.",
   "strIngredients": "Tequila-2 oz , Lemon Juice-1 tblsp , Grenadine-3/4 oz , Egg White-1, Ginger Ale",
   "incorrect": "Snakebite and Black, Bobby Burns Cocktail, Arise My Love"
 },
 {
   "strDrink": "Tequila Sour",
   "questions": "Tequila-2 oz , Lemon-Juice of 1/2 , Powdered Sugar-1 tsp , Lemon-1/2 slIce , Cherry-1 : Shake tequila, juice of lemon, and powdered sugar with ice and strain into a whiskey sour glass. Add the half-slice of lemon, top with the cherry, and serve.",
   "strInstructions": "Shake tequila, juice of lemon, and powdered sugar with ice and strain into a whiskey sour glass. Add the half-slice of lemon, top with the cherry, and serve.",
   "strIngredients": "Tequila-2 oz , Lemon-Juice of 1/2 , Powdered Sugar-1 tsp , Lemon-1/2 slIce , Cherry-1",
   "incorrect": "69 Special, Jack's Vanilla Coke, Alice in Wonderland"
 },
 {
   "strDrink": "Tequila Sunrise",
   "questions": "Tequila-2 measures , Orange Juice, Grenadine , : Pour the tequila and orange juice into glass over ice. Add the grenadine, which will sink to the bottom. Stir gently to create the sunrise effect. Garnish and serve.",
   "strInstructions": "Pour the tequila and orange juice into glass over ice. Add the grenadine, which will sink to the bottom. Stir gently to create the sunrise effect. Garnish and serve.",
   "strIngredients": "Tequila-2 measures , Orange Juice, Grenadine ,",
   "incorrect": "Hemingway Special, French \"75\", Kir"
 },
 {
   "strDrink": "Tequila Surprise",
   "questions": "Tequila-full glass , Tabasco Sauce-About 8 drops , : Fill shot glass with Tequila. Add drops of Tobasco sauce.",
   "strInstructions": "Fill shot glass with Tequila. Add drops of Tobasco sauce.",
   "strIngredients": "Tequila-full glass , Tabasco Sauce-About 8 drops ,",
   "incorrect": "Yoghurt Cooler, Green Goblin, Mulled Wine"
 },
 {
   "strDrink": "Texas Rattlesnake",
   "questions": "Yukon Jack-1 part , Cherry Brandy-1/2 part , Southern Comfort-1 part , Sweet and Sour-1 splash : Mix all ingredients and Shake well. Sweet at first, with a BITE at the end...",
   "strInstructions": "Mix all ingredients and Shake well. Sweet at first, with a BITE at the end...",
   "strIngredients": "Yukon Jack-1 part , Cherry Brandy-1/2 part , Southern Comfort-1 part , Sweet and Sour-1 splash",
   "incorrect": "Absolut Evergreen, Masala Chai, Fahrenheit 5000"
 },
 {
   "strDrink": "Texas Sling",
   "questions": "Kahlua-1/2 oz , Irish Cream-1/2 oz , Amaretto-1/2 oz , 151 Proof Rum-1/2 oz Bacardi , Cream-1 oz : Blend with Ice until smooth. Serve in a tulip glass, top with whip cream.",
   "strInstructions": "Blend with Ice until smooth. Serve in a tulip glass, top with whip cream.",
   "strIngredients": "Kahlua-1/2 oz , Irish Cream-1/2 oz , Amaretto-1/2 oz , 151 Proof Rum-1/2 oz Bacardi , Cream-1 oz",
   "incorrect": "Gin Sour, Kurant Tea, Stinger"
 },
 {
   "strDrink": "Thai Coffee",
   "questions": "Coffee-6 tblsp ground, Coriander-1/4 tsp , Cardamom-4-5 whole green , Sugar, Whipping Cream-, Ice : Place the coffee and spices in the filter cone of your coffee maker. Brew coffee as usual, let it cool. In a tall glass, dissolve 1 or 2 teaspoons of sugar in an ounce of the coffee (it's easier to dissolve than if you put it right over ice). Add 5-6 ice cubes and pour coffee to within about 1 inch of the top of the glass. Rest a spoon on top of the coffee and slowly pour whipping cream into the spoon. This will make the cream float on top of the coffee rather than dispersing into it right away.",
   "strInstructions": "Place the coffee and spices in the filter cone of your coffee maker. Brew coffee as usual, let it cool. In a tall glass, dissolve 1 or 2 teaspoons of sugar in an ounce of the coffee (it's easier to dissolve than if you put it right over ice). Add 5-6 ice cubes and pour coffee to within about 1 inch of the top of the glass. Rest a spoon on top of the coffee and slowly pour whipping cream into the spoon. This will make the cream float on top of the coffee rather than dispersing into it right away.",
   "strIngredients": "Coffee-6 tblsp ground, Coriander-1/4 tsp , Cardamom-4-5 whole green , Sugar, Whipping Cream-, Ice",
   "incorrect": "Kioki Coffee, Rum Screwdriver, Hawaiian Cocktail"
 },
 {
   "strDrink": "Thai Iced Coffee",
   "questions": "Coffee-black, Sugar, Cream- pods, Cardamom: Prepare a pot of coffee at a good European strength. In the ground coffee, add 2 or 3 freshly ground cardamom pods. Sweeten while hot, then cool quickly. Serve in highball glass over ice, with cream. To get the layered effect, place a spoon atop the coffee and pour the milk carefully into the spoon so that it floats on the top of the coffee.",
   "strInstructions": "Prepare a pot of coffee at a good European strength. In the ground coffee, add 2 or 3 freshly ground cardamom pods. Sweeten while hot, then cool quickly. Serve in highball glass over ice, with cream. To get the layered effect, place a spoon atop the coffee and pour the milk carefully into the spoon so that it floats on the top of the coffee.",
   "strIngredients": "Coffee-black, Sugar\n , Cream- pods\n , Cardamom\n  ,",
   "incorrect": "Bloody Mary, Kamikaze, Mimosa"
 },
 {
   "strDrink": "Thai Iced Tea",
   "questions": "Tea-1/4 cup Thai , Water-1/2 cup boiling , Condensed milk-2 tsp sweetened , Ice Cubes, Mint : Combine Thai tea (i.e., the powder), boiling water, and sweetened condensed milk, stir until blended. Pour into 2 tall glasses filled with ice cubes. Garnish with mint leaves. Makes 2 servings.",
   "strInstructions": "Combine Thai tea (i.e., the powder), boiling water, and sweetened condensed milk, stir until blended. Pour into 2 tall glasses filled with ice cubes. Garnish with mint leaves. Makes 2 servings.",
   "strIngredients": "Tea-1/4 cup Thai , Water-1/2 cup boiling , Condensed milk-2 tsp sweetened , Ice Cubes\n , Mint",
   "incorrect": "Absolutely Fabulous, Fruit Flip-Flop, Hot Chocolate to Die for"
 },
 {
   "strDrink": "The Evil Blue Thing",
   "questions": "Creme de Cacao-1 1/2 oz , Blue Curacao-1 oz , Light Rum-1/2 oz : Pour ingredients into glass, and drop in a blue wh Ale! The blue wh Ale isn't really necessary, but it makes the drink more \"fun\".",
   "strInstructions": "Pour ingredients into glass, and drop in a blue wh Ale! The blue wh Ale isn't really necessary, but it makes the drink more \"fun\".",
   "strIngredients": "Creme de Cacao-1 1/2 oz , Blue Curacao-1 oz , Light Rum-1/2 oz",
   "incorrect": "Egg Cream, Iced Coffee, Vesper"
 },
 {
   "strDrink": "Thriller",
   "questions": "Scotch-1 1/2 oz , Wine-1 oz Green Ginger , Orange Juice-1 oz : In a shaker half-filled with ice cubes, combine all of the ingredients. Shake well. Strain into a cocktail glass.",
   "strInstructions": "In a shaker half-filled with ice cubes, combine all of the ingredients. Shake well. Strain into a cocktail glass.",
   "strIngredients": "Scotch-1 1/2 oz , Wine-1 oz Green Ginger , Orange Juice-1 oz",
   "incorrect": "Limeade, Tomato Tang, Cosmopolitan Martini"
 },
 {
   "strDrink": "Tia-Maria",
   "questions": "Water-1 cup , Brown sugar-3/4-1 cup , Coffee-4 tsp , Rum-1 cup , Vanilla Extract-4 tsp : Boil water, sugar and coffe for 10 mins and let cool. Add rum and vanilla. Put in clean bottle(s) and leave for 1 week before using.",
   "strInstructions": "Boil water, sugar and coffe for 10 mins and let cool. Add rum and vanilla. Put in clean bottle(s) and leave for 1 week before using.",
   "strIngredients": "Water-1 cup , Brown sugar-3/4-1 cup , Coffee-4 tsp , Rum-1 cup , Vanilla Extract-4 tsp",
   "incorrect": "Archbishop, Apple Grande, Grasshopper"
 },
 {
   "strDrink": "Tom Collins",
   "questions": "Gin-2 oz , Lemon Juice-1 oz , Sugar-1 tsp superfine , Club Soda-3 oz , Maraschino Cherry-1, Orange-1 : In a shaker half-filled with ice cubes, combine the gin, lemon juice, and sugar. Shake well. Strain into a collins glass alomst filled with ice cubes. Add the club soda. Stir and garnish with the cherry and the orange slice.",
   "strInstructions": "In a shaker half-filled with ice cubes, combine the gin, lemon juice, and sugar. Shake well. Strain into a collins glass alomst filled with ice cubes. Add the club soda. Stir and garnish with the cherry and the orange slice.",
   "strIngredients": "Gin-2 oz , Lemon Juice-1 oz , Sugar-1 tsp superfine , Club Soda-3 oz , Maraschino Cherry-1, Orange-1",
   "incorrect": "Buccaneer, Aztec Punch, Lemon Shot"
 },
 {
   "strDrink": "Tomato Tang",
   "questions": "Tomato Juice-2 cups , Lemon Juice-1-2 tblsp , Celery Salt-1 dash : Place all ingredients in the blender jar - cover and whiz on medium speed until well blended. Pour in one tall, 2 medium or 3 small glasses and drink up.",
   "strInstructions": "Place all ingredients in the blender jar - cover and whiz on medium speed until well blended. Pour in one tall, 2 medium or 3 small glasses and drink up.",
   "strIngredients": "Tomato Juice-2 cups , Lemon Juice-1-2 tblsp , Celery Salt-1 dash",
   "incorrect": "Casino, 410 Gone, Duchamp's Punch"
 },
 {
   "strDrink": "Tommy's Margarita",
   "questions": "Tequila-4.1 2/3 oz, Lime Juice-1.1 2/3 oz, Agave Syrup-2 spoons , : Shake and strain into a chilled cocktail glass.",
   "strInstructions": "Shake and strain into a chilled cocktail glass.",
   "strIngredients": "Tequila-4.1 2/3 oz, Lime Juice-1.1 2/3 oz, Agave Syrup-2 spoons ,",
   "incorrect": "Horse's Neck, Screaming Orgasm, Rum Toddy"
 },
 {
   "strDrink": "Turf Cocktail",
   "questions": "Dry Vermouth-1 oz , Gin-1 oz , Anis-1/4 tsp , Bitters-2 dashes , Twist of Orange Peel : Stir all ingredients (except orange peel) with ice and strain into a cocktail glass. Add the twist of orange peel and serve.",
   "strInstructions": "Stir all ingredients (except orange peel) with ice and strain into a cocktail glass. Add the twist of orange peel and serve.",
   "strIngredients": "Dry Vermouth-1 oz , Gin-1 oz , Anis-1/4 tsp , Bitters-2 dashes , Twist of Orange Peel",
   "incorrect": "Amaretto And Cream, Ice Pick #1, Jewel Of The Nile"
 },
 {
   "strDrink": "Turkeyball",
   "questions": "Wild Turkey-1 oz , Amaretto-3/4 oz , Pineapple Juice-1 splash : Shake with ice and strain into a shot glass.",
   "strInstructions": "Shake with ice and strain into a shot glass.",
   "strIngredients": "Wild Turkey-1 oz , Amaretto-3/4 oz , Pineapple Juice-1 splash",
   "incorrect": "Talos Coffee, Mango Orange Smoothie, Bubble Gum"
 },
 {
   "strDrink": "Tuxedo Cocktail",
   "questions": "Dry Vermouth-1 1/2 oz , Gin-1 1/2 oz , Maraschino Liqueur-1/4 tsp , Anis-1/4 tsp , Orange Bitters-2 dashes , Cherry-1 : Stir all ingredients with ice and strain into a cocktail glass. Garnish with a cherry and a twist of lemon zest.",
   "strInstructions": "Stir all ingredients with ice and strain into a cocktail glass. Garnish with a cherry and a twist of lemon zest.",
   "strIngredients": "Dry Vermouth-1 1/2 oz , Gin-1 1/2 oz , Maraschino Liqueur-1/4 tsp , Anis-1/4 tsp , Orange Bitters-2 dashes , Cherry-1",
   "incorrect": "Arizona Antifreeze, Afterglow, Chocolate Black Russian"
 },
 {
   "strDrink": "Valencia Cocktail",
   "questions": "Apricot Brandy-1 1/2 oz , Orange Juice-1 tblsp , Orange Bitters-2 dashes : Shake all ingredients with ice, strain into a cocktail glass, and serve.",
   "strInstructions": "Shake all ingredients with ice, strain into a cocktail glass, and serve.",
   "strIngredients": "Apricot Brandy-1 1/2 oz , Orange Juice-1 tblsp , Orange Bitters-2 dashes",
   "incorrect": "Adam Sunrise, 24k nightmare, Cranberry Cordial"
 },
 {
   "strDrink": "Vampiro",
   "questions": "Tequila-2 oz, Tomato Juice-1 oz, Orange Juice-1 oz, Lime Juice- 2/3 oz, Sugar Syrup-1 dash, Salt-1 pinch : Vampiros may be made in a tall glass or an old fashioned glass. Bartenders may first \"rim\" the glass with Kosher Salt, which is done by placing a layer of Kosher Salt on a chopping board, moistening the glass' rim with lime juice or water, and then placing the upside down glass rim onto the Kosher Salt, so that the salt sticks to the moistened rim. The second step is to fill half the glass with ice and add one or two shooter glasses full of high quality Tequila. The next stage is to add the flavouring elements. This is done by squeezing a fresh lime into the glass, adding a few grains of salt, adding citrus-flavoured soda pop, until the glass is 4/5 full, and then adding spicy Viuda de Sanchez (or orange juice, lime juice and pico de gallo). The final step is to stir the ingredients so that the flavours are properly blended.",
   "strInstructions": "Vampiros may be made in a tall glass or an old fashioned glass. Bartenders may first \"rim\" the glass with Kosher Salt, which is done by placing a layer of Kosher Salt on a chopping board, moistening the glass' rim with lime juice or water, and then placing the upside down glass rim onto the Kosher Salt, so that the salt sticks to the moistened rim. The second step is to fill half the glass with ice and add one or two shooter glasses full of high quality Tequila. The next stage is to add the flavouring elements. This is done by squeezing a fresh lime into the glass, adding a few grains of salt, adding citrus-flavoured soda pop, until the glass is 4/5 full, and then adding spicy Viuda de Sanchez (or orange juice, lime juice and pico de gallo). The final step is to stir the ingredients so that the flavours are properly blended.",
   "strIngredients": "Tequila-2 oz, Tomato Juice-1 oz, Orange Juice-1 oz, Lime Juice- 2/3 oz, Sugar Syrup-1 dash, Salt-1 pinch",
   "incorrect": "Abbey Cocktail, Atomic Lokade, Kiss me Quick"
 },
 {
   "strDrink": "Van Vleet",
   "questions": "Light Rum-3 oz , Maple Syrup-1 oz , Lemon Juice-1 oz : Shake all ingredients with ice, strain into an old-fashioned glass over ice cubes, and serve.",
   "strInstructions": "Shake all ingredients with ice, strain into an old-fashioned glass over ice cubes, and serve.",
   "strIngredients": "Light Rum-3 oz , Maple Syrup-1 oz , Lemon Juice-1 oz",
   "incorrect": "Addison Special, Absolut Sex, Bumble Bee #1"
 },
 {
   "strDrink": "Vermouth Cassis",
   "questions": "Dry Vermouth-1 1/2 oz , Creme de Cassis-3/4 oz , Carbonated Water: Stir vermouth and creme de cassis in a highball glass with ice cubes. Fill with carbonated water, stir again, and serve.",
   "strInstructions": "Stir vermouth and creme de cassis in a highball glass with ice cubes. Fill with carbonated water, stir again, and serve.",
   "strIngredients": "Dry Vermouth-1 1/2 oz , Creme de Cassis-3/4 oz , Carbonated Water\n  ,",
   "incorrect": "3 Wise Men, Amaretto Sour, Baby Eskimo"
 },
 {
   "strDrink": "Vesper",
   "questions": "Gin-2 oz, Vodka-1.1 2/3 oz, Lillet Blanc-0.71 2/3 oz , : Shake over ice until well chilled, then strain into a deep goblet and garnish with a thin slice of lemon peel.",
   "strInstructions": "Shake over ice until well chilled, then strain into a deep goblet and garnish with a thin slice of lemon peel.",
   "strIngredients": "Gin-2 oz, Vodka-1.1 2/3 oz, Lillet Blanc-0.71 2/3 oz ,",
   "incorrect": "Miami Vice, Lassi Khara, Queen Elizabeth"
 },
 {
   "strDrink": "Vesuvio",
   "questions": "Light Rum-1 oz , Sweet Vermouth-1/2 oz , Lemon-Juice of 1/2 , Powdered Sugar-1 tsp , Egg White-1 : Shake all ingredients with ice, strain into an old-fashioned glass over ice cubes, and serve.",
   "strInstructions": "Shake all ingredients with ice, strain into an old-fashioned glass over ice cubes, and serve.",
   "strIngredients": "Light Rum-1 oz , Sweet Vermouth-1/2 oz , Lemon-Juice of 1/2 , Powdered Sugar-1 tsp , Egg White-1",
   "incorrect": "Absolutely Cranberry Smash, Zorbatini, Pink Lady"
 },
 {
   "strDrink": "Veteran",
   "questions": "Dark Rum-2 oz , Cherry Brandy-1/2 oz , : Pour the rum and cherry brandy into an old-fashioned glass almost filled with ice cubes. Stir well.",
   "strInstructions": "Pour the rum and cherry brandy into an old-fashioned glass almost filled with ice cubes. Stir well.",
   "strIngredients": "Dark Rum-2 oz , Cherry Brandy-1/2 oz ,",
   "incorrect": "Boston Sidecar, Bob Marley, Bramble"
 },
 {
   "strDrink": "Victor",
   "questions": "Gin-1 1/2 oz , Sweet Vermouth-1/2 oz , Brandy-1/2 oz : Shake all ingredients with ice, strain into a cocktail glass, and serve.",
   "strInstructions": "Shake all ingredients with ice, strain into a cocktail glass, and serve.",
   "strIngredients": "Gin-1 1/2 oz , Sweet Vermouth-1/2 oz , Brandy-1/2 oz",
   "incorrect": "Auburn Headbanger, Gin Sling, Classic Old-Fashioned"
 },
 {
   "strDrink": "Victory Collins",
   "questions": "Vodka-1 1/2 oz , Lemon Juice-3 oz , Grape Juice-3 oz unsweetened , Powdered Sugar-1 tsp , Orange-1 slIce : Shake all ingredients (except orange slice) with ice and strain into a collins glass over ice cubes. Add the slice of orange and serve.",
   "strInstructions": "Shake all ingredients (except orange slice) with ice and strain into a collins glass over ice cubes. Add the slice of orange and serve.",
   "strIngredients": "Vodka-1 1/2 oz , Lemon Juice-3 oz , Grape Juice-3 oz unsweetened , Powdered Sugar-1 tsp , Orange-1 slIce",
   "incorrect": "Dubonnet Cocktail, Mojito, Amaretto Sweet & Sour"
 },
 {
   "strDrink": "Vodka And Tonic",
   "questions": "Vodka-2 oz , Tonic water: Pour vodka into a highball glass over ice cubes. Fill with tonic water, stir, and serve.",
   "strInstructions": "Pour vodka into a highball glass over ice cubes. Fill with tonic water, stir, and serve.",
   "strIngredients": "Vodka-2 oz , Tonic water",
   "incorrect": "Banana Strawberry Shake, Shark Attack, Citrus Coke"
 },
 {
   "strDrink": "Vodka Fizz",
   "questions": "Vodka-2 oz , Half-and-half-2 oz , Limeade-2 oz , Ice, Nutmeg: Blend all ingredients, save nutmeg. Pour into large white wine glass and sprinkle nutmeg on top.",
   "strInstructions": "Blend all ingredients, save nutmeg. Pour into large white wine glass and sprinkle nutmeg on top.",
   "strIngredients": "Vodka-2 oz , Half-and-half-2 oz , Limeade-2 oz , Ice\n , Nutmeg",
   "incorrect": "Brandy Sour, Boozy Snickers Milkshake, Scooter"
 },
 {
   "strDrink": "Vodka Martini",
   "questions": "Vodka-1 1/2 oz , Dry Vermouth-3/4 oz , Olive-1 , : Shake the vodka and vermouth together with a number of ice cubes, strain into a cocktail glass, add the olive and serve.",
   "strInstructions": "Shake the vodka and vermouth together with a number of ice cubes, strain into a cocktail glass, add the olive and serve.",
   "strIngredients": "Vodka-1 1/2 oz , Dry Vermouth-3/4 oz , Olive-1 ,",
   "incorrect": "H.D., Gin Smash, Jam Donut"
 },
 {
   "strDrink": "Vodka Russian",
   "questions": "Vodka-2 oz , Schweppes Russchian: Mix it as a ordinary drink .",
   "strInstructions": "Mix it as a ordinary drink .",
   "strIngredients": "Vodka-2 oz , Schweppes Russchian-",
   "incorrect": "Margarita, Boston Sour, Bailey's Dream Shake"
 },
 {
   "strDrink": "Waikiki Beachcomber",
   "questions": "Triple Sec-3/4 oz , Gin-3/4 oz , Pineapple Juice-1 tblsp : Shake all ingredients with ice, strain into a cocktail glass, and serve.",
   "strInstructions": "Shake all ingredients with ice, strain into a cocktail glass, and serve.",
   "strIngredients": "Triple Sec-3/4 oz , Gin-3/4 oz , Pineapple Juice-1 tblsp",
   "incorrect": "50/50, Long Island Tea, Singapore Sling"
 },
 {
   "strDrink": "Whiskey Sour",
   "questions": "Blended Whiskey-2 oz , Lemon-Juice of 1/2 , Powdered Sugar-1/2 tsp , Cherry-1, Lemon-1/2 slIce : Shake with ice. Strain into chilled glass, garnish and serve. If served 'On the rocks', strain ingredients into old-fashioned glass filled with ice.",
   "strInstructions": "Shake with ice. Strain into chilled glass, garnish and serve. If served 'On the rocks', strain ingredients into old-fashioned glass filled with ice.",
   "strIngredients": "Blended Whiskey-2 oz , Lemon-Juice of 1/2 , Powdered Sugar-1/2 tsp , Cherry-1, Lemon-1/2 slIce",
   "incorrect": "Cream Soda, Creme de Menthe, Owen's Grandmother's Revenge"
 },
 {
   "strDrink": "Whisky Mac",
   "questions": "Scotch-1 1/2 oz , Wine-1 oz Green Ginger , : Pour both of the ingredients into a wine goblet with no ice.",
   "strInstructions": "Pour both of the ingredients into a wine goblet with no ice.",
   "strIngredients": "Scotch-1 1/2 oz , Wine-1 oz Green Ginger ,",
   "incorrect": "Royal Bitch, Royal Flush, Jackhammer"
 },
 {
   "strDrink": "White Lady",
   "questions": "Gin-4cl, Triple Sec- 1 oz, Lemon Juice-2/3 oz , : Add all ingredients into cocktail shaker filled with ice. Shake well and strain into large cocktail glass.",
   "strInstructions": "Add all ingredients into cocktail shaker filled with ice. Shake well and strain into large cocktail glass.",
   "strIngredients": "Gin-4cl, Triple Sec- 1 oz, Lemon Juice-2/3 oz ,",
   "incorrect": "Bluebird, Dark and Stormy, Jackhammer"
 },
 {
   "strDrink": "White Russian",
   "questions": "Vodka-2 oz , Coffee Liqueur-1 oz , Light Cream: Pour vodka and coffee liqueur over ice cubes in an old-fashioned glass. Fill with light cream and serve.",
   "strInstructions": "Pour vodka and coffee liqueur over ice cubes in an old-fashioned glass. Fill with light cream and serve.",
   "strIngredients": "Vodka-2 oz , Coffee Liqueur-1 oz , Light Cream\n  ,",
   "incorrect": "Adam, Malibu Twister, Chicago Fizz"
 },
 {
   "strDrink": "Whitecap Margarita",
   "questions": "Ice-1 cup , Tequila-2 oz , Cream of coconut-1/4 cup , Lime Juice-3 tblsp fresh : Place all ingredients in a blender and blend until smooth. This makes one drink.",
   "strInstructions": "Place all ingredients in a blender and blend until smooth. This makes one drink.",
   "strIngredients": "Ice-1 cup , Tequila-2 oz , Cream of coconut-1/4 cup , Lime Juice-3 tblsp fresh",
   "incorrect": "A Splash of Nash, 9 1/2 Weeks, Martini"
 },
 {
   "strDrink": "Wine Cooler",
   "questions": "Red wine-2 oz white or , Lemon-lime soda-5 oz , Ice Cubes: Mix wine and soft drink. Pour into glass. Add ice.",
   "strInstructions": "Mix wine and soft drink. Pour into glass. Add ice.",
   "strIngredients": "White or Red Wine-2 oz, Lemon-lime soda-5 oz , Ice Cubes\n  ,",
   "incorrect": "Ziemes Martini Apfelsaft, Shot-gun, Queen Charlotte"
 },
 {
   "strDrink": "Wine Punch",
   "questions": "Red wine-1 bottle , Lemon-2, Orange Juice-1 cup , Orange-3, Pineapple Juice-1 cup : Combine all of the ingredients and pour over a block of ice.",
   "strInstructions": "Combine all of the ingredients and pour over a block of ice.",
   "strIngredients": "Red wine-1 bottle , Lemon-2, Orange Juice-1 cup , Orange-3, Pineapple Juice-1 cup",
   "incorrect": "A Day at the Beach, Cosmopolitan, Dirty Nipple"
 },
 {
   "strDrink": "Yellow Bird",
   "questions": "White Rum-1 oz, Galliano- 2/3 oz, Triple Sec- 2/3 oz, Lime Juice- 2/3 oz , : Shake and strain into a chilled cocktail glass",
   "strInstructions": "Shake and strain into a chilled cocktail glass",
   "strIngredients": "White Rum-1 oz, Galliano- 2/3 oz, Triple Sec- 2/3 oz, Lime Juice- 2/3 oz ,",
   "incorrect": "Bora Bora, Almeria, Space Odyssey"
 },
 {
   "strDrink": "Yoghurt Cooler",
   "questions": "Yoghurt-1 cup , Fruit-1 cup , Ice: Place all ingredients in the blender jar - cover and whiz on medium speed until well blended. Pour in one tall, 2 medium or 3 small glasses and drink up. Note: Use lots of ice in this one - great on hot days! To add ice: Remove the center of the cover while the blender is on - drop 3 or 4 ice cubs and blend until they're completely crushed.",
   "strInstructions": "Place all ingredients in the blender jar - cover and whiz on medium speed until well blended. Pour in one tall, 2 medium or 3 small glasses and drink up. Note: Use lots of ice in this one - great on hot days! To add ice: Remove the center of the cover while the blender is on - drop 3 or 4 ice cubs and blend until they're completely crushed.",
   "strIngredients": "Yoghurt-1 cup , Fruit-1 cup , Ice\n  ,",
   "incorrect": "Happy Skipper, Rose, Hot Creamy Bush"
 },
 {
   "strDrink": "Zambeer",
   "questions": "Sambuca-1 1/2 oz , Root Beer-Add 10 oz , Ice Cubes: Mix sambuca with rootbeer and stir. Add ice",
   "strInstructions": "Mix sambuca with rootbeer and stir. Add ice",
   "strIngredients": "Sambuca-1 1/2 oz , Root Beer-Add 10 oz , Ice Cubes\n  ,",
   "incorrect": "Cranberry Punch, Tequila Sunrise, Apricot Lady"
 },
 {
   "strDrink": "Zenmeister",
   "questions": "Jagermeister-1/2 oz , Root Beer-1/2 oz , : Mix together and enjoy",
   "strInstructions": "Mix together and enjoy",
   "strIngredients": "Jagermeister-1/2 oz , Root Beer-1/2 oz ,",
   "incorrect": "Herbal flame, Highland Fling Cocktail, Quentin"
 },
 {
   "strDrink": "Ziemes Martini Apfelsaft",
   "questions": "Vermouth-1 1/3 oz , Apple Juice-12 oz , : Serve without ice. At least the juice shold have room temperature.",
   "strInstructions": "Serve without ice. At least the juice shold have room temperature.",
   "strIngredients": "Vermouth-1 1/3 oz , Apple Juice-12 oz ,",
   "incorrect": "Thai Coffee, Kool-Aid Shot, A Piece of Ass"
 },
 {
   "strDrink": "Zima Blaster",
   "questions": "Zima-12 oz , Chambord Raspberry Liqueur-3 oz , : Fill glass with ice. Pour in Chambord, then fill with Zima. Mix and enjoy.",
   "strInstructions": "Fill glass with ice. Pour in Chambord, then fill with Zima. Mix and enjoy.",
   "strIngredients": "Zima-12 oz , Chambord Raspberry Liqueur-3 oz ,",
   "incorrect": "Chocolate Beverage, Flander's Flake-Out, Tequila Surprise"
 },
 {
   "strDrink": "Zimadori Zinger",
   "questions": "Midori Melon Liqueur-1.5 oz , Zima-12 oz , : Pour Zima in a collins glass over ice and then pour the shot of Midori. Don't stir. Garnish with a cherry.",
   "strInstructions": "Pour Zima in a collins glass over ice and then pour the shot of Midori. Don't stir. Garnish with a cherry.",
   "strIngredients": "Midori Melon Liqueur-1.5 oz , Zima-12 oz ,",
   "incorrect": "Coffee-Vodka, Darkwood Sling, Rum Milk Punch"
 },
 {
   "strDrink": "Zinger",
   "questions": "Peachtree Schnapps-4 shots , Surge-4 shots , : Get a shot glass and pour in three shots of the schnapps. Do the same with the Surge Cola. Then down it like Scheetz would.",
   "strInstructions": "Get a shot glass and pour in three shots of the schnapps. Do the same with the Surge Cola. Then down it like Scheetz would.",
   "strIngredients": "Peachtree Schnapps-4 shots , Surge-4 shots ,",
   "incorrect": "Jack Rose Cocktail, Campari Beer, Jamaica Kiss"
 },
 {
   "strDrink": "Zipperhead",
   "questions": "Chambord Raspberry Liqueur-1 shot , Vodka-1 shot , Soda Water-Fill with : Fill glass with rocks, add straw before putting in liquor. Then add the ingredients in order, trying to keep layered as much as possible (i.e. Chambord on bottom, then Vodka, Then soda on top).",
   "strInstructions": "Fill glass with rocks, add straw before putting in liquor. Then add the ingredients in order, trying to keep layered as much as possible (i.e. Chambord on bottom, then Vodka, Then soda on top).",
   "strIngredients": "Chambord Raspberry Liqueur-1 shot , Vodka-1 shot , Soda Water-Fill with",
   "incorrect": "Danbooka, Cherry Rum, Applecar"
 },
 {
   "strDrink": "Zippy's Revenge",
   "questions": "Amaretto-2 oz , Rum-2 oz , Kool-Aid-4 oz Grape : Mix Kool-Aid to taste then add Rum and ammaretto. shake well to disolve the sugar in the Kool-Aid... serve cold",
   "strInstructions": "Mix Kool-Aid to taste then add Rum and ammaretto. shake well to disolve the sugar in the Kool-Aid... serve cold",
   "strIngredients": "Amaretto-2 oz , Rum-2 oz , Kool-Aid-4 oz Grape",
   "incorrect": "Frappa, Zoksel, Golden dream"
 },
 {
   "strDrink": "Zizi Coin-coin",
   "questions": "Cointreau-1 2/3 oz , Lemon Juice-2/3 oz , Ice Cubes, Lemon or Lime: Pour 5cl of Cointreau on ice, add 2cl of fresh lemon (or lime) juice, stir gently, and finally add slices of lemon/lime in glass.",
   "strInstructions": "Pour 5cl of Cointreau on ice, add 2cl of fresh lemon (or lime) juice, stir gently, and finally add slices of lemon/lime in glass.",
   "strIngredients": "Cointreau-1 2/3 oz , Lemon Juice-2/3 oz , Ice Cubes\n , Lemon or Lime\n  ,",
   "incorrect": "Affinity, A Night In Old Mandalay, Thai Iced Coffee"
 },
 {
   "strDrink": "Zoksel",
   "questions": "Beer, Root Beer, Lemonade, Coca-Cola, 7-Up, Creme de Cassis, Lemon: No specific mixinginstructions, just Pour every ingredient in one glass. The lemon goes with it.",
   "strInstructions": "No specific mixinginstructions, just Pour every ingredient in one glass. The lemon goes with it.",
   "strIngredients": "Beer\n , Root Beer\n , Lemonade\n , Coca-Cola\n , 7-Up\n , Creme de Cassis\n , Lemon",
   "incorrect": "Tom Collins, Iced Coffee Fillip, Amaretto Tea"
 },
 {
   "strDrink": "Zorbatini",
   "questions": "Vodka-1 1/4 oz Stoli , Ouzo-1/4 oz : Prepare like a Martini. Garnish with a green olive.",
   "strInstructions": "Prepare like a Martini. Garnish with a green olive.",
   "strIngredients": "Vodka-1 1/4 oz Stoli , Ouzo-1/4 oz",
   "incorrect": "Imperial Cocktail, Boxcar, Spritz"
 },
 {
   "strDrink": "Zorro",
   "questions": "Sambuca-2/3 oz , Bailey's Irish Cream-2/3 oz , White Creme de Menthe-2/3 oz : Add all and pour black coffee and add whipped cream on top.",
   "strInstructions": "Add all and pour black coffee and add whipped cream on top.",
   "strIngredients": "Sambuca-2/3 oz , Bailey's Irish Cream-2/3 oz , White Creme de Menthe-2/3 oz",
   "incorrect": "Sangria - The World's Best, Oreo Mudslide, Avalanche"
 }
]

 recipe_data.each do |item|
   drink = item[:strDrink]
   questions = item[:questions]
   instructions = item[:strInstructions]
   ingredients = item[:strIngredients]
   incorrect = item[:incorrect]
   Recipe.create(drink: drink, ingredients: ingredients, instructions: instructions, questions: questions, incorrect: incorrect)
 end


# Recipe.new(JSON.parse(recipe_data)).save
