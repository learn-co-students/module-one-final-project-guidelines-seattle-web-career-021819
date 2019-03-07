class AddTimestampsToUsers < ActiveRecord::Migration[4.2]   # version is based on Isa's computer

  def change
    change_table :users do |t|
      t.timestamps
    end
  end

end
