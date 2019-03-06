require 'pry'

recipe_data = 

 recipe_data.each do |item|
   drink = item[:strDrink]
   ingredients = item[:strIngredients]
   instructions = item[:strInstructions]
   Recipe.create(drink: drink, ingredients: ingredients, instructions: instructions)
 end


# Recipe.new(JSON.parse(recipe_data)).save
