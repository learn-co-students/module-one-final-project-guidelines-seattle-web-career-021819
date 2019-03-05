class CreateFavorites < ActiveRecord::Migration[5.0]
  def change
    create_table :favorites
  end
end
