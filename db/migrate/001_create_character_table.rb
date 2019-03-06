class CreateCharacterTable < ActiveRecord::Migration[4.2]

	def change
		create_table :characters do |t|
			t.string :name
			t.string :house
			t.string :seasons
			t.string :books
		end
	end
end