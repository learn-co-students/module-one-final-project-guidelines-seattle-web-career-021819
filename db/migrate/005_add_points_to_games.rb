class AddPointsToGames < ActiveRecord::Migration
  def change
    add_column :games, :game_points, :integer
  end
end
