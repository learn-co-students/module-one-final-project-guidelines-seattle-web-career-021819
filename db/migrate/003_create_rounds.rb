class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.boolean :correct?
      t.boolean :incorrect?
      t.integer :recipe_id
      t.integer :game_id
    end
  end
end
