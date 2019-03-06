class CreateFavoritesTable < ActiveRecord::Migration[4.2]   # version is based on Isa's computer

  def change
    create_table :favorites do |t|
      t.integer :user_id
      t.integer :show_id
    end
  end

end
