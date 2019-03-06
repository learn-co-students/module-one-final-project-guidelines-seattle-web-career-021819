class CreatePlaylistsTable < ActiveRecord::Migration[4.2]   # version is based on Isa's computer

  def change
    create_table :playlists do |t|
      t.integer :user_id
      t.string :episode_1
      t.string :episode_2
      t.string :episode_3
      t.string :episode_4
      t.string :episode_5
      t.string :episode_6
      t.string :episode_7
      t.string :episode_8
      t.string :episode_9
      t.string :episode_10
      t.timestamps
    end
  end

end
