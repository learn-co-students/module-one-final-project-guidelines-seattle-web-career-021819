class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.integer :correct?
      t.integer :incorrect?
      t.integer :recipe_id
      t.integer :game_id
    end
  end
end
