class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :total_points
      t.string :win_lose_record
    end
  end
end
