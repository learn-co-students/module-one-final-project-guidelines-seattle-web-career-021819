class CreateHouseTable < ActiveRecord::Migration[4.2]

	def change
		create_table :houses do |t|
			t.string :name
			t.string :members
			t.string :coat_of_arms
		end
	end
end