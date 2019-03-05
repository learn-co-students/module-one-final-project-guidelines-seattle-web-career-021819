class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :question
      t.string :correct
      t.string :incorrect1
      t.string :incorrect2
      t.string :incorrect3
      t.integer :score
    end
  end
end
