class AddRuntimeToShows < ActiveRecord::Migration[4.2]   # version is based on Isa's computer

  def change
    add_column :shows, :runtime, :integer
  end

end
