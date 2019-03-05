class CreateGameSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :game_sessions do |t|
      t.integer :user_id
      t.integer :game_id
    end
  end
end
