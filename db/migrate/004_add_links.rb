class AddLinks < ActiveRecord::Migration[4.2]
  def change
    add_column :books, :book_url, :string
    add_column :houses, :house_url, :string
  end
end
