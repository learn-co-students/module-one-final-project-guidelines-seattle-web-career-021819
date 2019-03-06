class CreateHouseTable < ActiveRecord::Migration[4.2]

	def change
		create_table :houses do |t|
			t.string :name
			t.string :members
			t.string :coat_of_arms
			t.string :house_url
		end
	end
end