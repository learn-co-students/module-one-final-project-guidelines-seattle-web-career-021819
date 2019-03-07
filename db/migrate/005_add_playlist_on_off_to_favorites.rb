class AddPlaylistOnOffToFavorites < ActiveRecord::Migration[4.2]   # version is based on Isa's computer

  def change
    add_column :favorites, :playlist_on_off, :string
  end

end
