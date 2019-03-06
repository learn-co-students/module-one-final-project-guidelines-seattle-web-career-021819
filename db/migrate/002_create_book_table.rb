class CreateBookTable < ActiveRecord::Migration[4.2]

	def change
		create_table :books do |t|
			t.string :name
			t.string :characters
			t.string :book_url
		end
	end
end