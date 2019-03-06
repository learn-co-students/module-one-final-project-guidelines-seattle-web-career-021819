class CreateUsersTable < ActiveRecord::Migration[4.2]   # version is based on Isa's computer

  def change
    create_table :users do |t|
      t.string :name
    end
  end

end
