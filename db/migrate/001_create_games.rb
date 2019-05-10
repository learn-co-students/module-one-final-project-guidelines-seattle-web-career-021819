class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :number_correct
      t.integer :user_id
    end
  end
end
