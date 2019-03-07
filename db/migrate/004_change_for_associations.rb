class ChangeForAssociations < ActiveRecord::Migration[4.2]
  def change
    remove_column :books, :characters
    remove_column :characters, :books
    remove_column :houses, :members

    add_index :characters, :book_id
    add_index :characters, :house_id
  end
end
