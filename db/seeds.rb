require 'pry'

recipe_data = [
 { "strDrink": "57 Chevy with a White License Plate",
   "strInstructions": "1. Fill a rocks glass with ice 2.add white creme de cacao and vodka 3.stir"
 },
 {
   "strDrink": "1-900-FUK-MEUP",
   "strInstructions": "Shake ingredients in a mixing tin filled with ice cubes. Strain into a rocks glass."
 },
 {
   "strDrink": "110 in the shade",
   "strInstructions": "Drop shooter in glass. Fill with beer"
 },
 {
   "strDrink": "151 Florida Bushwacker",
   "strInstructions": "Combine all ingredients. Blend until smooth. Garnish with chocolate shavings if desired."
 },
 {"strDrink": "155 Belmont",
   "strInstructions": "Blend with ice. Serve in a wine glass. Garnish with carrot."
 }]

recipe_data.each do |item|
  drink = item[:strDrink]
  instructions = item[:strInstructions]
  Recipe.create(drink: drink, instructions: instructions)
end

# Recipe.new(JSON.parse(recipe_data)).save
