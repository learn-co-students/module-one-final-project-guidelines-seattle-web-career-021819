class RestructurePlaylistTable < ActiveRecord::Migration[4.2]   # version is based on Isa's computer

  def change
    remove_column :playlists, :episode_1
    remove_column :playlists, :episode_2
    remove_column :playlists, :episode_3
    remove_column :playlists, :episode_4
    remove_column :playlists, :episode_5
    remove_column :playlists, :episode_6
    remove_column :playlists, :episode_7
    remove_column :playlists, :episode_8
    remove_column :playlists, :episode_9
    remove_column :playlists, :episode_10
    add_column :playlists, :playlist_num, :integer
    add_column :playlists, :ep_order, :integer
    add_column :playlists, :ep_desc, :string
  end

end
