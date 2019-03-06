class CreateShowsTable < ActiveRecord::Migration[4.2]   # version is based on Isa's computer

  def change
    create_table :shows do |t|
      t.integer :api_id
      t.string :name
      t.string :description
      t.string :genre       # will only grab FIRST genre listed in "genres" array in show-details
      t.string :network
      t.string :start_date
    end
  end

end
