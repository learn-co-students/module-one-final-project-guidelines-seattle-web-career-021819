class CreateCharacterTable < ActiveRecord::Migration[4.2]

	def change
		create_table :characters do |t|
			t.string :name
			t.string :seasons
			t.string :books
			t.string :character_url
		end
	end
end