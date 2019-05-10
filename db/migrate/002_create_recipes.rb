class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
     t.string	:drink
     t.string :questions
     t.string :instructions
     t.string :ingredients
     t.string :incorrect
    end
  end
end
