class CreateRecommendedDishes < ActiveRecord::Migration[5.1]

  def change
    create_table :recommended_dishes do |t|
      t.integer :user_id
      t.integer :recipe_id
    end
  end
end
