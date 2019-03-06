class Recipe < ActiveRecord::Base
has_many :recommended_dishes
has_many :recipe_ingredients
has_many :users, through: :recommended_dishes
has_many :ingredients, through: :recipe_ingredients

end
