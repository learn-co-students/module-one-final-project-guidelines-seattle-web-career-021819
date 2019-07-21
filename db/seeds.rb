User.destroy_all
Recipe.destroy_all
UserRecipe.destroy_all

a = User.create(name: "Brian")
b = Recipe.create(title: "Spaghetti")
UserRecipe.create(user_id: a.id, recipe_id: b.id)


c = User.create(name: "Chip")
d = Recipe.create(title: "Burger")
UserRecipe.create(user_id: c.id, recipe_id: d.id)
