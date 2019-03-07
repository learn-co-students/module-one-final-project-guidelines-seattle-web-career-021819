class AddTotalRuntimeToPlaylists < ActiveRecord::Migration[4.2]   # version is based on Isa's computer

  def change
    add_column :playlists, :total_runtime, :integer
  end

end
