class AddRealNameToUsers < ActiveRecord::Migration[4.2]   # version is based on Isa's computer

  def change
    add_column :users, :real_name, :string
  end

end
