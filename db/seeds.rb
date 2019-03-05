User.delete_all
Favorite.delete_all
Recipe.delete_all

claire = User.create(name: "Claire")
r1 = Recipe.create(name: "Gimlet", url: "http://www.recipezaar.com/Gimlet-8882")
Recipe.create(name: "Toast", url: "http://www.recipezaar.com/jjddj98292")
Recipe.create(name: "Punch", url: "http://www.recipezaar.com/sjkds8388")
Favorite.create(user_id: claire.id, recipe_id: r1.id)
