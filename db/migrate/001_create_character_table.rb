class CreateCharacterTable < ActiveRecord::Migration[4.2]

	def change
		create_table :characters do |t|
			t.string :name
			t.string :seasons
			t.integer :book_id
			t.integer :house_id
		end
	end
end
